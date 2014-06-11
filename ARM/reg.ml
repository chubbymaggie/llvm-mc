type mcreg_t =
  | McNoRegister                               (* 0 *)
  | McAPSR                                     (* 1 *)
  | McAPSR_NZCV                                (* 2 *)
  | McCPSR                                     (* 3 *)
  | McFPEXC                                    (* 4 *)
  | McFPINST                                   (* 5 *)
  | McFPSCR                                    (* 6 *)
  | McFPSCR_NZCV                               (* 7 *)
  | McFPSID                                    (* 8 *)
  | McITSTATE                                  (* 9 *)
  | McLR                                       (* 10 *)
  | McPC                                       (* 11 *)
  | McSP                                       (* 12 *)
  | McSPSR                                     (* 13 *)
  | McD0                                       (* 14 *)
  | McD1                                       (* 15 *)
  | McD2                                       (* 16 *)
  | McD3                                       (* 17 *)
  | McD4                                       (* 18 *)
  | McD5                                       (* 19 *)
  | McD6                                       (* 20 *)
  | McD7                                       (* 21 *)
  | McD8                                       (* 22 *)
  | McD9                                       (* 23 *)
  | McD10                                      (* 24 *)
  | McD11                                      (* 25 *)
  | McD12                                      (* 26 *)
  | McD13                                      (* 27 *)
  | McD14                                      (* 28 *)
  | McD15                                      (* 29 *)
  | McD16                                      (* 30 *)
  | McD17                                      (* 31 *)
  | McD18                                      (* 32 *)
  | McD19                                      (* 33 *)
  | McD20                                      (* 34 *)
  | McD21                                      (* 35 *)
  | McD22                                      (* 36 *)
  | McD23                                      (* 37 *)
  | McD24                                      (* 38 *)
  | McD25                                      (* 39 *)
  | McD26                                      (* 40 *)
  | McD27                                      (* 41 *)
  | McD28                                      (* 42 *)
  | McD29                                      (* 43 *)
  | McD30                                      (* 44 *)
  | McD31                                      (* 45 *)
  | McFPINST2                                  (* 46 *)
  | McMVFR0                                    (* 47 *)
  | McMVFR1                                    (* 48 *)
  | McMVFR2                                    (* 49 *)
  | McQ0                                       (* 50 *)
  | McQ1                                       (* 51 *)
  | McQ2                                       (* 52 *)
  | McQ3                                       (* 53 *)
  | McQ4                                       (* 54 *)
  | McQ5                                       (* 55 *)
  | McQ6                                       (* 56 *)
  | McQ7                                       (* 57 *)
  | McQ8                                       (* 58 *)
  | McQ9                                       (* 59 *)
  | McQ10                                      (* 60 *)
  | McQ11                                      (* 61 *)
  | McQ12                                      (* 62 *)
  | McQ13                                      (* 63 *)
  | McQ14                                      (* 64 *)
  | McQ15                                      (* 65 *)
  | McR0                                       (* 66 *)
  | McR1                                       (* 67 *)
  | McR2                                       (* 68 *)
  | McR3                                       (* 69 *)
  | McR4                                       (* 70 *)
  | McR5                                       (* 71 *)
  | McR6                                       (* 72 *)
  | McR7                                       (* 73 *)
  | McR8                                       (* 74 *)
  | McR9                                       (* 75 *)
  | McR10                                      (* 76 *)
  | McR11                                      (* 77 *)
  | McR12                                      (* 78 *)
  | McS0                                       (* 79 *)
  | McS1                                       (* 80 *)
  | McS2                                       (* 81 *)
  | McS3                                       (* 82 *)
  | McS4                                       (* 83 *)
  | McS5                                       (* 84 *)
  | McS6                                       (* 85 *)
  | McS7                                       (* 86 *)
  | McS8                                       (* 87 *)
  | McS9                                       (* 88 *)
  | McS10                                      (* 89 *)
  | McS11                                      (* 90 *)
  | McS12                                      (* 91 *)
  | McS13                                      (* 92 *)
  | McS14                                      (* 93 *)
  | McS15                                      (* 94 *)
  | McS16                                      (* 95 *)
  | McS17                                      (* 96 *)
  | McS18                                      (* 97 *)
  | McS19                                      (* 98 *)
  | McS20                                      (* 99 *)
  | McS21                                      (* 100 *)
  | McS22                                      (* 101 *)
  | McS23                                      (* 102 *)
  | McS24                                      (* 103 *)
  | McS25                                      (* 104 *)
  | McS26                                      (* 105 *)
  | McS27                                      (* 106 *)
  | McS28                                      (* 107 *)
  | McS29                                      (* 108 *)
  | McS30                                      (* 109 *)
  | McS31                                      (* 110 *)
  | McD0_D2                                    (* 111 *)
  | McD1_D3                                    (* 112 *)
  | McD2_D4                                    (* 113 *)
  | McD3_D5                                    (* 114 *)
  | McD4_D6                                    (* 115 *)
  | McD5_D7                                    (* 116 *)
  | McD6_D8                                    (* 117 *)
  | McD7_D9                                    (* 118 *)
  | McD8_D10                                   (* 119 *)
  | McD9_D11                                   (* 120 *)
  | McD10_D12                                  (* 121 *)
  | McD11_D13                                  (* 122 *)
  | McD12_D14                                  (* 123 *)
  | McD13_D15                                  (* 124 *)
  | McD14_D16                                  (* 125 *)
  | McD15_D17                                  (* 126 *)
  | McD16_D18                                  (* 127 *)
  | McD17_D19                                  (* 128 *)
  | McD18_D20                                  (* 129 *)
  | McD19_D21                                  (* 130 *)
  | McD20_D22                                  (* 131 *)
  | McD21_D23                                  (* 132 *)
  | McD22_D24                                  (* 133 *)
  | McD23_D25                                  (* 134 *)
  | McD24_D26                                  (* 135 *)
  | McD25_D27                                  (* 136 *)
  | McD26_D28                                  (* 137 *)
  | McD27_D29                                  (* 138 *)
  | McD28_D30                                  (* 139 *)
  | McD29_D31                                  (* 140 *)
  | McQ0_Q1                                    (* 141 *)
  | McQ1_Q2                                    (* 142 *)
  | McQ2_Q3                                    (* 143 *)
  | McQ3_Q4                                    (* 144 *)
  | McQ4_Q5                                    (* 145 *)
  | McQ5_Q6                                    (* 146 *)
  | McQ6_Q7                                    (* 147 *)
  | McQ7_Q8                                    (* 148 *)
  | McQ8_Q9                                    (* 149 *)
  | McQ9_Q10                                   (* 150 *)
  | McQ10_Q11                                  (* 151 *)
  | McQ11_Q12                                  (* 152 *)
  | McQ12_Q13                                  (* 153 *)
  | McQ13_Q14                                  (* 154 *)
  | McQ14_Q15                                  (* 155 *)
  | McQ0_Q1_Q2_Q3                              (* 156 *)
  | McQ1_Q2_Q3_Q4                              (* 157 *)
  | McQ2_Q3_Q4_Q5                              (* 158 *)
  | McQ3_Q4_Q5_Q6                              (* 159 *)
  | McQ4_Q5_Q6_Q7                              (* 160 *)
  | McQ5_Q6_Q7_Q8                              (* 161 *)
  | McQ6_Q7_Q8_Q9                              (* 162 *)
  | McQ7_Q8_Q9_Q10                             (* 163 *)
  | McQ8_Q9_Q10_Q11                            (* 164 *)
  | McQ9_Q10_Q11_Q12                           (* 165 *)
  | McQ10_Q11_Q12_Q13                          (* 166 *)
  | McQ11_Q12_Q13_Q14                          (* 167 *)
  | McQ12_Q13_Q14_Q15                          (* 168 *)
  | McR12_SP                                   (* 169 *)
  | McR0_R1                                    (* 170 *)
  | McR2_R3                                    (* 171 *)
  | McR4_R5                                    (* 172 *)
  | McR6_R7                                    (* 173 *)
  | McR8_R9                                    (* 174 *)
  | McR10_R11                                  (* 175 *)
  | McD0_D1_D2                                 (* 176 *)
  | McD1_D2_D3                                 (* 177 *)
  | McD2_D3_D4                                 (* 178 *)
  | McD3_D4_D5                                 (* 179 *)
  | McD4_D5_D6                                 (* 180 *)
  | McD5_D6_D7                                 (* 181 *)
  | McD6_D7_D8                                 (* 182 *)
  | McD7_D8_D9                                 (* 183 *)
  | McD8_D9_D10                                (* 184 *)
  | McD9_D10_D11                               (* 185 *)
  | McD10_D11_D12                              (* 186 *)
  | McD11_D12_D13                              (* 187 *)
  | McD12_D13_D14                              (* 188 *)
  | McD13_D14_D15                              (* 189 *)
  | McD14_D15_D16                              (* 190 *)
  | McD15_D16_D17                              (* 191 *)
  | McD16_D17_D18                              (* 192 *)
  | McD17_D18_D19                              (* 193 *)
  | McD18_D19_D20                              (* 194 *)
  | McD19_D20_D21                              (* 195 *)
  | McD20_D21_D22                              (* 196 *)
  | McD21_D22_D23                              (* 197 *)
  | McD22_D23_D24                              (* 198 *)
  | McD23_D24_D25                              (* 199 *)
  | McD24_D25_D26                              (* 200 *)
  | McD25_D26_D27                              (* 201 *)
  | McD26_D27_D28                              (* 202 *)
  | McD27_D28_D29                              (* 203 *)
  | McD28_D29_D30                              (* 204 *)
  | McD29_D30_D31                              (* 205 *)
  | McD0_D2_D4                                 (* 206 *)
  | McD1_D3_D5                                 (* 207 *)
  | McD2_D4_D6                                 (* 208 *)
  | McD3_D5_D7                                 (* 209 *)
  | McD4_D6_D8                                 (* 210 *)
  | McD5_D7_D9                                 (* 211 *)
  | McD6_D8_D10                                (* 212 *)
  | McD7_D9_D11                                (* 213 *)
  | McD8_D10_D12                               (* 214 *)
  | McD9_D11_D13                               (* 215 *)
  | McD10_D12_D14                              (* 216 *)
  | McD11_D13_D15                              (* 217 *)
  | McD12_D14_D16                              (* 218 *)
  | McD13_D15_D17                              (* 219 *)
  | McD14_D16_D18                              (* 220 *)
  | McD15_D17_D19                              (* 221 *)
  | McD16_D18_D20                              (* 222 *)
  | McD17_D19_D21                              (* 223 *)
  | McD18_D20_D22                              (* 224 *)
  | McD19_D21_D23                              (* 225 *)
  | McD20_D22_D24                              (* 226 *)
  | McD21_D23_D25                              (* 227 *)
  | McD22_D24_D26                              (* 228 *)
  | McD23_D25_D27                              (* 229 *)
  | McD24_D26_D28                              (* 230 *)
  | McD25_D27_D29                              (* 231 *)
  | McD26_D28_D30                              (* 232 *)
  | McD27_D29_D31                              (* 233 *)
  | McD0_D2_D4_D6                              (* 234 *)
  | McD1_D3_D5_D7                              (* 235 *)
  | McD2_D4_D6_D8                              (* 236 *)
  | McD3_D5_D7_D9                              (* 237 *)
  | McD4_D6_D8_D10                             (* 238 *)
  | McD5_D7_D9_D11                             (* 239 *)
  | McD6_D8_D10_D12                            (* 240 *)
  | McD7_D9_D11_D13                            (* 241 *)
  | McD8_D10_D12_D14                           (* 242 *)
  | McD9_D11_D13_D15                           (* 243 *)
  | McD10_D12_D14_D16                          (* 244 *)
  | McD11_D13_D15_D17                          (* 245 *)
  | McD12_D14_D16_D18                          (* 246 *)
  | McD13_D15_D17_D19                          (* 247 *)
  | McD14_D16_D18_D20                          (* 248 *)
  | McD15_D17_D19_D21                          (* 249 *)
  | McD16_D18_D20_D22                          (* 250 *)
  | McD17_D19_D21_D23                          (* 251 *)
  | McD18_D20_D22_D24                          (* 252 *)
  | McD19_D21_D23_D25                          (* 253 *)
  | McD20_D22_D24_D26                          (* 254 *)
  | McD21_D23_D25_D27                          (* 255 *)
  | McD22_D24_D26_D28                          (* 256 *)
  | McD23_D25_D27_D29                          (* 257 *)
  | McD24_D26_D28_D30                          (* 258 *)
  | McD25_D27_D29_D31                          (* 259 *)
  | McD1_D2                                    (* 260 *)
  | McD3_D4                                    (* 261 *)
  | McD5_D6                                    (* 262 *)
  | McD7_D8                                    (* 263 *)
  | McD9_D10                                   (* 264 *)
  | McD11_D12                                  (* 265 *)
  | McD13_D14                                  (* 266 *)
  | McD15_D16                                  (* 267 *)
  | McD17_D18                                  (* 268 *)
  | McD19_D20                                  (* 269 *)
  | McD21_D22                                  (* 270 *)
  | McD23_D24                                  (* 271 *)
  | McD25_D26                                  (* 272 *)
  | McD27_D28                                  (* 273 *)
  | McD29_D30                                  (* 274 *)
  | McD1_D2_D3_D4                              (* 275 *)
  | McD3_D4_D5_D6                              (* 276 *)
  | McD5_D6_D7_D8                              (* 277 *)
  | McD7_D8_D9_D10                             (* 278 *)
  | McD9_D10_D11_D12                           (* 279 *)
  | McD11_D12_D13_D14                          (* 280 *)
  | McD13_D14_D15_D16                          (* 281 *)
  | McD15_D16_D17_D18                          (* 282 *)
  | McD17_D18_D19_D20                          (* 283 *)
  | McD19_D20_D21_D22                          (* 284 *)
  | McD21_D22_D23_D24                          (* 285 *)
  | McD23_D24_D25_D26                          (* 286 *)
  | McD25_D26_D27_D28                          (* 287 *)
  | McD27_D28_D29_D30                          (* 288 *)

