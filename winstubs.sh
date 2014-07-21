#!/bin/bash
if [ -z $OS ]
then
  export OS="linux"
fi
if [ $OS == "windows" ]
then
  export INSTDIR=`cygpath \`ocamlfind query llvm-mc\` | dos2unix`
  pushd $INSTDIR >/dev/null
  ar x *stubs.a
  ar q llvm-mc.a *.o
  popd >/dev/null
fi
