type mcreg_t =
  | McNoRegister                               (* 0 *)
  | McAH                                       (* 1 *)
  | McAL                                       (* 2 *)
  | McAX                                       (* 3 *)
  | McBH                                       (* 4 *)
  | McBL                                       (* 5 *)
  | McBP                                       (* 6 *)
  | McBPL                                      (* 7 *)
  | McBX                                       (* 8 *)
  | McCH                                       (* 9 *)
  | McCL                                       (* 10 *)
  | McCS                                       (* 11 *)
  | McCX                                       (* 12 *)
  | McDH                                       (* 13 *)
  | McDI                                       (* 14 *)
  | McDIL                                      (* 15 *)
  | McDL                                       (* 16 *)
  | McDS                                       (* 17 *)
  | McDX                                       (* 18 *)
  | McEAX                                      (* 19 *)
  | McEBP                                      (* 20 *)
  | McEBX                                      (* 21 *)
  | McECX                                      (* 22 *)
  | McEDI                                      (* 23 *)
  | McEDX                                      (* 24 *)
  | McEFLAGS                                   (* 25 *)
  | McEIP                                      (* 26 *)
  | McEIZ                                      (* 27 *)
  | McES                                       (* 28 *)
  | McESI                                      (* 29 *)
  | McESP                                      (* 30 *)
  | McFPSW                                     (* 31 *)
  | McFS                                       (* 32 *)
  | McGS                                       (* 33 *)
  | McIP                                       (* 34 *)
  | McRAX                                      (* 35 *)
  | McRBP                                      (* 36 *)
  | McRBX                                      (* 37 *)
  | McRCX                                      (* 38 *)
  | McRDI                                      (* 39 *)
  | McRDX                                      (* 40 *)
  | McRIP                                      (* 41 *)
  | McRIZ                                      (* 42 *)
  | McRSI                                      (* 43 *)
  | McRSP                                      (* 44 *)
  | McSI                                       (* 45 *)
  | McSIL                                      (* 46 *)
  | McSP                                       (* 47 *)
  | McSPL                                      (* 48 *)
  | McSS                                       (* 49 *)
  | McCR0                                      (* 50 *)
  | McCR1                                      (* 51 *)
  | McCR2                                      (* 52 *)
  | McCR3                                      (* 53 *)
  | McCR4                                      (* 54 *)
  | McCR5                                      (* 55 *)
  | McCR6                                      (* 56 *)
  | McCR7                                      (* 57 *)
  | McCR8                                      (* 58 *)
  | McCR9                                      (* 59 *)
  | McCR10                                     (* 60 *)
  | McCR11                                     (* 61 *)
  | McCR12                                     (* 62 *)
  | McCR13                                     (* 63 *)
  | McCR14                                     (* 64 *)
  | McCR15                                     (* 65 *)
  | McDR0                                      (* 66 *)
  | McDR1                                      (* 67 *)
  | McDR2                                      (* 68 *)
  | McDR3                                      (* 69 *)
  | McDR4                                      (* 70 *)
  | McDR5                                      (* 71 *)
  | McDR6                                      (* 72 *)
  | McDR7                                      (* 73 *)
  | McFP0                                      (* 74 *)
  | McFP1                                      (* 75 *)
  | McFP2                                      (* 76 *)
  | McFP3                                      (* 77 *)
  | McFP4                                      (* 78 *)
  | McFP5                                      (* 79 *)
  | McFP6                                      (* 80 *)
  | McFP7                                      (* 81 *)
  | McK0                                       (* 82 *)
  | McK1                                       (* 83 *)
  | McK2                                       (* 84 *)
  | McK3                                       (* 85 *)
  | McK4                                       (* 86 *)
  | McK5                                       (* 87 *)
  | McK6                                       (* 88 *)
  | McK7                                       (* 89 *)
  | McMM0                                      (* 90 *)
  | McMM1                                      (* 91 *)
  | McMM2                                      (* 92 *)
  | McMM3                                      (* 93 *)
  | McMM4                                      (* 94 *)
  | McMM5                                      (* 95 *)
  | McMM6                                      (* 96 *)
  | McMM7                                      (* 97 *)
  | McR8                                       (* 98 *)
  | McR9                                       (* 99 *)
  | McR10                                      (* 100 *)
  | McR11                                      (* 101 *)
  | McR12                                      (* 102 *)
  | McR13                                      (* 103 *)
  | McR14                                      (* 104 *)
  | McR15                                      (* 105 *)
  | McST0                                      (* 106 *)
  | McST1                                      (* 107 *)
  | McST2                                      (* 108 *)
  | McST3                                      (* 109 *)
  | McST4                                      (* 110 *)
  | McST5                                      (* 111 *)
  | McST6                                      (* 112 *)
  | McST7                                      (* 113 *)
  | McXMM0                                     (* 114 *)
  | McXMM1                                     (* 115 *)
  | McXMM2                                     (* 116 *)
  | McXMM3                                     (* 117 *)
  | McXMM4                                     (* 118 *)
  | McXMM5                                     (* 119 *)
  | McXMM6                                     (* 120 *)
  | McXMM7                                     (* 121 *)
  | McXMM8                                     (* 122 *)
  | McXMM9                                     (* 123 *)
  | McXMM10                                    (* 124 *)
  | McXMM11                                    (* 125 *)
  | McXMM12                                    (* 126 *)
  | McXMM13                                    (* 127 *)
  | McXMM14                                    (* 128 *)
  | McXMM15                                    (* 129 *)
  | McXMM16                                    (* 130 *)
  | McXMM17                                    (* 131 *)
  | McXMM18                                    (* 132 *)
  | McXMM19                                    (* 133 *)
  | McXMM20                                    (* 134 *)
  | McXMM21                                    (* 135 *)
  | McXMM22                                    (* 136 *)
  | McXMM23                                    (* 137 *)
  | McXMM24                                    (* 138 *)
  | McXMM25                                    (* 139 *)
  | McXMM26                                    (* 140 *)
  | McXMM27                                    (* 141 *)
  | McXMM28                                    (* 142 *)
  | McXMM29                                    (* 143 *)
  | McXMM30                                    (* 144 *)
  | McXMM31                                    (* 145 *)
  | McYMM0                                     (* 146 *)
  | McYMM1                                     (* 147 *)
  | McYMM2                                     (* 148 *)
  | McYMM3                                     (* 149 *)
  | McYMM4                                     (* 150 *)
  | McYMM5                                     (* 151 *)
  | McYMM6                                     (* 152 *)
  | McYMM7                                     (* 153 *)
  | McYMM8                                     (* 154 *)
  | McYMM9                                     (* 155 *)
  | McYMM10                                    (* 156 *)
  | McYMM11                                    (* 157 *)
  | McYMM12                                    (* 158 *)
  | McYMM13                                    (* 159 *)
  | McYMM14                                    (* 160 *)
  | McYMM15                                    (* 161 *)
  | McYMM16                                    (* 162 *)
  | McYMM17                                    (* 163 *)
  | McYMM18                                    (* 164 *)
  | McYMM19                                    (* 165 *)
  | McYMM20                                    (* 166 *)
  | McYMM21                                    (* 167 *)
  | McYMM22                                    (* 168 *)
  | McYMM23                                    (* 169 *)
  | McYMM24                                    (* 170 *)
  | McYMM25                                    (* 171 *)
  | McYMM26                                    (* 172 *)
  | McYMM27                                    (* 173 *)
  | McYMM28                                    (* 174 *)
  | McYMM29                                    (* 175 *)
  | McYMM30                                    (* 176 *)
  | McYMM31                                    (* 177 *)
  | McZMM0                                     (* 178 *)
  | McZMM1                                     (* 179 *)
  | McZMM2                                     (* 180 *)
  | McZMM3                                     (* 181 *)
  | McZMM4                                     (* 182 *)
  | McZMM5                                     (* 183 *)
  | McZMM6                                     (* 184 *)
  | McZMM7                                     (* 185 *)
  | McZMM8                                     (* 186 *)
  | McZMM9                                     (* 187 *)
  | McZMM10                                    (* 188 *)
  | McZMM11                                    (* 189 *)
  | McZMM12                                    (* 190 *)
  | McZMM13                                    (* 191 *)
  | McZMM14                                    (* 192 *)
  | McZMM15                                    (* 193 *)
  | McZMM16                                    (* 194 *)
  | McZMM17                                    (* 195 *)
  | McZMM18                                    (* 196 *)
  | McZMM19                                    (* 197 *)
  | McZMM20                                    (* 198 *)
  | McZMM21                                    (* 199 *)
  | McZMM22                                    (* 200 *)
  | McZMM23                                    (* 201 *)
  | McZMM24                                    (* 202 *)
  | McZMM25                                    (* 203 *)
  | McZMM26                                    (* 204 *)
  | McZMM27                                    (* 205 *)
  | McZMM28                                    (* 206 *)
  | McZMM29                                    (* 207 *)
  | McZMM30                                    (* 208 *)
  | McZMM31                                    (* 209 *)
  | McR8B                                      (* 210 *)
  | McR9B                                      (* 211 *)
  | McR10B                                     (* 212 *)
  | McR11B                                     (* 213 *)
  | McR12B                                     (* 214 *)
  | McR13B                                     (* 215 *)
  | McR14B                                     (* 216 *)
  | McR15B                                     (* 217 *)
  | McR8D                                      (* 218 *)
  | McR9D                                      (* 219 *)
  | McR10D                                     (* 220 *)
  | McR11D                                     (* 221 *)
  | McR12D                                     (* 222 *)
  | McR13D                                     (* 223 *)
  | McR14D                                     (* 224 *)
  | McR15D                                     (* 225 *)
  | McR8W                                      (* 226 *)
  | McR9W                                      (* 227 *)
  | McR10W                                     (* 228 *)
  | McR11W                                     (* 229 *)
  | McR12W                                     (* 230 *)
  | McR13W                                     (* 231 *)
  | McR14W                                     (* 232 *)
  | McR15W                                     (* 233 *)