let int_of_mcreg = function
  | McNoRegister -> 0
  | McAPSR -> 1
  | McAPSR_NZCV -> 2
  | McCPSR -> 3
  | McFPEXC -> 4
  | McFPINST -> 5
  | McFPSCR -> 6
  | McFPSCR_NZCV -> 7
  | McFPSID -> 8
  | McITSTATE -> 9
  | McLR -> 10
  | McPC -> 11
  | McSP -> 12
  | McSPSR -> 13
  | McD0 -> 14
  | McD1 -> 15
  | McD2 -> 16
  | McD3 -> 17
  | McD4 -> 18
  | McD5 -> 19
  | McD6 -> 20
  | McD7 -> 21
  | McD8 -> 22
  | McD9 -> 23
  | McD10 -> 24
  | McD11 -> 25
  | McD12 -> 26
  | McD13 -> 27
  | McD14 -> 28
  | McD15 -> 29
  | McD16 -> 30
  | McD17 -> 31
  | McD18 -> 32
  | McD19 -> 33
  | McD20 -> 34
  | McD21 -> 35
  | McD22 -> 36
  | McD23 -> 37
  | McD24 -> 38
  | McD25 -> 39
  | McD26 -> 40
  | McD27 -> 41
  | McD28 -> 42
  | McD29 -> 43
  | McD30 -> 44
  | McD31 -> 45
  | McFPINST2 -> 46
  | McMVFR0 -> 47
  | McMVFR1 -> 48
  | McMVFR2 -> 49
  | McQ0 -> 50
  | McQ1 -> 51
  | McQ2 -> 52
  | McQ3 -> 53
  | McQ4 -> 54
  | McQ5 -> 55
  | McQ6 -> 56
  | McQ7 -> 57
  | McQ8 -> 58
  | McQ9 -> 59
  | McQ10 -> 60
  | McQ11 -> 61
  | McQ12 -> 62
  | McQ13 -> 63
  | McQ14 -> 64
  | McQ15 -> 65
  | McR0 -> 66
  | McR1 -> 67
  | McR2 -> 68
  | McR3 -> 69
  | McR4 -> 70
  | McR5 -> 71
  | McR6 -> 72
  | McR7 -> 73
  | McR8 -> 74
  | McR9 -> 75
  | McR10 -> 76
  | McR11 -> 77
  | McR12 -> 78
  | McS0 -> 79
  | McS1 -> 80
  | McS2 -> 81
  | McS3 -> 82
  | McS4 -> 83
  | McS5 -> 84
  | McS6 -> 85
  | McS7 -> 86
  | McS8 -> 87
  | McS9 -> 88
  | McS10 -> 89
  | McS11 -> 90
  | McS12 -> 91
  | McS13 -> 92
  | McS14 -> 93
  | McS15 -> 94
  | McS16 -> 95
  | McS17 -> 96
  | McS18 -> 97
  | McS19 -> 98
  | McS20 -> 99
  | McS21 -> 100
  | McS22 -> 101
  | McS23 -> 102
  | McS24 -> 103
  | McS25 -> 104
  | McS26 -> 105
  | McS27 -> 106
  | McS28 -> 107
  | McS29 -> 108
  | McS30 -> 109
  | McS31 -> 110
  | McD0_D2 -> 111
  | McD1_D3 -> 112
  | McD2_D4 -> 113
  | McD3_D5 -> 114
  | McD4_D6 -> 115
  | McD5_D7 -> 116
  | McD6_D8 -> 117
  | McD7_D9 -> 118
  | McD8_D10 -> 119
  | McD9_D11 -> 120
  | McD10_D12 -> 121
  | McD11_D13 -> 122
  | McD12_D14 -> 123
  | McD13_D15 -> 124
  | McD14_D16 -> 125
  | McD15_D17 -> 126
  | McD16_D18 -> 127
  | McD17_D19 -> 128
  | McD18_D20 -> 129
  | McD19_D21 -> 130
  | McD20_D22 -> 131
  | McD21_D23 -> 132
  | McD22_D24 -> 133
  | McD23_D25 -> 134
  | McD24_D26 -> 135
  | McD25_D27 -> 136
  | McD26_D28 -> 137
  | McD27_D29 -> 138
  | McD28_D30 -> 139
  | McD29_D31 -> 140
  | McQ0_Q1 -> 141
  | McQ1_Q2 -> 142
  | McQ2_Q3 -> 143
  | McQ3_Q4 -> 144
  | McQ4_Q5 -> 145
  | McQ5_Q6 -> 146
  | McQ6_Q7 -> 147
  | McQ7_Q8 -> 148
  | McQ8_Q9 -> 149
  | McQ9_Q10 -> 150
  | McQ10_Q11 -> 151
  | McQ11_Q12 -> 152
  | McQ12_Q13 -> 153
  | McQ13_Q14 -> 154
  | McQ14_Q15 -> 155
  | McQ0_Q1_Q2_Q3 -> 156
  | McQ1_Q2_Q3_Q4 -> 157
  | McQ2_Q3_Q4_Q5 -> 158
  | McQ3_Q4_Q5_Q6 -> 159
  | McQ4_Q5_Q6_Q7 -> 160
  | McQ5_Q6_Q7_Q8 -> 161
  | McQ6_Q7_Q8_Q9 -> 162
  | McQ7_Q8_Q9_Q10 -> 163
  | McQ8_Q9_Q10_Q11 -> 164
  | McQ9_Q10_Q11_Q12 -> 165
  | McQ10_Q11_Q12_Q13 -> 166
  | McQ11_Q12_Q13_Q14 -> 167
  | McQ12_Q13_Q14_Q15 -> 168
  | McR12_SP -> 169
  | McR0_R1 -> 170
  | McR2_R3 -> 171
  | McR4_R5 -> 172
  | McR6_R7 -> 173
  | McR8_R9 -> 174
  | McR10_R11 -> 175
  | McD0_D1_D2 -> 176
  | McD1_D2_D3 -> 177
  | McD2_D3_D4 -> 178
  | McD3_D4_D5 -> 179
  | McD4_D5_D6 -> 180
  | McD5_D6_D7 -> 181
  | McD6_D7_D8 -> 182
  | McD7_D8_D9 -> 183
  | McD8_D9_D10 -> 184
  | McD9_D10_D11 -> 185
  | McD10_D11_D12 -> 186
  | McD11_D12_D13 -> 187
  | McD12_D13_D14 -> 188
  | McD13_D14_D15 -> 189
  | McD14_D15_D16 -> 190
  | McD15_D16_D17 -> 191
  | McD16_D17_D18 -> 192
  | McD17_D18_D19 -> 193
  | McD18_D19_D20 -> 194
  | McD19_D20_D21 -> 195
  | McD20_D21_D22 -> 196
  | McD21_D22_D23 -> 197
  | McD22_D23_D24 -> 198
  | McD23_D24_D25 -> 199
  | McD24_D25_D26 -> 200
  | McD25_D26_D27 -> 201
  | McD26_D27_D28 -> 202
  | McD27_D28_D29 -> 203
  | McD28_D29_D30 -> 204
  | McD29_D30_D31 -> 205
  | McD0_D2_D4 -> 206
  | McD1_D3_D5 -> 207
  | McD2_D4_D6 -> 208
  | McD3_D5_D7 -> 209
  | McD4_D6_D8 -> 210
  | McD5_D7_D9 -> 211
  | McD6_D8_D10 -> 212
  | McD7_D9_D11 -> 213
  | McD8_D10_D12 -> 214
  | McD9_D11_D13 -> 215
  | McD10_D12_D14 -> 216
  | McD11_D13_D15 -> 217
  | McD12_D14_D16 -> 218
  | McD13_D15_D17 -> 219
  | McD14_D16_D18 -> 220
  | McD15_D17_D19 -> 221
  | McD16_D18_D20 -> 222
  | McD17_D19_D21 -> 223
  | McD18_D20_D22 -> 224
  | McD19_D21_D23 -> 225
  | McD20_D22_D24 -> 226
  | McD21_D23_D25 -> 227
  | McD22_D24_D26 -> 228
  | McD23_D25_D27 -> 229
  | McD24_D26_D28 -> 230
  | McD25_D27_D29 -> 231
  | McD26_D28_D30 -> 232
  | McD27_D29_D31 -> 233
  | McD0_D2_D4_D6 -> 234
  | McD1_D3_D5_D7 -> 235
  | McD2_D4_D6_D8 -> 236
  | McD3_D5_D7_D9 -> 237
  | McD4_D6_D8_D10 -> 238
  | McD5_D7_D9_D11 -> 239
  | McD6_D8_D10_D12 -> 240
  | McD7_D9_D11_D13 -> 241
  | McD8_D10_D12_D14 -> 242
  | McD9_D11_D13_D15 -> 243
  | McD10_D12_D14_D16 -> 244
  | McD11_D13_D15_D17 -> 245
  | McD12_D14_D16_D18 -> 246
  | McD13_D15_D17_D19 -> 247
  | McD14_D16_D18_D20 -> 248
  | McD15_D17_D19_D21 -> 249
  | McD16_D18_D20_D22 -> 250
  | McD17_D19_D21_D23 -> 251
  | McD18_D20_D22_D24 -> 252
  | McD19_D21_D23_D25 -> 253
  | McD20_D22_D24_D26 -> 254
  | McD21_D23_D25_D27 -> 255
  | McD22_D24_D26_D28 -> 256
  | McD23_D25_D27_D29 -> 257
  | McD24_D26_D28_D30 -> 258
  | McD25_D27_D29_D31 -> 259
  | McD1_D2 -> 260
  | McD3_D4 -> 261
  | McD5_D6 -> 262
  | McD7_D8 -> 263
  | McD9_D10 -> 264
  | McD11_D12 -> 265
  | McD13_D14 -> 266
  | McD15_D16 -> 267
  | McD17_D18 -> 268
  | McD19_D20 -> 269
  | McD21_D22 -> 270
  | McD23_D24 -> 271
  | McD25_D26 -> 272
  | McD27_D28 -> 273
  | McD29_D30 -> 274
  | McD1_D2_D3_D4 -> 275
  | McD3_D4_D5_D6 -> 276
  | McD5_D6_D7_D8 -> 277
  | McD7_D8_D9_D10 -> 278
  | McD9_D10_D11_D12 -> 279
  | McD11_D12_D13_D14 -> 280
  | McD13_D14_D15_D16 -> 281
  | McD15_D16_D17_D18 -> 282
  | McD17_D18_D19_D20 -> 283
  | McD19_D20_D21_D22 -> 284
  | McD21_D22_D23_D24 -> 285
  | McD23_D24_D25_D26 -> 286
  | McD25_D26_D27_D28 -> 287
  | McD27_D28_D29_D30 -> 288

