(* McEnum signature for Mc.Factory.Make *)
module type McEnum_intf = sig
  val mcarchname : string
  val mccpu : string
  (* From include McOpcode *)
  type mcopcode_t
  val int_of_mcopcode : mcopcode_t -> int
  val string_of_mcopcode : mcopcode_t -> string
  val mcoperandinfo_of_mcopcode : mcopcode_t -> int
  (* From include McReg *)
  type mcreg_t
  val int_of_mcreg : mcreg_t -> int
  val string_of_mcreg : mcreg_t -> string
end

(* factory to make target-specific modules *)
module Make ( McEnum : McEnum_intf ) = struct

  (* McInst *)
  module rec McInst : sig
    type t = {                           (* type in include/llvm/MC/MCInst.h: *)
      mcopcode : McEnum.mcopcode_t;      (* C: unsigned *)
      mcoperands : McOperand.t list;     (* C: SmallVector<McOperand, 8> *)
      raw_bytes : string;                (* decoding can need this *)
      assembly : string;                 (* assembly representation *)
    }
  end = McInst

  (* McOperand *)
  and McOperand : sig
    type t =                         (* type in include/llvm/MC/MCInst.h: *)
      | McInv of unit
      | McReg of McEnum.mcreg_t      (* C: unsigned *)
      | McImm of int64               (* C: int64_t  *)
      | McFmm of float               (* C: double   *)
      | McExp of unit                (* C: McExpr * *)
      | McIns of McInst.t            (* C: McInst * *)
  end = McOperand

  (* McUtil *)
  module McUtil = struct

    (** essentially sprintf "%S" but each char is in \xNN uniformally *)
    let hexstring_of_string str =
      let explode s =           (* FAQ *)
        let rec exp i l =
          if i < 0 then l else exp (i - 1) (s.[i] :: l) in
        exp (String.length s - 1) []
      in
      let chars = explode str in
      let ints = List.map Char.code chars in
      let strs = List.map (Printf.sprintf "\\x%02x") ints in
      String.concat "" strs

    let rec string_of_mcinst mcinst =
      let open McInst in
      Printf.sprintf "%s %d->%d [%s] @ \"%s\"%s"
        (McEnum.string_of_mcopcode mcinst.mcopcode)
        (McEnum.int_of_mcopcode mcinst.mcopcode)
        (McEnum.mcoperandinfo_of_mcopcode mcinst.mcopcode)
        (String.concat "; " (List.map string_of_mcoperand mcinst.mcoperands))
        (hexstring_of_string mcinst.raw_bytes)
        (let s = mcinst.assembly
                 |> String.trim
                 |> String.map (function '\t' -> ' ' | c -> c)
         in
         Printf.sprintf ":\"%s\"" s)

    and string_of_mcoperand mcoperand =
      let open McOperand in
      match mcoperand with
      | McInv _ -> "McInvalid"
      | McReg r -> Printf.sprintf "McReg: %d(%s)"
                     (McEnum.int_of_mcreg r)
                     (McEnum.string_of_mcreg r)
      | McImm i -> "McImm: " ^ Int64.to_string i
      | McFmm f -> "McFmm: " ^ string_of_float f
      | McExp _ -> "McExp: UNIMPLEMENTED"
      | McIns m -> "McIns: " ^ string_of_mcinst m

  end

  (* McDisassembler *)
  module McDisassembler : sig
    val get_mcinst : ?pc:int64 -> string -> int * McInst.t
  end = struct
    module McBinding = struct            (* LLVM correspondence: *)
      type context_t                     (* LLVMDisasmContextRef *)
      external mc_initialize_all_targets (* LLVMInitializeAll{*} *)
        : unit -> unit
        = "mc_initialize_all_targets"
      external mc_make_disasm_context    (* new DisasmContext *)
        : triple:string -> cpu:string -> context_t
        = "mc_make_disasm_context"
      external mc_get_mcinst             (* new feature *)
        : context_t -> int64 -> string -> int * McInst.t
        = "mc_get_mcinst"
    end
    (* always initialize *)
    let _ = McBinding.mc_initialize_all_targets ()
    (* create context for target *)
    let triple = McEnum.mcarchname (* archname alone is a valid "triple" *)
    let cpu = McEnum.mccpu         (* `llvm-mc -mcpu=help` to show list *)
    let dc = McBinding.mc_make_disasm_context ~triple ~cpu
    (* expose interface *)
    let get_mcinst ?(pc = Int64.of_int 0) s =
      McBinding.mc_get_mcinst dc pc s
  end

end
