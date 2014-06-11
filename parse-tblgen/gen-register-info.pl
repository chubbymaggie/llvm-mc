#!/usr/bin/env perl
use Modern::Perl 2011;
use autodie;

# Example input:
# ./Debug+Asserts/bin/llvm-tblgen -I include -I lib/Target/ARM lib/Target/ARM/ARM.td -gen-register-info

# constants tested on llvm 3.4
my $enumBegin = '  NoRegister,';
my $enumEnd = '  NUM_TARGET_REGS';

# skip till $enumBegin
while (<>) {
  chomp;
  last if ($_ eq $enumBegin);
}

# start accumulating
my @accum = ('NoRegister');
my $final = 0;

# enum body
while (<>) {
  chomp;

  # reach the end
  last if ($_ =~ /^$enumEnd/);

  # parse line, example:
  # '  R0 = 66,'
  my ($ident, $input_value) = $_ =~ /(\S+)(?: = (\d+))?/;

  # validate $final with $input_value
  $final++;
  if (defined $input_value) {
    die "unmatched: $_\n" if ($final != $input_value);
  }

  # save
  push @accum, $ident;
}

emit_type();
say '';
emit_int_of_mcreg();
say '';
emit_mcreg_of_int();
say '';
emit_string_of_mcreg();
# say '';
# emit_Var_t();
exit 0;

sub emit_type {
  say 'type mcreg_t =';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%-40s (* %d *)', $accum[$i], $i);
  }
}

sub emit_int_of_mcreg {
  say 'let int_of_mcreg = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%s -> %d', $accum[$i], $i);
  }
}

sub emit_mcreg_of_int {
  say 'let mcreg_of_int = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | %d -> Mc%s', $i, $accum[$i]);
  }
  say '  | i -> invalid_arg ("mcreg_of_int: " ^ string_of_int i)';
}

sub emit_string_of_mcreg {
  say 'let string_of_mcreg = function';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  | Mc%s -> "%s"', $accum[$i], $accum[$i]);
  }
}

sub emit_Var_t {
  say 'module Var : sig type t end';
  say 'module R : sig';
  for (my $i = 0; $i <= $final; $i++) {
    say sprintf('  val %s : Var.t', lc($accum[$i]));
  }
  say 'end';
}