let mcreg_of_int = function
  | 0 -> McNoRegister
  | 1 -> McAPSR
  | 2 -> McAPSR_NZCV
  | 3 -> McCPSR
  | 4 -> McFPEXC
  | 5 -> McFPINST
  | 6 -> McFPSCR
  | 7 -> McFPSCR_NZCV
  | 8 -> McFPSID
  | 9 -> McITSTATE
  | 10 -> McLR
  | 11 -> McPC
  | 12 -> McSP
  | 13 -> McSPSR
  | 14 -> McD0
  | 15 -> McD1
  | 16 -> McD2
  | 17 -> McD3
  | 18 -> McD4
  | 19 -> McD5
  | 20 -> McD6
  | 21 -> McD7
  | 22 -> McD8
  | 23 -> McD9
  | 24 -> McD10
  | 25 -> McD11
  | 26 -> McD12
  | 27 -> McD13
  | 28 -> McD14
  | 29 -> McD15
  | 30 -> McD16
  | 31 -> McD17
  | 32 -> McD18
  | 33 -> McD19
  | 34 -> McD20
  | 35 -> McD21
  | 36 -> McD22
  | 37 -> McD23
  | 38 -> McD24
  | 39 -> McD25
  | 40 -> McD26
  | 41 -> McD27
  | 42 -> McD28
  | 43 -> McD29
  | 44 -> McD30
  | 45 -> McD31
  | 46 -> McFPINST2
  | 47 -> McMVFR0
  | 48 -> McMVFR1
  | 49 -> McMVFR2
  | 50 -> McQ0
  | 51 -> McQ1
  | 52 -> McQ2
  | 53 -> McQ3
  | 54 -> McQ4
  | 55 -> McQ5
  | 56 -> McQ6
  | 57 -> McQ7
  | 58 -> McQ8
  | 59 -> McQ9
  | 60 -> McQ10
  | 61 -> McQ11
  | 62 -> McQ12
  | 63 -> McQ13
  | 64 -> McQ14
  | 65 -> McQ15
  | 66 -> McR0
  | 67 -> McR1
  | 68 -> McR2
  | 69 -> McR3
  | 70 -> McR4
  | 71 -> McR5
  | 72 -> McR6
  | 73 -> McR7
  | 74 -> McR8
  | 75 -> McR9
  | 76 -> McR10
  | 77 -> McR11
  | 78 -> McR12
  | 79 -> McS0
  | 80 -> McS1
  | 81 -> McS2
  | 82 -> McS3
  | 83 -> McS4
  | 84 -> McS5
  | 85 -> McS6
  | 86 -> McS7
  | 87 -> McS8
  | 88 -> McS9
  | 89 -> McS10
  | 90 -> McS11
  | 91 -> McS12
  | 92 -> McS13
  | 93 -> McS14
  | 94 -> McS15
  | 95 -> McS16
  | 96 -> McS17
  | 97 -> McS18
  | 98 -> McS19
  | 99 -> McS20
  | 100 -> McS21
  | 101 -> McS22
  | 102 -> McS23
  | 103 -> McS24
  | 104 -> McS25
  | 105 -> McS26
  | 106 -> McS27
  | 107 -> McS28
  | 108 -> McS29
  | 109 -> McS30
  | 110 -> McS31
  | 111 -> McD0_D2
  | 112 -> McD1_D3
  | 113 -> McD2_D4
  | 114 -> McD3_D5
  | 115 -> McD4_D6
  | 116 -> McD5_D7
  | 117 -> McD6_D8
  | 118 -> McD7_D9
  | 119 -> McD8_D10
  | 120 -> McD9_D11
  | 121 -> McD10_D12
  | 122 -> McD11_D13
  | 123 -> McD12_D14
  | 124 -> McD13_D15
  | 125 -> McD14_D16
  | 126 -> McD15_D17
  | 127 -> McD16_D18
  | 128 -> McD17_D19
  | 129 -> McD18_D20
  | 130 -> McD19_D21
  | 131 -> McD20_D22
  | 132 -> McD21_D23
  | 133 -> McD22_D24
  | 134 -> McD23_D25
  | 135 -> McD24_D26
  | 136 -> McD25_D27
  | 137 -> McD26_D28
  | 138 -> McD27_D29
  | 139 -> McD28_D30
  | 140 -> McD29_D31
  | 141 -> McQ0_Q1
  | 142 -> McQ1_Q2
  | 143 -> McQ2_Q3
  | 144 -> McQ3_Q4
  | 145 -> McQ4_Q5
  | 146 -> McQ5_Q6
  | 147 -> McQ6_Q7
  | 148 -> McQ7_Q8
  | 149 -> McQ8_Q9
  | 150 -> McQ9_Q10
  | 151 -> McQ10_Q11
  | 152 -> McQ11_Q12
  | 153 -> McQ12_Q13
  | 154 -> McQ13_Q14
  | 155 -> McQ14_Q15
  | 156 -> McQ0_Q1_Q2_Q3
  | 157 -> McQ1_Q2_Q3_Q4
  | 158 -> McQ2_Q3_Q4_Q5
  | 159 -> McQ3_Q4_Q5_Q6
  | 160 -> McQ4_Q5_Q6_Q7
  | 161 -> McQ5_Q6_Q7_Q8
  | 162 -> McQ6_Q7_Q8_Q9
  | 163 -> McQ7_Q8_Q9_Q10
  | 164 -> McQ8_Q9_Q10_Q11
  | 165 -> McQ9_Q10_Q11_Q12
  | 166 -> McQ10_Q11_Q12_Q13
  | 167 -> McQ11_Q12_Q13_Q14
  | 168 -> McQ12_Q13_Q14_Q15
  | 169 -> McR12_SP
  | 170 -> McR0_R1
  | 171 -> McR2_R3
  | 172 -> McR4_R5
  | 173 -> McR6_R7
  | 174 -> McR8_R9
  | 175 -> McR10_R11
  | 176 -> McD0_D1_D2
  | 177 -> McD1_D2_D3
  | 178 -> McD2_D3_D4
  | 179 -> McD3_D4_D5
  | 180 -> McD4_D5_D6
  | 181 -> McD5_D6_D7
  | 182 -> McD6_D7_D8
  | 183 -> McD7_D8_D9
  | 184 -> McD8_D9_D10
  | 185 -> McD9_D10_D11
  | 186 -> McD10_D11_D12
  | 187 -> McD11_D12_D13
  | 188 -> McD12_D13_D14
  | 189 -> McD13_D14_D15
  | 190 -> McD14_D15_D16
  | 191 -> McD15_D16_D17
  | 192 -> McD16_D17_D18
  | 193 -> McD17_D18_D19
  | 194 -> McD18_D19_D20
  | 195 -> McD19_D20_D21
  | 196 -> McD20_D21_D22
  | 197 -> McD21_D22_D23
  | 198 -> McD22_D23_D24
  | 199 -> McD23_D24_D25
  | 200 -> McD24_D25_D26
  | 201 -> McD25_D26_D27
  | 202 -> McD26_D27_D28
  | 203 -> McD27_D28_D29
  | 204 -> McD28_D29_D30
  | 205 -> McD29_D30_D31
  | 206 -> McD0_D2_D4
  | 207 -> McD1_D3_D5
  | 208 -> McD2_D4_D6
  | 209 -> McD3_D5_D7
  | 210 -> McD4_D6_D8
  | 211 -> McD5_D7_D9
  | 212 -> McD6_D8_D10
  | 213 -> McD7_D9_D11
  | 214 -> McD8_D10_D12
  | 215 -> McD9_D11_D13
  | 216 -> McD10_D12_D14
  | 217 -> McD11_D13_D15
  | 218 -> McD12_D14_D16
  | 219 -> McD13_D15_D17
  | 220 -> McD14_D16_D18
  | 221 -> McD15_D17_D19
  | 222 -> McD16_D18_D20
  | 223 -> McD17_D19_D21
  | 224 -> McD18_D20_D22
  | 225 -> McD19_D21_D23
  | 226 -> McD20_D22_D24
  | 227 -> McD21_D23_D25
  | 228 -> McD22_D24_D26
  | 229 -> McD23_D25_D27
  | 230 -> McD24_D26_D28
  | 231 -> McD25_D27_D29
  | 232 -> McD26_D28_D30
  | 233 -> McD27_D29_D31
  | 234 -> McD0_D2_D4_D6
  | 235 -> McD1_D3_D5_D7
  | 236 -> McD2_D4_D6_D8
  | 237 -> McD3_D5_D7_D9
  | 238 -> McD4_D6_D8_D10
  | 239 -> McD5_D7_D9_D11
  | 240 -> McD6_D8_D10_D12
  | 241 -> McD7_D9_D11_D13
  | 242 -> McD8_D10_D12_D14
  | 243 -> McD9_D11_D13_D15
  | 244 -> McD10_D12_D14_D16
  | 245 -> McD11_D13_D15_D17
  | 246 -> McD12_D14_D16_D18
  | 247 -> McD13_D15_D17_D19
  | 248 -> McD14_D16_D18_D20
  | 249 -> McD15_D17_D19_D21
  | 250 -> McD16_D18_D20_D22
  | 251 -> McD17_D19_D21_D23
  | 252 -> McD18_D20_D22_D24
  | 253 -> McD19_D21_D23_D25
  | 254 -> McD20_D22_D24_D26
  | 255 -> McD21_D23_D25_D27
  | 256 -> McD22_D24_D26_D28
  | 257 -> McD23_D25_D27_D29
  | 258 -> McD24_D26_D28_D30
  | 259 -> McD25_D27_D29_D31
  | 260 -> McD1_D2
  | 261 -> McD3_D4
  | 262 -> McD5_D6
  | 263 -> McD7_D8
  | 264 -> McD9_D10
  | 265 -> McD11_D12
  | 266 -> McD13_D14
  | 267 -> McD15_D16
  | 268 -> McD17_D18
  | 269 -> McD19_D20
  | 270 -> McD21_D22
  | 271 -> McD23_D24
  | 272 -> McD25_D26
  | 273 -> McD27_D28
  | 274 -> McD29_D30
  | 275 -> McD1_D2_D3_D4
  | 276 -> McD3_D4_D5_D6
  | 277 -> McD5_D6_D7_D8
  | 278 -> McD7_D8_D9_D10
  | 279 -> McD9_D10_D11_D12
  | 280 -> McD11_D12_D13_D14
  | 281 -> McD13_D14_D15_D16
  | 282 -> McD15_D16_D17_D18
  | 283 -> McD17_D18_D19_D20
  | 284 -> McD19_D20_D21_D22
  | 285 -> McD21_D22_D23_D24
  | 286 -> McD23_D24_D25_D26
  | 287 -> McD25_D26_D27_D28
  | 288 -> McD27_D28_D29_D30
  | i -> invalid_arg ("mcreg_of_int: " ^ string_of_int i)

