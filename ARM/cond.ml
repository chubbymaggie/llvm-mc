type mccond_t =
  | McCondEQ                    (* 0 *)
  | McCondNE                    (* 1 *)
  | McCondCS                    (* 2 *)
  | McCondCC                    (* 3 *)
  | McCondMI                    (* 4 *)
  | McCondPL                    (* 5 *)
  | McCondVS                    (* 6 *)
  | McCondVC                    (* 7 *)
  | McCondHI                    (* 8 *)
  | McCondLS                    (* 9 *)
  | McCondGE                    (* 10 *)
  | McCondLT                    (* 11 *)
  | McCondGT                    (* 12 *)
  | McCondLE                    (* 13 *)
  | McCondAL                    (* 14 *)
let int_of_mccond = function
  | McCondEQ -> 0
  | McCondNE -> 1
  | McCondCS -> 2
  | McCondCC -> 3
  | McCondMI -> 4
  | McCondPL -> 5
  | McCondVS -> 6
  | McCondVC -> 7
  | McCondHI -> 8
  | McCondLS -> 9
  | McCondGE -> 10
  | McCondLT -> 11
  | McCondGT -> 12
  | McCondLE -> 13
  | McCondAL -> 14
let int64_of_mccond mccond = Int64.of_int (int_of_mccond mccond)
let mccond_of_int64 i64 = match Int64.to_int i64 with
  | 0 -> McCondEQ
  | 1 -> McCondNE
  | 2 -> McCondCS
  | 3 -> McCondCC
  | 4 -> McCondMI
  | 5 -> McCondPL
  | 6 -> McCondVS
  | 7 -> McCondVC
  | 8 -> McCondHI
  | 9 -> McCondLS
  | 10 -> McCondGE
  | 11 -> McCondLT
  | 12 -> McCondGT
  | 13 -> McCondLE
  | 14 -> McCondAL
  | i -> invalid_arg ("mccond_of_int: " ^ string_of_int i)
let string_of_mccond = function
  | McCondEQ -> "EQ"
  | McCondNE -> "NE"
  | McCondCS -> "CS"
  | McCondCC -> "CC"
  | McCondMI -> "MI"
  | McCondPL -> "PL"
  | McCondVS -> "VS"
  | McCondVC -> "VC"
  | McCondHI -> "HI"
  | McCondLS -> "LS"
  | McCondGE -> "GE"
  | McCondLT -> "LT"
  | McCondGT -> "GT"
  | McCondLE -> "LE"
  | McCondAL -> "AL"