let int_of_mcreg = function
  | McNoRegister -> 0
  | McAH -> 1
  | McAL -> 2
  | McAX -> 3
  | McBH -> 4
  | McBL -> 5
  | McBP -> 6
  | McBPL -> 7
  | McBX -> 8
  | McCH -> 9
  | McCL -> 10
  | McCS -> 11
  | McCX -> 12
  | McDH -> 13
  | McDI -> 14
  | McDIL -> 15
  | McDL -> 16
  | McDS -> 17
  | McDX -> 18
  | McEAX -> 19
  | McEBP -> 20
  | McEBX -> 21
  | McECX -> 22
  | McEDI -> 23
  | McEDX -> 24
  | McEFLAGS -> 25
  | McEIP -> 26
  | McEIZ -> 27
  | McES -> 28
  | McESI -> 29
  | McESP -> 30
  | McFPSW -> 31
  | McFS -> 32
  | McGS -> 33
  | McIP -> 34
  | McRAX -> 35
  | McRBP -> 36
  | McRBX -> 37
  | McRCX -> 38
  | McRDI -> 39
  | McRDX -> 40
  | McRIP -> 41
  | McRIZ -> 42
  | McRSI -> 43
  | McRSP -> 44
  | McSI -> 45
  | McSIL -> 46
  | McSP -> 47
  | McSPL -> 48
  | McSS -> 49
  | McCR0 -> 50
  | McCR1 -> 51
  | McCR2 -> 52
  | McCR3 -> 53
  | McCR4 -> 54
  | McCR5 -> 55
  | McCR6 -> 56
  | McCR7 -> 57
  | McCR8 -> 58
  | McCR9 -> 59
  | McCR10 -> 60
  | McCR11 -> 61
  | McCR12 -> 62
  | McCR13 -> 63
  | McCR14 -> 64
  | McCR15 -> 65
  | McDR0 -> 66
  | McDR1 -> 67
  | McDR2 -> 68
  | McDR3 -> 69
  | McDR4 -> 70
  | McDR5 -> 71
  | McDR6 -> 72
  | McDR7 -> 73
  | McFP0 -> 74
  | McFP1 -> 75
  | McFP2 -> 76
  | McFP3 -> 77
  | McFP4 -> 78
  | McFP5 -> 79
  | McFP6 -> 80
  | McFP7 -> 81
  | McK0 -> 82
  | McK1 -> 83
  | McK2 -> 84
  | McK3 -> 85
  | McK4 -> 86
  | McK5 -> 87
  | McK6 -> 88
  | McK7 -> 89
  | McMM0 -> 90
  | McMM1 -> 91
  | McMM2 -> 92
  | McMM3 -> 93
  | McMM4 -> 94
  | McMM5 -> 95
  | McMM6 -> 96
  | McMM7 -> 97
  | McR8 -> 98
  | McR9 -> 99
  | McR10 -> 100
  | McR11 -> 101
  | McR12 -> 102
  | McR13 -> 103
  | McR14 -> 104
  | McR15 -> 105
  | McST0 -> 106
  | McST1 -> 107
  | McST2 -> 108
  | McST3 -> 109
  | McST4 -> 110
  | McST5 -> 111
  | McST6 -> 112
  | McST7 -> 113
  | McXMM0 -> 114
  | McXMM1 -> 115
  | McXMM2 -> 116
  | McXMM3 -> 117
  | McXMM4 -> 118
  | McXMM5 -> 119
  | McXMM6 -> 120
  | McXMM7 -> 121
  | McXMM8 -> 122
  | McXMM9 -> 123
  | McXMM10 -> 124
  | McXMM11 -> 125
  | McXMM12 -> 126
  | McXMM13 -> 127
  | McXMM14 -> 128
  | McXMM15 -> 129
  | McXMM16 -> 130
  | McXMM17 -> 131
  | McXMM18 -> 132
  | McXMM19 -> 133
  | McXMM20 -> 134
  | McXMM21 -> 135
  | McXMM22 -> 136
  | McXMM23 -> 137
  | McXMM24 -> 138
  | McXMM25 -> 139
  | McXMM26 -> 140
  | McXMM27 -> 141
  | McXMM28 -> 142
  | McXMM29 -> 143
  | McXMM30 -> 144
  | McXMM31 -> 145
  | McYMM0 -> 146
  | McYMM1 -> 147
  | McYMM2 -> 148
  | McYMM3 -> 149
  | McYMM4 -> 150
  | McYMM5 -> 151
  | McYMM6 -> 152
  | McYMM7 -> 153
  | McYMM8 -> 154
  | McYMM9 -> 155
  | McYMM10 -> 156
  | McYMM11 -> 157
  | McYMM12 -> 158
  | McYMM13 -> 159
  | McYMM14 -> 160
  | McYMM15 -> 161
  | McYMM16 -> 162
  | McYMM17 -> 163
  | McYMM18 -> 164
  | McYMM19 -> 165
  | McYMM20 -> 166
  | McYMM21 -> 167
  | McYMM22 -> 168
  | McYMM23 -> 169
  | McYMM24 -> 170
  | McYMM25 -> 171
  | McYMM26 -> 172
  | McYMM27 -> 173
  | McYMM28 -> 174
  | McYMM29 -> 175
  | McYMM30 -> 176
  | McYMM31 -> 177
  | McZMM0 -> 178
  | McZMM1 -> 179
  | McZMM2 -> 180
  | McZMM3 -> 181
  | McZMM4 -> 182
  | McZMM5 -> 183
  | McZMM6 -> 184
  | McZMM7 -> 185
  | McZMM8 -> 186
  | McZMM9 -> 187
  | McZMM10 -> 188
  | McZMM11 -> 189
  | McZMM12 -> 190
  | McZMM13 -> 191
  | McZMM14 -> 192
  | McZMM15 -> 193
  | McZMM16 -> 194
  | McZMM17 -> 195
  | McZMM18 -> 196
  | McZMM19 -> 197
  | McZMM20 -> 198
  | McZMM21 -> 199
  | McZMM22 -> 200
  | McZMM23 -> 201
  | McZMM24 -> 202
  | McZMM25 -> 203
  | McZMM26 -> 204
  | McZMM27 -> 205
  | McZMM28 -> 206
  | McZMM29 -> 207
  | McZMM30 -> 208
  | McZMM31 -> 209
  | McR8B -> 210
  | McR9B -> 211
  | McR10B -> 212
  | McR11B -> 213
  | McR12B -> 214
  | McR13B -> 215
  | McR14B -> 216
  | McR15B -> 217
  | McR8D -> 218
  | McR9D -> 219
  | McR10D -> 220
  | McR11D -> 221
  | McR12D -> 222
  | McR13D -> 223
  | McR14D -> 224
  | McR15D -> 225
  | McR8W -> 226
  | McR9W -> 227
  | McR10W -> 228
  | McR11W -> 229
  | McR12W -> 230
  | McR13W -> 231
  | McR14W -> 232
  | McR15W -> 233