let string_of_mcreg = function
  | McNoRegister -> "NoRegister"
  | McAPSR -> "APSR"
  | McAPSR_NZCV -> "APSR_NZCV"
  | McCPSR -> "CPSR"
  | McFPEXC -> "FPEXC"
  | McFPINST -> "FPINST"
  | McFPSCR -> "FPSCR"
  | McFPSCR_NZCV -> "FPSCR_NZCV"
  | McFPSID -> "FPSID"
  | McITSTATE -> "ITSTATE"
  | McLR -> "LR"
  | McPC -> "PC"
  | McSP -> "SP"
  | McSPSR -> "SPSR"
  | McD0 -> "D0"
  | McD1 -> "D1"
  | McD2 -> "D2"
  | McD3 -> "D3"
  | McD4 -> "D4"
  | McD5 -> "D5"
  | McD6 -> "D6"
  | McD7 -> "D7"
  | McD8 -> "D8"
  | McD9 -> "D9"
  | McD10 -> "D10"
  | McD11 -> "D11"
  | McD12 -> "D12"
  | McD13 -> "D13"
  | McD14 -> "D14"
  | McD15 -> "D15"
  | McD16 -> "D16"
  | McD17 -> "D17"
  | McD18 -> "D18"
  | McD19 -> "D19"
  | McD20 -> "D20"
  | McD21 -> "D21"
  | McD22 -> "D22"
  | McD23 -> "D23"
  | McD24 -> "D24"
  | McD25 -> "D25"
  | McD26 -> "D26"
  | McD27 -> "D27"
  | McD28 -> "D28"
  | McD29 -> "D29"
  | McD30 -> "D30"
  | McD31 -> "D31"
  | McFPINST2 -> "FPINST2"
  | McMVFR0 -> "MVFR0"
  | McMVFR1 -> "MVFR1"
  | McMVFR2 -> "MVFR2"
  | McQ0 -> "Q0"
  | McQ1 -> "Q1"
  | McQ2 -> "Q2"
  | McQ3 -> "Q3"
  | McQ4 -> "Q4"
  | McQ5 -> "Q5"
  | McQ6 -> "Q6"
  | McQ7 -> "Q7"
  | McQ8 -> "Q8"
  | McQ9 -> "Q9"
  | McQ10 -> "Q10"
  | McQ11 -> "Q11"
  | McQ12 -> "Q12"
  | McQ13 -> "Q13"
  | McQ14 -> "Q14"
  | McQ15 -> "Q15"
  | McR0 -> "R0"
  | McR1 -> "R1"
  | McR2 -> "R2"
  | McR3 -> "R3"
  | McR4 -> "R4"
  | McR5 -> "R5"
  | McR6 -> "R6"
  | McR7 -> "R7"
  | McR8 -> "R8"
  | McR9 -> "R9"
  | McR10 -> "R10"
  | McR11 -> "R11"
  | McR12 -> "R12"
  | McS0 -> "S0"
  | McS1 -> "S1"
  | McS2 -> "S2"
  | McS3 -> "S3"
  | McS4 -> "S4"
  | McS5 -> "S5"
  | McS6 -> "S6"
  | McS7 -> "S7"
  | McS8 -> "S8"
  | McS9 -> "S9"
  | McS10 -> "S10"
  | McS11 -> "S11"
  | McS12 -> "S12"
  | McS13 -> "S13"
  | McS14 -> "S14"
  | McS15 -> "S15"
  | McS16 -> "S16"
  | McS17 -> "S17"
  | McS18 -> "S18"
  | McS19 -> "S19"
  | McS20 -> "S20"
  | McS21 -> "S21"
  | McS22 -> "S22"
  | McS23 -> "S23"
  | McS24 -> "S24"
  | McS25 -> "S25"
  | McS26 -> "S26"
  | McS27 -> "S27"
  | McS28 -> "S28"
  | McS29 -> "S29"
  | McS30 -> "S30"
  | McS31 -> "S31"
  | McD0_D2 -> "D0_D2"
  | McD1_D3 -> "D1_D3"
  | McD2_D4 -> "D2_D4"
  | McD3_D5 -> "D3_D5"
  | McD4_D6 -> "D4_D6"
  | McD5_D7 -> "D5_D7"
  | McD6_D8 -> "D6_D8"
  | McD7_D9 -> "D7_D9"
  | McD8_D10 -> "D8_D10"
  | McD9_D11 -> "D9_D11"
  | McD10_D12 -> "D10_D12"
  | McD11_D13 -> "D11_D13"
  | McD12_D14 -> "D12_D14"
  | McD13_D15 -> "D13_D15"
  | McD14_D16 -> "D14_D16"
  | McD15_D17 -> "D15_D17"
  | McD16_D18 -> "D16_D18"
  | McD17_D19 -> "D17_D19"
  | McD18_D20 -> "D18_D20"
  | McD19_D21 -> "D19_D21"
  | McD20_D22 -> "D20_D22"
  | McD21_D23 -> "D21_D23"
  | McD22_D24 -> "D22_D24"
  | McD23_D25 -> "D23_D25"
  | McD24_D26 -> "D24_D26"
  | McD25_D27 -> "D25_D27"
  | McD26_D28 -> "D26_D28"
  | McD27_D29 -> "D27_D29"
  | McD28_D30 -> "D28_D30"
  | McD29_D31 -> "D29_D31"
  | McQ0_Q1 -> "Q0_Q1"
  | McQ1_Q2 -> "Q1_Q2"
  | McQ2_Q3 -> "Q2_Q3"
  | McQ3_Q4 -> "Q3_Q4"
  | McQ4_Q5 -> "Q4_Q5"
  | McQ5_Q6 -> "Q5_Q6"
  | McQ6_Q7 -> "Q6_Q7"
  | McQ7_Q8 -> "Q7_Q8"
  | McQ8_Q9 -> "Q8_Q9"
  | McQ9_Q10 -> "Q9_Q10"
  | McQ10_Q11 -> "Q10_Q11"
  | McQ11_Q12 -> "Q11_Q12"
  | McQ12_Q13 -> "Q12_Q13"
  | McQ13_Q14 -> "Q13_Q14"
  | McQ14_Q15 -> "Q14_Q15"
  | McQ0_Q1_Q2_Q3 -> "Q0_Q1_Q2_Q3"
  | McQ1_Q2_Q3_Q4 -> "Q1_Q2_Q3_Q4"
  | McQ2_Q3_Q4_Q5 -> "Q2_Q3_Q4_Q5"
  | McQ3_Q4_Q5_Q6 -> "Q3_Q4_Q5_Q6"
  | McQ4_Q5_Q6_Q7 -> "Q4_Q5_Q6_Q7"
  | McQ5_Q6_Q7_Q8 -> "Q5_Q6_Q7_Q8"
  | McQ6_Q7_Q8_Q9 -> "Q6_Q7_Q8_Q9"
  | McQ7_Q8_Q9_Q10 -> "Q7_Q8_Q9_Q10"
  | McQ8_Q9_Q10_Q11 -> "Q8_Q9_Q10_Q11"
  | McQ9_Q10_Q11_Q12 -> "Q9_Q10_Q11_Q12"
  | McQ10_Q11_Q12_Q13 -> "Q10_Q11_Q12_Q13"
  | McQ11_Q12_Q13_Q14 -> "Q11_Q12_Q13_Q14"
  | McQ12_Q13_Q14_Q15 -> "Q12_Q13_Q14_Q15"
  | McR12_SP -> "R12_SP"
  | McR0_R1 -> "R0_R1"
  | McR2_R3 -> "R2_R3"
  | McR4_R5 -> "R4_R5"
  | McR6_R7 -> "R6_R7"
  | McR8_R9 -> "R8_R9"
  | McR10_R11 -> "R10_R11"
  | McD0_D1_D2 -> "D0_D1_D2"
  | McD1_D2_D3 -> "D1_D2_D3"
  | McD2_D3_D4 -> "D2_D3_D4"
  | McD3_D4_D5 -> "D3_D4_D5"
  | McD4_D5_D6 -> "D4_D5_D6"
  | McD5_D6_D7 -> "D5_D6_D7"
  | McD6_D7_D8 -> "D6_D7_D8"
  | McD7_D8_D9 -> "D7_D8_D9"
  | McD8_D9_D10 -> "D8_D9_D10"
  | McD9_D10_D11 -> "D9_D10_D11"
  | McD10_D11_D12 -> "D10_D11_D12"
  | McD11_D12_D13 -> "D11_D12_D13"
  | McD12_D13_D14 -> "D12_D13_D14"
  | McD13_D14_D15 -> "D13_D14_D15"
  | McD14_D15_D16 -> "D14_D15_D16"
  | McD15_D16_D17 -> "D15_D16_D17"
  | McD16_D17_D18 -> "D16_D17_D18"
  | McD17_D18_D19 -> "D17_D18_D19"
  | McD18_D19_D20 -> "D18_D19_D20"
  | McD19_D20_D21 -> "D19_D20_D21"
  | McD20_D21_D22 -> "D20_D21_D22"
  | McD21_D22_D23 -> "D21_D22_D23"
  | McD22_D23_D24 -> "D22_D23_D24"
  | McD23_D24_D25 -> "D23_D24_D25"
  | McD24_D25_D26 -> "D24_D25_D26"
  | McD25_D26_D27 -> "D25_D26_D27"
  | McD26_D27_D28 -> "D26_D27_D28"
  | McD27_D28_D29 -> "D27_D28_D29"
  | McD28_D29_D30 -> "D28_D29_D30"
  | McD29_D30_D31 -> "D29_D30_D31"
  | McD0_D2_D4 -> "D0_D2_D4"
  | McD1_D3_D5 -> "D1_D3_D5"
  | McD2_D4_D6 -> "D2_D4_D6"
  | McD3_D5_D7 -> "D3_D5_D7"
  | McD4_D6_D8 -> "D4_D6_D8"
  | McD5_D7_D9 -> "D5_D7_D9"
  | McD6_D8_D10 -> "D6_D8_D10"
  | McD7_D9_D11 -> "D7_D9_D11"
  | McD8_D10_D12 -> "D8_D10_D12"
  | McD9_D11_D13 -> "D9_D11_D13"
  | McD10_D12_D14 -> "D10_D12_D14"
  | McD11_D13_D15 -> "D11_D13_D15"
  | McD12_D14_D16 -> "D12_D14_D16"
  | McD13_D15_D17 -> "D13_D15_D17"
  | McD14_D16_D18 -> "D14_D16_D18"
  | McD15_D17_D19 -> "D15_D17_D19"
  | McD16_D18_D20 -> "D16_D18_D20"
  | McD17_D19_D21 -> "D17_D19_D21"
  | McD18_D20_D22 -> "D18_D20_D22"
  | McD19_D21_D23 -> "D19_D21_D23"
  | McD20_D22_D24 -> "D20_D22_D24"
  | McD21_D23_D25 -> "D21_D23_D25"
  | McD22_D24_D26 -> "D22_D24_D26"
  | McD23_D25_D27 -> "D23_D25_D27"
  | McD24_D26_D28 -> "D24_D26_D28"
  | McD25_D27_D29 -> "D25_D27_D29"
  | McD26_D28_D30 -> "D26_D28_D30"
  | McD27_D29_D31 -> "D27_D29_D31"
  | McD0_D2_D4_D6 -> "D0_D2_D4_D6"
  | McD1_D3_D5_D7 -> "D1_D3_D5_D7"
  | McD2_D4_D6_D8 -> "D2_D4_D6_D8"
  | McD3_D5_D7_D9 -> "D3_D5_D7_D9"
  | McD4_D6_D8_D10 -> "D4_D6_D8_D10"
  | McD5_D7_D9_D11 -> "D5_D7_D9_D11"
  | McD6_D8_D10_D12 -> "D6_D8_D10_D12"
  | McD7_D9_D11_D13 -> "D7_D9_D11_D13"
  | McD8_D10_D12_D14 -> "D8_D10_D12_D14"
  | McD9_D11_D13_D15 -> "D9_D11_D13_D15"
  | McD10_D12_D14_D16 -> "D10_D12_D14_D16"
  | McD11_D13_D15_D17 -> "D11_D13_D15_D17"
  | McD12_D14_D16_D18 -> "D12_D14_D16_D18"
  | McD13_D15_D17_D19 -> "D13_D15_D17_D19"
  | McD14_D16_D18_D20 -> "D14_D16_D18_D20"
  | McD15_D17_D19_D21 -> "D15_D17_D19_D21"
  | McD16_D18_D20_D22 -> "D16_D18_D20_D22"
  | McD17_D19_D21_D23 -> "D17_D19_D21_D23"
  | McD18_D20_D22_D24 -> "D18_D20_D22_D24"
  | McD19_D21_D23_D25 -> "D19_D21_D23_D25"
  | McD20_D22_D24_D26 -> "D20_D22_D24_D26"
  | McD21_D23_D25_D27 -> "D21_D23_D25_D27"
  | McD22_D24_D26_D28 -> "D22_D24_D26_D28"
  | McD23_D25_D27_D29 -> "D23_D25_D27_D29"
  | McD24_D26_D28_D30 -> "D24_D26_D28_D30"
  | McD25_D27_D29_D31 -> "D25_D27_D29_D31"
  | McD1_D2 -> "D1_D2"
  | McD3_D4 -> "D3_D4"
  | McD5_D6 -> "D5_D6"
  | McD7_D8 -> "D7_D8"
  | McD9_D10 -> "D9_D10"
  | McD11_D12 -> "D11_D12"
  | McD13_D14 -> "D13_D14"
  | McD15_D16 -> "D15_D16"
  | McD17_D18 -> "D17_D18"
  | McD19_D20 -> "D19_D20"
  | McD21_D22 -> "D21_D22"
  | McD23_D24 -> "D23_D24"
  | McD25_D26 -> "D25_D26"
  | McD27_D28 -> "D27_D28"
  | McD29_D30 -> "D29_D30"
  | McD1_D2_D3_D4 -> "D1_D2_D3_D4"
  | McD3_D4_D5_D6 -> "D3_D4_D5_D6"
  | McD5_D6_D7_D8 -> "D5_D6_D7_D8"
  | McD7_D8_D9_D10 -> "D7_D8_D9_D10"
  | McD9_D10_D11_D12 -> "D9_D10_D11_D12"
  | McD11_D12_D13_D14 -> "D11_D12_D13_D14"
  | McD13_D14_D15_D16 -> "D13_D14_D15_D16"
  | McD15_D16_D17_D18 -> "D15_D16_D17_D18"
  | McD17_D18_D19_D20 -> "D17_D18_D19_D20"
  | McD19_D20_D21_D22 -> "D19_D20_D21_D22"
  | McD21_D22_D23_D24 -> "D21_D22_D23_D24"
  | McD23_D24_D25_D26 -> "D23_D24_D25_D26"
  | McD25_D26_D27_D28 -> "D25_D26_D27_D28"
  | McD27_D28_D29_D30 -> "D27_D28_D29_D30"
