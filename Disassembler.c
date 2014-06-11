// OCaml FFI
#define CAML_NAME_SPACE         // do not define unprefixed functions

#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/fail.h>
#include <caml/alloc.h>
#include <caml/custom.h>

#include <llvm-c/Target.h>
#include <llvm-c/Disassembler.h>
#include <llvm-c/MCInst.h>

#include <string.h>

/**
 * Coding convention
 *
 * Prefixes
 * - exported functions: mc_func
 *
 * LLVM
 * - functions: CamelCase
 * - variables: Capitalized
 *
 * OCaml:
 * - functions: lower_case_under_score
 * - variables: lower_case_under_score
 */

// initialize LLVM internal data structures
value mc_initialize_all_targets(value unit) {
  CAMLparam1(unit);

  LLVMInitializeAllTargetInfos();
  LLVMInitializeAllTargetMCs();
  LLVMInitializeAllDisassemblers();

  CAMLreturn(Val_unit);
}

// custom block for mcdisasmcontext_t
static char disasmcontext_id[] = "edu.cmu.ece.bap.mcdisasmcontext_t";
#define Disasmcontext_val(v) (*((LLVMDisasmContextRef **) Data_custom_val(v)))
void disasmcontext_finalize(value v) {
  LLVMDisasmContextRef DC = Disasmcontext_val(v);
  LLVMDisasmDispose(DC);
}
static struct custom_operations disasmcontext_ops = {
  disasmcontext_id,
  disasmcontext_finalize,
  custom_compare_default,
  custom_hash_default,
  custom_serialize_default,
  custom_deserialize_default,
  custom_compare_ext_default
};

// triple -> cpu -> mcdisasmcontext_t
value mc_make_disasm_context(value triple, value cpu) {
  CAMLparam2(triple, cpu);
  LLVMDisasmContextRef DC;
  DC = LLVMCreateDisasmCPU
    (String_val(triple),        // valid triple in lib/Support/Triple.cpp
     String_val(cpu),           // valid cpu in lib/Support/Host.cpp
     NULL, 0, NULL, NULL);
  if (DC == NULL) {
    caml_invalid_argument("LLVMCreateDisasmCPU: unsupported triple \
(see valid triples in LLVM/lib/Support/Triple.cpp).");
  }

  CAMLlocal1(dc);
  dc = caml_alloc_custom(&disasmcontext_ops,
                         sizeof(LLVMDisasmContextRef),
                         0,
                         1);
  Disasmcontext_val(dc) = DC;

  CAMLreturn(dc);
}

// make OCaml value of an MCInst
static value Val_mcinst(LLVMMCInstRef Inst, uint8_t *Istr, size_t Size, char* InsnStr) {
  CAMLparam0();

  // make McOperand.t list
  CAMLlocal4(head, cons, block, v);
  head = Val_int(0);
  for(int Idx = LLVMMCInstGetNumOperands(Inst) - 1; Idx >= 0; Idx--) {
    LLVMMCOperandRef OperandAbs = LLVMMCInstGetOperand(Inst, Idx);
    LLVMMCOperand Operand;
    LLVMMCOperandProject(OperandAbs, &Operand);
    int tag = 0;
    switch (Operand.Kind) {
    case LLVMOTReg:
      tag = 1;
      v   = Val_int(Operand.RegVal);
      break;
    case LLVMOTImm:
      tag = 2;
      v   = caml_copy_int64(Operand.ImmVal);
      break;
    case LLVMOTFPImm:
      tag = 3;
      v   = caml_copy_double(Operand.FPImmVal);
      break;
    case LLVMOTExpr:
      tag = 4;
      v   = Val_unit;
      break;
    case LLVMOTInst:
      tag = 5;
      v   = Val_mcinst(Operand.InstVal, NULL, Size, InsnStr);
      break;
    case LLVMOTInvalid:
      tag = 0;
      break;
    }

    block = caml_alloc_small(1, tag);
    Field(block, 0) = v;

    cons = caml_alloc_small(2, 0);
    Field(cons, 0) = block;
    Field(cons, 1) = head;

    head = cons;
  }

  // make raw_bytes : string; memcpy since there can be \0 in Istr
  CAMLlocal1(ostr);
  ostr = caml_alloc_string(Size);
  memcpy(String_val(ostr), Istr, Size); // safe: Istr == NULL => Size == 0

  CAMLlocal1(astr);
  size_t InsnSize = strlen(InsnStr);
  astr = caml_alloc_string(InsnSize);
  memcpy(String_val(astr), InsnStr, InsnSize);

  // make { mcOpcode_t; McOperand.t list; string; string option; }
  CAMLlocal1(rval);
  rval = caml_alloc_small(4, 0);
  Field(rval, 0) = Val_int((int)LLVMMCInstGetOpcode(Inst));
  Field(rval, 1) = head;
  Field(rval, 2) = ostr;
  Field(rval, 3) = astr;

  CAMLreturn(rval);
}
// mcdisasmcontext_t -> pc:int64 -> string -> int * McInst.t
value mc_get_mcinst(value dc, value pc, value istr) {
  CAMLparam3(dc, pc, istr);

  LLVMDisasmContextRef DC = Disasmcontext_val(dc);
  uint64_t PC = Int64_val(pc);
  uint8_t *Bytes = (uint8_t *)String_val(istr);
  size_t   BytesSize = caml_string_length(istr);
  LLVMMCInstRef Inst;
  char InsnStr[64];
  size_t Size = LLVMDisasmInstruction(DC, Bytes, BytesSize, PC, &Inst,
                                      InsnStr, sizeof(InsnStr));
  if (Size) {
    CAMLlocal1(inst);
    inst = Val_mcinst(Inst, Bytes, Size, InsnStr);
    LLVMMCInstRefDispose(Inst);
    CAMLlocal1(rval);
    rval = caml_alloc_small(2, 0);
    Field(rval, 0) = Val_int((int)Size);
    Field(rval, 1) = inst;
    CAMLreturn(rval);
  } else {
    caml_invalid_argument("Could not disassemble");
  }
}
