#!/usr/bin/env perl
use 5.012;
use warnings;
use autodie;

# Example input:
# ./Debug+Asserts/bin/llvm-tblgen -I include -I lib/Target/ARM lib/Target/ARM/ARM.td -gen-instr-info

# constants tested on llvm 3.4
my $enumBegin = 'extern const MCInstrDesc ';
my $enumEnd = '};';

# skip till $enumBegin
while (<>) {
  chomp;
  last if ($_ =~ /^$enumBegin/);
}

# start accumulating
my @accum = ();
my $final = -1;

# enum body
while (<>) {
  chomp;

  # reach the end
  last if ($_ =~ /^$enumEnd/);

  # parse line, example:
  # '  { 20,\t6,\t1,\t1,\t4,\t0|(1<<MCID::Predicable)|(1<<MCID::HasOptionalDef)|(1<<MCID::HasPostISelHook), 0x201ULL, ImplicitList1, ImplicitList1, OperandInfo11,0,0 },  // Inst #20 = ADCri'
  my ($row, $opcode_comment, $ident) = $_ =~ /{(.+)},  \/\/ Inst #(\d+) = (\S+)$/;

  # parse row
  # from include/llvm/MC/MCInstrDesc.h:
  # Opcode, NumOperands, NumDefs, SchedClass, Size, Flags, TSFlags, ImplicitUses, ImplicitDefs, OpInfo, DeprecatedFeatureMask, ComplexDeprecationInfo
  my @field = split(/,\s+/, $row);
  my $opcode_row = 0 + $field[0]; #convert to number
  my ($operandinfo) = $field[9] =~ /OperandInfo(\d+)/;
  $operandinfo = -1 unless (defined $operandinfo);

  # validate the two opcodes
  die "unmatched: $_\n" if ($opcode_row != $opcode_comment);

  # validate $final with $opcode_comment
  $final++;
  die "unmatched: $_\n" if ($final != $opcode_comment);

  # save
  push @accum, [$ident, $operandinfo];
}

emit_type();
say '';
emit_int_of_mcopcode();
say '';
emit_mcopcode_of_int();
say '';
emit_string_of_mcopcode();
say '';
emit_mcoperandinfo_of_mcopcode();
say '';
emit_ast_of_mcinst_skeleton();
exit 0;

sub emit_type {
  say sprintf('%-46s (* opcode -> operandinfo *)', 'type mcopcode_t = ');
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%-40s (* %d -> %d *)', $accum[$i]->[0], $i,
                $accum[$i]->[1]);
  }
}

sub emit_int_of_mcopcode {
  say 'let int_of_mcopcode = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%s -> %d', $accum[$i]->[0], $i);
  }
}

sub emit_mcopcode_of_int {
  say 'let mcopcode_of_int = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | %d -> Mc%s', $i, $accum[$i]->[0]);
  }
  say '  | i -> invalid_arg ("mcopcode_of_int: " ^ string_of_int i)';
}

sub emit_string_of_mcopcode {
  say 'let string_of_mcopcode = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%s -> "%s"', $accum[$i]->[0], $accum[$i]->[0]);
  }
}

sub emit_mcoperandinfo_of_mcopcode {
  say 'let mcoperandinfo_of_mcopcode = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%s -> %d', $accum[$i]->[0], $accum[$i]->[1]);
  }
}

sub emit_ast_of_mcinst_skeleton {
  say STDERR 'let ast_of_mcinst mcinst =';
  say STDERR '  match mcinst.mcopcode with';
  my @sorted = sort { $a->[1] <=> $b->[1] || $a->[0] cmp $b->[0] } @accum;
  for my $r (@sorted) {
    say STDERR sprintf('  | Mc%-40s -> (* %d *)', $r->[0], $r->[1]);
    say STDERR '    lift_failwith "Unimplemented"';
  }
}