let mcreg_of_int = function
  | 0 -> McNoRegister
  | 1 -> McAH
  | 2 -> McAL
  | 3 -> McAX
  | 4 -> McBH
  | 5 -> McBL
  | 6 -> McBP
  | 7 -> McBPL
  | 8 -> McBX
  | 9 -> McCH
  | 10 -> McCL
  | 11 -> McCS
  | 12 -> McCX
  | 13 -> McDH
  | 14 -> McDI
  | 15 -> McDIL
  | 16 -> McDL
  | 17 -> McDS
  | 18 -> McDX
  | 19 -> McEAX
  | 20 -> McEBP
  | 21 -> McEBX
  | 22 -> McECX
  | 23 -> McEDI
  | 24 -> McEDX
  | 25 -> McEFLAGS
  | 26 -> McEIP
  | 27 -> McEIZ
  | 28 -> McES
  | 29 -> McESI
  | 30 -> McESP
  | 31 -> McFPSW
  | 32 -> McFS
  | 33 -> McGS
  | 34 -> McIP
  | 35 -> McRAX
  | 36 -> McRBP
  | 37 -> McRBX
  | 38 -> McRCX
  | 39 -> McRDI
  | 40 -> McRDX
  | 41 -> McRIP
  | 42 -> McRIZ
  | 43 -> McRSI
  | 44 -> McRSP
  | 45 -> McSI
  | 46 -> McSIL
  | 47 -> McSP
  | 48 -> McSPL
  | 49 -> McSS
  | 50 -> McCR0
  | 51 -> McCR1
  | 52 -> McCR2
  | 53 -> McCR3
  | 54 -> McCR4
  | 55 -> McCR5
  | 56 -> McCR6
  | 57 -> McCR7
  | 58 -> McCR8
  | 59 -> McCR9
  | 60 -> McCR10
  | 61 -> McCR11
  | 62 -> McCR12
  | 63 -> McCR13
  | 64 -> McCR14
  | 65 -> McCR15
  | 66 -> McDR0
  | 67 -> McDR1
  | 68 -> McDR2
  | 69 -> McDR3
  | 70 -> McDR4
  | 71 -> McDR5
  | 72 -> McDR6
  | 73 -> McDR7
  | 74 -> McFP0
  | 75 -> McFP1
  | 76 -> McFP2
  | 77 -> McFP3
  | 78 -> McFP4
  | 79 -> McFP5
  | 80 -> McFP6
  | 81 -> McFP7
  | 82 -> McK0
  | 83 -> McK1
  | 84 -> McK2
  | 85 -> McK3
  | 86 -> McK4
  | 87 -> McK5
  | 88 -> McK6
  | 89 -> McK7
  | 90 -> McMM0
  | 91 -> McMM1
  | 92 -> McMM2
  | 93 -> McMM3
  | 94 -> McMM4
  | 95 -> McMM5
  | 96 -> McMM6
  | 97 -> McMM7
  | 98 -> McR8
  | 99 -> McR9
  | 100 -> McR10
  | 101 -> McR11
  | 102 -> McR12
  | 103 -> McR13
  | 104 -> McR14
  | 105 -> McR15
  | 106 -> McST0
  | 107 -> McST1
  | 108 -> McST2
  | 109 -> McST3
  | 110 -> McST4
  | 111 -> McST5
  | 112 -> McST6
  | 113 -> McST7
  | 114 -> McXMM0
  | 115 -> McXMM1
  | 116 -> McXMM2
  | 117 -> McXMM3
  | 118 -> McXMM4
  | 119 -> McXMM5
  | 120 -> McXMM6
  | 121 -> McXMM7
  | 122 -> McXMM8
  | 123 -> McXMM9
  | 124 -> McXMM10
  | 125 -> McXMM11
  | 126 -> McXMM12
  | 127 -> McXMM13
  | 128 -> McXMM14
  | 129 -> McXMM15
  | 130 -> McXMM16
  | 131 -> McXMM17
  | 132 -> McXMM18
  | 133 -> McXMM19
  | 134 -> McXMM20
  | 135 -> McXMM21
  | 136 -> McXMM22
  | 137 -> McXMM23
  | 138 -> McXMM24
  | 139 -> McXMM25
  | 140 -> McXMM26
  | 141 -> McXMM27
  | 142 -> McXMM28
  | 143 -> McXMM29
  | 144 -> McXMM30
  | 145 -> McXMM31
  | 146 -> McYMM0
  | 147 -> McYMM1
  | 148 -> McYMM2
  | 149 -> McYMM3
  | 150 -> McYMM4
  | 151 -> McYMM5
  | 152 -> McYMM6
  | 153 -> McYMM7
  | 154 -> McYMM8
  | 155 -> McYMM9
  | 156 -> McYMM10
  | 157 -> McYMM11
  | 158 -> McYMM12
  | 159 -> McYMM13
  | 160 -> McYMM14
  | 161 -> McYMM15
  | 162 -> McYMM16
  | 163 -> McYMM17
  | 164 -> McYMM18
  | 165 -> McYMM19
  | 166 -> McYMM20
  | 167 -> McYMM21
  | 168 -> McYMM22
  | 169 -> McYMM23
  | 170 -> McYMM24
  | 171 -> McYMM25
  | 172 -> McYMM26
  | 173 -> McYMM27
  | 174 -> McYMM28
  | 175 -> McYMM29
  | 176 -> McYMM30
  | 177 -> McYMM31
  | 178 -> McZMM0
  | 179 -> McZMM1
  | 180 -> McZMM2
  | 181 -> McZMM3
  | 182 -> McZMM4
  | 183 -> McZMM5
  | 184 -> McZMM6
  | 185 -> McZMM7
  | 186 -> McZMM8
  | 187 -> McZMM9
  | 188 -> McZMM10
  | 189 -> McZMM11
  | 190 -> McZMM12
  | 191 -> McZMM13
  | 192 -> McZMM14
  | 193 -> McZMM15
  | 194 -> McZMM16
  | 195 -> McZMM17
  | 196 -> McZMM18
  | 197 -> McZMM19
  | 198 -> McZMM20
  | 199 -> McZMM21
  | 200 -> McZMM22
  | 201 -> McZMM23
  | 202 -> McZMM24
  | 203 -> McZMM25
  | 204 -> McZMM26
  | 205 -> McZMM27
  | 206 -> McZMM28
  | 207 -> McZMM29
  | 208 -> McZMM30
  | 209 -> McZMM31
  | 210 -> McR8B
  | 211 -> McR9B
  | 212 -> McR10B
  | 213 -> McR11B
  | 214 -> McR12B
  | 215 -> McR13B
  | 216 -> McR14B
  | 217 -> McR15B
  | 218 -> McR8D
  | 219 -> McR9D
  | 220 -> McR10D
  | 221 -> McR11D
  | 222 -> McR12D
  | 223 -> McR13D
  | 224 -> McR14D
  | 225 -> McR15D
  | 226 -> McR8W
  | 227 -> McR9W
  | 228 -> McR10W
  | 229 -> McR11W
  | 230 -> McR12W
  | 231 -> McR13W
  | 232 -> McR14W
  | 233 -> McR15W
  | i -> invalid_arg ("mcreg_of_int: " ^ string_of_int i)

