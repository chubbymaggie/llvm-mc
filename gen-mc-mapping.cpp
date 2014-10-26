// Build method: (the redirection trick at the end is to support llvm 3.4)
// c++ $(llvm-config --cxxflags) -o gen-mc-mapping gen-mc-mapping.cpp $(llvm-config --libs) $(llvm-config --ldflags) $(llvm-config --system-libs 2> /dev/null)

#include <stdio.h>
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

const char *TripleMsg =
  "\n"
  "Example triples: arm, i686, amd64, mipsel\n"
  "Valid triples are defined in `llvm-src/lib/Support/Triple.cpp`.\n"
  "See the function `parseArch`.\n";

void genReg(const MCRegisterInfo *MRI) {
  printf("reg 0 = NoRegister\n");
  unsigned NumRegs = MRI->getNumRegs();
  for (unsigned I = 1; I < NumRegs; I++) {
    printf("reg %d = %s\n", I, MRI->getName(I));
  }
}

void genInstr(const MCInstrInfo *MII) {
  unsigned NumOpcodes = MII->getNumOpcodes();
  for (unsigned I = 0; I < NumOpcodes; I++) {
    printf("opcode %d = %s\n", I, MII->getName(I));
  }
}

int main(int argc, char **argv) {
  // parse arg
  if (argc - 1 < 1) {
    printf("Usage: %s triple\n", argv[0]);
    printf("%s", TripleMsg);
    return 10;
  }
  const char *Triple = argv[1];

  // initialize all targets
  LLVMInitializeAllTargetInfos();
  LLVMInitializeAllTargetMCs();

  // adapted from llvm-src/lib/MC/MCDisassembler/Disassembler.cpp
  std::string Error;
  const Target *TheTarget = TargetRegistry::lookupTarget(Triple, Error);
  if (!TheTarget) {
    printf("Error: %s\n", Error.c_str());
    printf("%s", TripleMsg);
    return 20;
  }

  // -mcreg
  if (true) {
    const MCRegisterInfo *MRI = TheTarget->createMCRegInfo(Triple);
    if (!MRI) return 30;
    genReg(MRI);
  }

  // -mcopcode
  if (true) {
    const MCInstrInfo *MII = TheTarget->createMCInstrInfo();
    if (!MII) return 40;
    genInstr(MII);
  }

  return 0;
}
