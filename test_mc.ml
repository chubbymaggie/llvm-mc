(* create and open target-specific modules *)
module McModules = Mc.Factory.Make(Mc.ARM.Enum)
open McModules                  (* expose submodules *)
open Mc.ARM.Enum                (* McMOVi, ... *)

let string_of_octetstring x =
  let octs = Str.split (Str.regexp "[ ,]") x in
  let ints = List.map int_of_string octs in
  let chrs = List.map Char.chr ints in
  let implode l =               (* FAQ *)
    let res = String.create (List.length l) in
    let rec imp i = function
      | [] -> res
      | c :: l -> res.[i] <- c; imp (i + 1) l in
    imp 0 l
  in
  implode chrs

(* XXX: Using mcreg_of_int here is incorrect, enum
        members should be used instead *)
(* construct mock values *)
let mockvals =
  let open McInst in            (* mcopcode, mcoperands *)
  let open McOperand in         (* McReg, McImm, ... *)
  [
    (* movs r0, #42 @ encoding: [0x2a,0x00,0xb0,0xe3] *)
    string_of_octetstring "0x2a,0x00,0xb0,0xe3",
    {
      mcopcode = McMOVi (* mcopcode_of_int 265 *);
      mcoperands = [
        McReg (mcreg_of_int 66);
        McImm (Int64.of_int 42);
        McImm (Int64.of_int 14);
        McReg (mcreg_of_int 0);
        McReg (mcreg_of_int 3);
      ];
      raw_bytes = string_of_octetstring "0x2a,0x00,0xb0,0xe3";
      assembly = "movs r0, #42";
    };

    (* mov r0, pc @ encoding: [0x0f,0x00,0xa0,0xe1]*)
    string_of_octetstring "0x0f,0x00,0xa0,0xe1",
    {
      mcopcode = McMOVr;
      mcoperands = [
        McReg (mcreg_of_int 66);
        McReg (mcreg_of_int 11);
        McImm (Int64.of_int 14);
        McReg (mcreg_of_int 0);
        McReg (mcreg_of_int 0);
      ];
      raw_bytes = string_of_octetstring "0x0f,0x00,0xa0,0xe1";
      assembly = "mov r0, pc";
    };

    (* eors r0, r1, #42 @ encoding: [0x2a,0x00,0x31,0xe2] *)
    string_of_octetstring "0x2a,0x00,0x31,0xe2",
    {
      mcopcode = McEORri;
      mcoperands = [
        McReg (mcreg_of_int 66);
        McReg (mcreg_of_int 67);
        McImm (Int64.of_int 42);
        McImm (Int64.of_int 14);
        McReg (mcreg_of_int 0);
        McReg (mcreg_of_int 3);
      ];
      raw_bytes = string_of_octetstring "0x2a,0x00,0x31,0xe2";
      assembly = "eors r0, r1, #42";
    };

    (* adc r0, r1, r2 @ encoding: [0x02,0x00,0xa1,0xe0] *)
    string_of_octetstring "0x02,0x00,0xa1,0xe0",
    {
      mcopcode = McADCrr;
      mcoperands = [
        McReg (mcreg_of_int 66);
        McReg (mcreg_of_int 67);
        McReg (mcreg_of_int 68);
        McImm (Int64.of_int 14);
        McReg (mcreg_of_int 0);
        McReg (mcreg_of_int 0);
      ];
      raw_bytes = string_of_octetstring "0x02,0x00,0xa1,0xe0";
      assembly = "adc r0, r1, r2";
    };

    (* andeq r9, r2, r0, lsr #25 @ encoding: [0xa0,0x9c,0x02,0x00] *)
    string_of_octetstring "0xa0,0x9c,0x02,0x00",
    {
      mcopcode = McANDrsi;
      mcoperands = [
        McReg (mcreg_of_int 75);
        McReg (mcreg_of_int 68);
        McReg (mcreg_of_int 66);
        McImm (Int64.of_int 203);
        McImm (Int64.of_int 0);
        McReg (mcreg_of_int 3);
        McReg (mcreg_of_int 0);
      ];
      raw_bytes = string_of_octetstring "0xa0,0x9c,0x02,0x00";
      assembly = "andeq r9, r2, r0, lsr #25";
    };

    (* subne pc, lr, sp, asr r5 @ encoding: [0x5d,0xf5,0x4e,0x10] *)
    string_of_octetstring "0x5d,0xf5,0x4e,0x10",
    {
      mcopcode = McSUBrsr;
      mcoperands = [
        McReg (mcreg_of_int 11);
        McReg (mcreg_of_int 10);
        McReg (mcreg_of_int 12);
        McReg (mcreg_of_int 71);
        McImm (Int64.of_int 1);
        McImm (Int64.of_int 1);
        McReg (mcreg_of_int 3);
        McReg (mcreg_of_int 0);
      ];
      raw_bytes = string_of_octetstring "0x5d,0xf5,0x4e,0x10";
      assembly = "subne pc, lr, sp, asr r5";
    };

    (* movweq r0, #8448 @ encoding : [0x00,0x01,0x02,0x03] *)
    (* non-existent unless -mattr=+v7 *)
    string_of_octetstring "0x00,0x01,0x02,0x03",
    {
      mcopcode = McMOVi16;
      mcoperands = [
        McReg (mcreg_of_int 66);
        McImm (Int64.of_int 8448);
        McImm (Int64.of_int 0);
        McReg (mcreg_of_int 3);
      ];
      raw_bytes = string_of_octetstring "0x00,0x01,0x02,0x03";
      assembly = "movweq r0, #8448";
    };

    (* store can specify a variable number of registers *)
    string_of_octetstring "0xf0,0x0f,0x81,0xe8",
    {
      mcopcode = McSTMIA;
      mcoperands = [
        McReg (mcreg_of_int 67);
        McImm (Int64.of_int 14);
        McReg (mcreg_of_int 0);
        McReg (mcreg_of_int 70);
        McReg (mcreg_of_int 71);
        McReg (mcreg_of_int 72);
        McReg (mcreg_of_int 73);
        McReg (mcreg_of_int 74);
        McReg (mcreg_of_int 75);
        McReg (mcreg_of_int 76);
        McReg (mcreg_of_int 77);
      ];
      raw_bytes = string_of_octetstring "0xf0,0x0f,0x81,0xe8";
      assembly = "stm r1, {r4, r5, r6, r7, r8, r9, r10, r11}";
    }
  ]

let (|>) x f = f x

(* demos on what to do with mock values *)
let _ =
  if false then begin
    print_endline "Using McUtil.string_of_mcinst:";
    let helper v = print_endline (McUtil.string_of_mcinst v) in
    mockvals
    |> List.map snd
    |> List.map helper
    |> ignore;
    print_newline ()
  end else ()

let _ =
  if true then begin
    let helper (s, mock_mcinst) =
      let mock_string = McUtil.string_of_mcinst mock_mcinst in
      let size, mcinst = McDisassembler.get_mcinst s in
      let real_string  = McUtil.string_of_mcinst mcinst in
      if 0 != compare real_string mock_string then
        (print_endline real_string;
         print_endline "vvv EXPECTED vvv";
         print_endline mock_string;
         failwith "^^^ COMPARE FAILED ^^^")
      else ()
    in
    mockvals
    |> List.map helper
    |> ignore;
  end else ()