let string_of_mcreg = function
  | McNoRegister -> "NoRegister"
  | McAH -> "AH"
  | McAL -> "AL"
  | McAX -> "AX"
  | McBH -> "BH"
  | McBL -> "BL"
  | McBP -> "BP"
  | McBPL -> "BPL"
  | McBX -> "BX"
  | McCH -> "CH"
  | McCL -> "CL"
  | McCS -> "CS"
  | McCX -> "CX"
  | McDH -> "DH"
  | McDI -> "DI"
  | McDIL -> "DIL"
  | McDL -> "DL"
  | McDS -> "DS"
  | McDX -> "DX"
  | McEAX -> "EAX"
  | McEBP -> "EBP"
  | McEBX -> "EBX"
  | McECX -> "ECX"
  | McEDI -> "EDI"
  | McEDX -> "EDX"
  | McEFLAGS -> "EFLAGS"
  | McEIP -> "EIP"
  | McEIZ -> "EIZ"
  | McES -> "ES"
  | McESI -> "ESI"
  | McESP -> "ESP"
  | McFPSW -> "FPSW"
  | McFS -> "FS"
  | McGS -> "GS"
  | McIP -> "IP"
  | McRAX -> "RAX"
  | McRBP -> "RBP"
  | McRBX -> "RBX"
  | McRCX -> "RCX"
  | McRDI -> "RDI"
  | McRDX -> "RDX"
  | McRIP -> "RIP"
  | McRIZ -> "RIZ"
  | McRSI -> "RSI"
  | McRSP -> "RSP"
  | McSI -> "SI"
  | McSIL -> "SIL"
  | McSP -> "SP"
  | McSPL -> "SPL"
  | McSS -> "SS"
  | McCR0 -> "CR0"
  | McCR1 -> "CR1"
  | McCR2 -> "CR2"
  | McCR3 -> "CR3"
  | McCR4 -> "CR4"
  | McCR5 -> "CR5"
  | McCR6 -> "CR6"
  | McCR7 -> "CR7"
  | McCR8 -> "CR8"
  | McCR9 -> "CR9"
  | McCR10 -> "CR10"
  | McCR11 -> "CR11"
  | McCR12 -> "CR12"
  | McCR13 -> "CR13"
  | McCR14 -> "CR14"
  | McCR15 -> "CR15"
  | McDR0 -> "DR0"
  | McDR1 -> "DR1"
  | McDR2 -> "DR2"
  | McDR3 -> "DR3"
  | McDR4 -> "DR4"
  | McDR5 -> "DR5"
  | McDR6 -> "DR6"
  | McDR7 -> "DR7"
  | McFP0 -> "FP0"
  | McFP1 -> "FP1"
  | McFP2 -> "FP2"
  | McFP3 -> "FP3"
  | McFP4 -> "FP4"
  | McFP5 -> "FP5"
  | McFP6 -> "FP6"
  | McFP7 -> "FP7"
  | McK0 -> "K0"
  | McK1 -> "K1"
  | McK2 -> "K2"
  | McK3 -> "K3"
  | McK4 -> "K4"
  | McK5 -> "K5"
  | McK6 -> "K6"
  | McK7 -> "K7"
  | McMM0 -> "MM0"
  | McMM1 -> "MM1"
  | McMM2 -> "MM2"
  | McMM3 -> "MM3"
  | McMM4 -> "MM4"
  | McMM5 -> "MM5"
  | McMM6 -> "MM6"
  | McMM7 -> "MM7"
  | McR8 -> "R8"
  | McR9 -> "R9"
  | McR10 -> "R10"
  | McR11 -> "R11"
  | McR12 -> "R12"
  | McR13 -> "R13"
  | McR14 -> "R14"
  | McR15 -> "R15"
  | McST0 -> "ST0"
  | McST1 -> "ST1"
  | McST2 -> "ST2"
  | McST3 -> "ST3"
  | McST4 -> "ST4"
  | McST5 -> "ST5"
  | McST6 -> "ST6"
  | McST7 -> "ST7"
  | McXMM0 -> "XMM0"
  | McXMM1 -> "XMM1"
  | McXMM2 -> "XMM2"
  | McXMM3 -> "XMM3"
  | McXMM4 -> "XMM4"
  | McXMM5 -> "XMM5"
  | McXMM6 -> "XMM6"
  | McXMM7 -> "XMM7"
  | McXMM8 -> "XMM8"
  | McXMM9 -> "XMM9"
  | McXMM10 -> "XMM10"
  | McXMM11 -> "XMM11"
  | McXMM12 -> "XMM12"
  | McXMM13 -> "XMM13"
  | McXMM14 -> "XMM14"
  | McXMM15 -> "XMM15"
  | McXMM16 -> "XMM16"
  | McXMM17 -> "XMM17"
  | McXMM18 -> "XMM18"
  | McXMM19 -> "XMM19"
  | McXMM20 -> "XMM20"
  | McXMM21 -> "XMM21"
  | McXMM22 -> "XMM22"
  | McXMM23 -> "XMM23"
  | McXMM24 -> "XMM24"
  | McXMM25 -> "XMM25"
  | McXMM26 -> "XMM26"
  | McXMM27 -> "XMM27"
  | McXMM28 -> "XMM28"
  | McXMM29 -> "XMM29"
  | McXMM30 -> "XMM30"
  | McXMM31 -> "XMM31"
  | McYMM0 -> "YMM0"
  | McYMM1 -> "YMM1"
  | McYMM2 -> "YMM2"
  | McYMM3 -> "YMM3"
  | McYMM4 -> "YMM4"
  | McYMM5 -> "YMM5"
  | McYMM6 -> "YMM6"
  | McYMM7 -> "YMM7"
  | McYMM8 -> "YMM8"
  | McYMM9 -> "YMM9"
  | McYMM10 -> "YMM10"
  | McYMM11 -> "YMM11"
  | McYMM12 -> "YMM12"
  | McYMM13 -> "YMM13"
  | McYMM14 -> "YMM14"
  | McYMM15 -> "YMM15"
  | McYMM16 -> "YMM16"
  | McYMM17 -> "YMM17"
  | McYMM18 -> "YMM18"
  | McYMM19 -> "YMM19"
  | McYMM20 -> "YMM20"
  | McYMM21 -> "YMM21"
  | McYMM22 -> "YMM22"
  | McYMM23 -> "YMM23"
  | McYMM24 -> "YMM24"
  | McYMM25 -> "YMM25"
  | McYMM26 -> "YMM26"
  | McYMM27 -> "YMM27"
  | McYMM28 -> "YMM28"
  | McYMM29 -> "YMM29"
  | McYMM30 -> "YMM30"
  | McYMM31 -> "YMM31"
  | McZMM0 -> "ZMM0"
  | McZMM1 -> "ZMM1"
  | McZMM2 -> "ZMM2"
  | McZMM3 -> "ZMM3"
  | McZMM4 -> "ZMM4"
  | McZMM5 -> "ZMM5"
  | McZMM6 -> "ZMM6"
  | McZMM7 -> "ZMM7"
  | McZMM8 -> "ZMM8"
  | McZMM9 -> "ZMM9"
  | McZMM10 -> "ZMM10"
  | McZMM11 -> "ZMM11"
  | McZMM12 -> "ZMM12"
  | McZMM13 -> "ZMM13"
  | McZMM14 -> "ZMM14"
  | McZMM15 -> "ZMM15"
  | McZMM16 -> "ZMM16"
  | McZMM17 -> "ZMM17"
  | McZMM18 -> "ZMM18"
  | McZMM19 -> "ZMM19"
  | McZMM20 -> "ZMM20"
  | McZMM21 -> "ZMM21"
  | McZMM22 -> "ZMM22"
  | McZMM23 -> "ZMM23"
  | McZMM24 -> "ZMM24"
  | McZMM25 -> "ZMM25"
  | McZMM26 -> "ZMM26"
  | McZMM27 -> "ZMM27"
  | McZMM28 -> "ZMM28"
  | McZMM29 -> "ZMM29"
  | McZMM30 -> "ZMM30"
  | McZMM31 -> "ZMM31"
  | McR8B -> "R8B"
  | McR9B -> "R9B"
  | McR10B -> "R10B"
  | McR11B -> "R11B"
  | McR12B -> "R12B"
  | McR13B -> "R13B"
  | McR14B -> "R14B"
  | McR15B -> "R15B"
  | McR8D -> "R8D"
  | McR9D -> "R9D"
  | McR10D -> "R10D"
  | McR11D -> "R11D"
  | McR12D -> "R12D"
  | McR13D -> "R13D"
  | McR14D -> "R14D"
  | McR15D -> "R15D"
  | McR8W -> "R8W"
  | McR9W -> "R9W"
  | McR10W -> "R10W"
  | McR11W -> "R11W"
  | McR12W -> "R12W"
  | McR13W -> "R13W"
  | McR14W -> "R14W"
  | McR15W -> "R15W"
