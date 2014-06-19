                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 10 17:37:56 2012
                              5 ;--------------------------------------------------------
                              6 	.module test_acc
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _ISR_ADC
                             14 	.globl _ISR_T3
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 	.area RSEG    (ABS,DATA)
   0000                      19 	.org 0x0000
                    0080     20 Ftest_acc$P0$0$0 == 0x0080
                    0080     21 _P0	=	0x0080
                    0081     22 Ftest_acc$SP$0$0 == 0x0081
                    0081     23 _SP	=	0x0081
                    0082     24 Ftest_acc$DPL0$0$0 == 0x0082
                    0082     25 _DPL0	=	0x0082
                    0083     26 Ftest_acc$DPH0$0$0 == 0x0083
                    0083     27 _DPH0	=	0x0083
                    0084     28 Ftest_acc$DPL1$0$0 == 0x0084
                    0084     29 _DPL1	=	0x0084
                    0085     30 Ftest_acc$DPH1$0$0 == 0x0085
                    0085     31 _DPH1	=	0x0085
                    0086     32 Ftest_acc$U0CSR$0$0 == 0x0086
                    0086     33 _U0CSR	=	0x0086
                    0087     34 Ftest_acc$PCON$0$0 == 0x0087
                    0087     35 _PCON	=	0x0087
                    0088     36 Ftest_acc$TCON$0$0 == 0x0088
                    0088     37 _TCON	=	0x0088
                    0089     38 Ftest_acc$P0IFG$0$0 == 0x0089
                    0089     39 _P0IFG	=	0x0089
                    008A     40 Ftest_acc$P1IFG$0$0 == 0x008a
                    008A     41 _P1IFG	=	0x008a
                    008B     42 Ftest_acc$P2IFG$0$0 == 0x008b
                    008B     43 _P2IFG	=	0x008b
                    008C     44 Ftest_acc$PICTL$0$0 == 0x008c
                    008C     45 _PICTL	=	0x008c
                    008D     46 Ftest_acc$P1IEN$0$0 == 0x008d
                    008D     47 _P1IEN	=	0x008d
                    008F     48 Ftest_acc$P0INP$0$0 == 0x008f
                    008F     49 _P0INP	=	0x008f
                    0090     50 Ftest_acc$P1$0$0 == 0x0090
                    0090     51 _P1	=	0x0090
                    0091     52 Ftest_acc$RFIM$0$0 == 0x0091
                    0091     53 _RFIM	=	0x0091
                    0092     54 Ftest_acc$DPS$0$0 == 0x0092
                    0092     55 _DPS	=	0x0092
                    0093     56 Ftest_acc$MPAGE$0$0 == 0x0093
                    0093     57 _MPAGE	=	0x0093
                    0095     58 Ftest_acc$ENDIAN$0$0 == 0x0095
                    0095     59 _ENDIAN	=	0x0095
                    0098     60 Ftest_acc$S0CON$0$0 == 0x0098
                    0098     61 _S0CON	=	0x0098
                    009A     62 Ftest_acc$IEN2$0$0 == 0x009a
                    009A     63 _IEN2	=	0x009a
                    009B     64 Ftest_acc$S1CON$0$0 == 0x009b
                    009B     65 _S1CON	=	0x009b
                    009C     66 Ftest_acc$T2CT$0$0 == 0x009c
                    009C     67 _T2CT	=	0x009c
                    009D     68 Ftest_acc$T2PR$0$0 == 0x009d
                    009D     69 _T2PR	=	0x009d
                    009E     70 Ftest_acc$T2CTL$0$0 == 0x009e
                    009E     71 _T2CTL	=	0x009e
                    00A0     72 Ftest_acc$P2$0$0 == 0x00a0
                    00A0     73 _P2	=	0x00a0
                    00A1     74 Ftest_acc$WORIRQ$0$0 == 0x00a1
                    00A1     75 _WORIRQ	=	0x00a1
                    00A2     76 Ftest_acc$WORCTRL$0$0 == 0x00a2
                    00A2     77 _WORCTRL	=	0x00a2
                    00A3     78 Ftest_acc$WOREVT0$0$0 == 0x00a3
                    00A3     79 _WOREVT0	=	0x00a3
                    00A4     80 Ftest_acc$WOREVT1$0$0 == 0x00a4
                    00A4     81 _WOREVT1	=	0x00a4
                    00A5     82 Ftest_acc$WORTIME0$0$0 == 0x00a5
                    00A5     83 _WORTIME0	=	0x00a5
                    00A6     84 Ftest_acc$WORTIME1$0$0 == 0x00a6
                    00A6     85 _WORTIME1	=	0x00a6
                    00A8     86 Ftest_acc$IEN0$0$0 == 0x00a8
                    00A8     87 _IEN0	=	0x00a8
                    00A9     88 Ftest_acc$IP0$0$0 == 0x00a9
                    00A9     89 _IP0	=	0x00a9
                    00AB     90 Ftest_acc$FWT$0$0 == 0x00ab
                    00AB     91 _FWT	=	0x00ab
                    00AC     92 Ftest_acc$FADDRL$0$0 == 0x00ac
                    00AC     93 _FADDRL	=	0x00ac
                    00AD     94 Ftest_acc$FADDRH$0$0 == 0x00ad
                    00AD     95 _FADDRH	=	0x00ad
                    00AE     96 Ftest_acc$FCTL$0$0 == 0x00ae
                    00AE     97 _FCTL	=	0x00ae
                    00AF     98 Ftest_acc$FWDATA$0$0 == 0x00af
                    00AF     99 _FWDATA	=	0x00af
                    00B1    100 Ftest_acc$ENCDI$0$0 == 0x00b1
                    00B1    101 _ENCDI	=	0x00b1
                    00B2    102 Ftest_acc$ENCDO$0$0 == 0x00b2
                    00B2    103 _ENCDO	=	0x00b2
                    00B3    104 Ftest_acc$ENCCS$0$0 == 0x00b3
                    00B3    105 _ENCCS	=	0x00b3
                    00B4    106 Ftest_acc$ADCCON1$0$0 == 0x00b4
                    00B4    107 _ADCCON1	=	0x00b4
                    00B5    108 Ftest_acc$ADCCON2$0$0 == 0x00b5
                    00B5    109 _ADCCON2	=	0x00b5
                    00B6    110 Ftest_acc$ADCCON3$0$0 == 0x00b6
                    00B6    111 _ADCCON3	=	0x00b6
                    00B8    112 Ftest_acc$IEN1$0$0 == 0x00b8
                    00B8    113 _IEN1	=	0x00b8
                    00B9    114 Ftest_acc$IP1$0$0 == 0x00b9
                    00B9    115 _IP1	=	0x00b9
                    00BA    116 Ftest_acc$ADCL$0$0 == 0x00ba
                    00BA    117 _ADCL	=	0x00ba
                    00BB    118 Ftest_acc$ADCH$0$0 == 0x00bb
                    00BB    119 _ADCH	=	0x00bb
                    00BC    120 Ftest_acc$RNDL$0$0 == 0x00bc
                    00BC    121 _RNDL	=	0x00bc
                    00BD    122 Ftest_acc$RNDH$0$0 == 0x00bd
                    00BD    123 _RNDH	=	0x00bd
                    00BE    124 Ftest_acc$SLEEP$0$0 == 0x00be
                    00BE    125 _SLEEP	=	0x00be
                    00C0    126 Ftest_acc$IRCON$0$0 == 0x00c0
                    00C0    127 _IRCON	=	0x00c0
                    00C1    128 Ftest_acc$U0DBUF$0$0 == 0x00c1
                    00C1    129 _U0DBUF	=	0x00c1
                    00C2    130 Ftest_acc$U0BAUD$0$0 == 0x00c2
                    00C2    131 _U0BAUD	=	0x00c2
                    00C4    132 Ftest_acc$U0UCR$0$0 == 0x00c4
                    00C4    133 _U0UCR	=	0x00c4
                    00C5    134 Ftest_acc$U0GCR$0$0 == 0x00c5
                    00C5    135 _U0GCR	=	0x00c5
                    00C6    136 Ftest_acc$CLKCON$0$0 == 0x00c6
                    00C6    137 _CLKCON	=	0x00c6
                    00C7    138 Ftest_acc$MEMCTR$0$0 == 0x00c7
                    00C7    139 _MEMCTR	=	0x00c7
                    00C9    140 Ftest_acc$WDCTL$0$0 == 0x00c9
                    00C9    141 _WDCTL	=	0x00c9
                    00CA    142 Ftest_acc$T3CNT$0$0 == 0x00ca
                    00CA    143 _T3CNT	=	0x00ca
                    00CB    144 Ftest_acc$T3CTL$0$0 == 0x00cb
                    00CB    145 _T3CTL	=	0x00cb
                    00CC    146 Ftest_acc$T3CCTL0$0$0 == 0x00cc
                    00CC    147 _T3CCTL0	=	0x00cc
                    00CD    148 Ftest_acc$T3CC0$0$0 == 0x00cd
                    00CD    149 _T3CC0	=	0x00cd
                    00CE    150 Ftest_acc$T3CCTL1$0$0 == 0x00ce
                    00CE    151 _T3CCTL1	=	0x00ce
                    00CF    152 Ftest_acc$T3CC1$0$0 == 0x00cf
                    00CF    153 _T3CC1	=	0x00cf
                    00D0    154 Ftest_acc$PSW$0$0 == 0x00d0
                    00D0    155 _PSW	=	0x00d0
                    00D1    156 Ftest_acc$DMAIRQ$0$0 == 0x00d1
                    00D1    157 _DMAIRQ	=	0x00d1
                    00D2    158 Ftest_acc$DMA1CFGL$0$0 == 0x00d2
                    00D2    159 _DMA1CFGL	=	0x00d2
                    00D3    160 Ftest_acc$DMA1CFGH$0$0 == 0x00d3
                    00D3    161 _DMA1CFGH	=	0x00d3
                    00D4    162 Ftest_acc$DMA0CFGL$0$0 == 0x00d4
                    00D4    163 _DMA0CFGL	=	0x00d4
                    00D5    164 Ftest_acc$DMA0CFGH$0$0 == 0x00d5
                    00D5    165 _DMA0CFGH	=	0x00d5
                    00D6    166 Ftest_acc$DMAARM$0$0 == 0x00d6
                    00D6    167 _DMAARM	=	0x00d6
                    00D7    168 Ftest_acc$DMAREQ$0$0 == 0x00d7
                    00D7    169 _DMAREQ	=	0x00d7
                    00D8    170 Ftest_acc$TIMIF$0$0 == 0x00d8
                    00D8    171 _TIMIF	=	0x00d8
                    00D9    172 Ftest_acc$RFD$0$0 == 0x00d9
                    00D9    173 _RFD	=	0x00d9
                    00DA    174 Ftest_acc$T1CC0L$0$0 == 0x00da
                    00DA    175 _T1CC0L	=	0x00da
                    00DB    176 Ftest_acc$T1CC0H$0$0 == 0x00db
                    00DB    177 _T1CC0H	=	0x00db
                    00DC    178 Ftest_acc$T1CC1L$0$0 == 0x00dc
                    00DC    179 _T1CC1L	=	0x00dc
                    00DD    180 Ftest_acc$T1CC1H$0$0 == 0x00dd
                    00DD    181 _T1CC1H	=	0x00dd
                    00DE    182 Ftest_acc$T1CC2L$0$0 == 0x00de
                    00DE    183 _T1CC2L	=	0x00de
                    00DF    184 Ftest_acc$T1CC2H$0$0 == 0x00df
                    00DF    185 _T1CC2H	=	0x00df
                    00E0    186 Ftest_acc$ACC$0$0 == 0x00e0
                    00E0    187 _ACC	=	0x00e0
                    00E1    188 Ftest_acc$RFST$0$0 == 0x00e1
                    00E1    189 _RFST	=	0x00e1
                    00E2    190 Ftest_acc$T1CNTL$0$0 == 0x00e2
                    00E2    191 _T1CNTL	=	0x00e2
                    00E3    192 Ftest_acc$T1CNTH$0$0 == 0x00e3
                    00E3    193 _T1CNTH	=	0x00e3
                    00E4    194 Ftest_acc$T1CTL$0$0 == 0x00e4
                    00E4    195 _T1CTL	=	0x00e4
                    00E5    196 Ftest_acc$T1CCTL0$0$0 == 0x00e5
                    00E5    197 _T1CCTL0	=	0x00e5
                    00E6    198 Ftest_acc$T1CCTL1$0$0 == 0x00e6
                    00E6    199 _T1CCTL1	=	0x00e6
                    00E7    200 Ftest_acc$T1CCTL2$0$0 == 0x00e7
                    00E7    201 _T1CCTL2	=	0x00e7
                    00E8    202 Ftest_acc$IRCON2$0$0 == 0x00e8
                    00E8    203 _IRCON2	=	0x00e8
                    00E9    204 Ftest_acc$RFIF$0$0 == 0x00e9
                    00E9    205 _RFIF	=	0x00e9
                    00EA    206 Ftest_acc$T4CNT$0$0 == 0x00ea
                    00EA    207 _T4CNT	=	0x00ea
                    00EB    208 Ftest_acc$T4CTL$0$0 == 0x00eb
                    00EB    209 _T4CTL	=	0x00eb
                    00EC    210 Ftest_acc$T4CCTL0$0$0 == 0x00ec
                    00EC    211 _T4CCTL0	=	0x00ec
                    00ED    212 Ftest_acc$T4CC0$0$0 == 0x00ed
                    00ED    213 _T4CC0	=	0x00ed
                    00EE    214 Ftest_acc$T4CCTL1$0$0 == 0x00ee
                    00EE    215 _T4CCTL1	=	0x00ee
                    00EF    216 Ftest_acc$T4CC1$0$0 == 0x00ef
                    00EF    217 _T4CC1	=	0x00ef
                    00F0    218 Ftest_acc$B$0$0 == 0x00f0
                    00F0    219 _B	=	0x00f0
                    00F1    220 Ftest_acc$PERCFG$0$0 == 0x00f1
                    00F1    221 _PERCFG	=	0x00f1
                    00F2    222 Ftest_acc$ADCCFG$0$0 == 0x00f2
                    00F2    223 _ADCCFG	=	0x00f2
                    00F3    224 Ftest_acc$P0SEL$0$0 == 0x00f3
                    00F3    225 _P0SEL	=	0x00f3
                    00F4    226 Ftest_acc$P1SEL$0$0 == 0x00f4
                    00F4    227 _P1SEL	=	0x00f4
                    00F5    228 Ftest_acc$P2SEL$0$0 == 0x00f5
                    00F5    229 _P2SEL	=	0x00f5
                    00F6    230 Ftest_acc$P1INP$0$0 == 0x00f6
                    00F6    231 _P1INP	=	0x00f6
                    00F7    232 Ftest_acc$P2INP$0$0 == 0x00f7
                    00F7    233 _P2INP	=	0x00f7
                    00F8    234 Ftest_acc$U1CSR$0$0 == 0x00f8
                    00F8    235 _U1CSR	=	0x00f8
                    00F9    236 Ftest_acc$U1DBUF$0$0 == 0x00f9
                    00F9    237 _U1DBUF	=	0x00f9
                    00FA    238 Ftest_acc$U1BAUD$0$0 == 0x00fa
                    00FA    239 _U1BAUD	=	0x00fa
                    00FB    240 Ftest_acc$U1UCR$0$0 == 0x00fb
                    00FB    241 _U1UCR	=	0x00fb
                    00FC    242 Ftest_acc$U1GCR$0$0 == 0x00fc
                    00FC    243 _U1GCR	=	0x00fc
                    00FD    244 Ftest_acc$P0DIR$0$0 == 0x00fd
                    00FD    245 _P0DIR	=	0x00fd
                    00FE    246 Ftest_acc$P1DIR$0$0 == 0x00fe
                    00FE    247 _P1DIR	=	0x00fe
                    00FF    248 Ftest_acc$P2DIR$0$0 == 0x00ff
                    00FF    249 _P2DIR	=	0x00ff
                    FFFFD5D4    250 Ftest_acc$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    251 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    252 Ftest_acc$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    253 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    254 Ftest_acc$FADDR$0$0 == 0xffffadac
                    FFFFADAC    255 _FADDR	=	0xffffadac
                    FFFFBBBA    256 Ftest_acc$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    257 _ADC	=	0xffffbbba
                            258 ;--------------------------------------------------------
                            259 ; special function bits
                            260 ;--------------------------------------------------------
                            261 	.area RSEG    (ABS,DATA)
   0000                     262 	.org 0x0000
                    0080    263 Ftest_acc$P0_0$0$0 == 0x0080
                    0080    264 _P0_0	=	0x0080
                    0081    265 Ftest_acc$P0_1$0$0 == 0x0081
                    0081    266 _P0_1	=	0x0081
                    0082    267 Ftest_acc$P0_2$0$0 == 0x0082
                    0082    268 _P0_2	=	0x0082
                    0083    269 Ftest_acc$P0_3$0$0 == 0x0083
                    0083    270 _P0_3	=	0x0083
                    0084    271 Ftest_acc$P0_4$0$0 == 0x0084
                    0084    272 _P0_4	=	0x0084
                    0085    273 Ftest_acc$P0_5$0$0 == 0x0085
                    0085    274 _P0_5	=	0x0085
                    0086    275 Ftest_acc$P0_6$0$0 == 0x0086
                    0086    276 _P0_6	=	0x0086
                    0087    277 Ftest_acc$P0_7$0$0 == 0x0087
                    0087    278 _P0_7	=	0x0087
                    0088    279 Ftest_acc$_TCON_0$0$0 == 0x0088
                    0088    280 __TCON_0	=	0x0088
                    0089    281 Ftest_acc$RFTXRXIF$0$0 == 0x0089
                    0089    282 _RFTXRXIF	=	0x0089
                    008A    283 Ftest_acc$_TCON_2$0$0 == 0x008a
                    008A    284 __TCON_2	=	0x008a
                    008B    285 Ftest_acc$URX0IF$0$0 == 0x008b
                    008B    286 _URX0IF	=	0x008b
                    008C    287 Ftest_acc$_TCON_4$0$0 == 0x008c
                    008C    288 __TCON_4	=	0x008c
                    008D    289 Ftest_acc$ADCIF$0$0 == 0x008d
                    008D    290 _ADCIF	=	0x008d
                    008E    291 Ftest_acc$_TCON_6$0$0 == 0x008e
                    008E    292 __TCON_6	=	0x008e
                    008F    293 Ftest_acc$URX1IF$0$0 == 0x008f
                    008F    294 _URX1IF	=	0x008f
                    0090    295 Ftest_acc$P1_0$0$0 == 0x0090
                    0090    296 _P1_0	=	0x0090
                    0091    297 Ftest_acc$P1_1$0$0 == 0x0091
                    0091    298 _P1_1	=	0x0091
                    0092    299 Ftest_acc$P1_2$0$0 == 0x0092
                    0092    300 _P1_2	=	0x0092
                    0093    301 Ftest_acc$P1_3$0$0 == 0x0093
                    0093    302 _P1_3	=	0x0093
                    0094    303 Ftest_acc$P1_4$0$0 == 0x0094
                    0094    304 _P1_4	=	0x0094
                    0095    305 Ftest_acc$P1_5$0$0 == 0x0095
                    0095    306 _P1_5	=	0x0095
                    0096    307 Ftest_acc$P1_6$0$0 == 0x0096
                    0096    308 _P1_6	=	0x0096
                    0097    309 Ftest_acc$P1_7$0$0 == 0x0097
                    0097    310 _P1_7	=	0x0097
                    0098    311 Ftest_acc$ENCIF_0$0$0 == 0x0098
                    0098    312 _ENCIF_0	=	0x0098
                    0099    313 Ftest_acc$ENCIF_1$0$0 == 0x0099
                    0099    314 _ENCIF_1	=	0x0099
                    009A    315 Ftest_acc$_SOCON2$0$0 == 0x009a
                    009A    316 __SOCON2	=	0x009a
                    009B    317 Ftest_acc$_SOCON3$0$0 == 0x009b
                    009B    318 __SOCON3	=	0x009b
                    009C    319 Ftest_acc$_SOCON4$0$0 == 0x009c
                    009C    320 __SOCON4	=	0x009c
                    009D    321 Ftest_acc$_SOCON5$0$0 == 0x009d
                    009D    322 __SOCON5	=	0x009d
                    009E    323 Ftest_acc$_SOCON6$0$0 == 0x009e
                    009E    324 __SOCON6	=	0x009e
                    009F    325 Ftest_acc$_SOCON7$0$0 == 0x009f
                    009F    326 __SOCON7	=	0x009f
                    00A0    327 Ftest_acc$P2_0$0$0 == 0x00a0
                    00A0    328 _P2_0	=	0x00a0
                    00A1    329 Ftest_acc$P2_1$0$0 == 0x00a1
                    00A1    330 _P2_1	=	0x00a1
                    00A2    331 Ftest_acc$P2_2$0$0 == 0x00a2
                    00A2    332 _P2_2	=	0x00a2
                    00A3    333 Ftest_acc$P2_3$0$0 == 0x00a3
                    00A3    334 _P2_3	=	0x00a3
                    00A4    335 Ftest_acc$P2_4$0$0 == 0x00a4
                    00A4    336 _P2_4	=	0x00a4
                    00A5    337 Ftest_acc$P2_5$0$0 == 0x00a5
                    00A5    338 _P2_5	=	0x00a5
                    00A6    339 Ftest_acc$P2_6$0$0 == 0x00a6
                    00A6    340 _P2_6	=	0x00a6
                    00A7    341 Ftest_acc$P2_7$0$0 == 0x00a7
                    00A7    342 _P2_7	=	0x00a7
                    00A8    343 Ftest_acc$RFTXRXIE$0$0 == 0x00a8
                    00A8    344 _RFTXRXIE	=	0x00a8
                    00A9    345 Ftest_acc$ADCIE$0$0 == 0x00a9
                    00A9    346 _ADCIE	=	0x00a9
                    00AA    347 Ftest_acc$URX0IE$0$0 == 0x00aa
                    00AA    348 _URX0IE	=	0x00aa
                    00AB    349 Ftest_acc$URX1IE$0$0 == 0x00ab
                    00AB    350 _URX1IE	=	0x00ab
                    00AC    351 Ftest_acc$ENCIE$0$0 == 0x00ac
                    00AC    352 _ENCIE	=	0x00ac
                    00AD    353 Ftest_acc$STIE$0$0 == 0x00ad
                    00AD    354 _STIE	=	0x00ad
                    00AE    355 Ftest_acc$_IEN06$0$0 == 0x00ae
                    00AE    356 __IEN06	=	0x00ae
                    00AF    357 Ftest_acc$EA$0$0 == 0x00af
                    00AF    358 _EA	=	0x00af
                    00B8    359 Ftest_acc$DMAIE$0$0 == 0x00b8
                    00B8    360 _DMAIE	=	0x00b8
                    00B9    361 Ftest_acc$T1IE$0$0 == 0x00b9
                    00B9    362 _T1IE	=	0x00b9
                    00BA    363 Ftest_acc$T2IE$0$0 == 0x00ba
                    00BA    364 _T2IE	=	0x00ba
                    00BB    365 Ftest_acc$T3IE$0$0 == 0x00bb
                    00BB    366 _T3IE	=	0x00bb
                    00BC    367 Ftest_acc$T4IE$0$0 == 0x00bc
                    00BC    368 _T4IE	=	0x00bc
                    00BD    369 Ftest_acc$P0IE$0$0 == 0x00bd
                    00BD    370 _P0IE	=	0x00bd
                    00BE    371 Ftest_acc$_IEN16$0$0 == 0x00be
                    00BE    372 __IEN16	=	0x00be
                    00BF    373 Ftest_acc$_IEN17$0$0 == 0x00bf
                    00BF    374 __IEN17	=	0x00bf
                    00C0    375 Ftest_acc$DMAIF$0$0 == 0x00c0
                    00C0    376 _DMAIF	=	0x00c0
                    00C1    377 Ftest_acc$T1IF$0$0 == 0x00c1
                    00C1    378 _T1IF	=	0x00c1
                    00C2    379 Ftest_acc$T2IF$0$0 == 0x00c2
                    00C2    380 _T2IF	=	0x00c2
                    00C3    381 Ftest_acc$T3IF$0$0 == 0x00c3
                    00C3    382 _T3IF	=	0x00c3
                    00C4    383 Ftest_acc$T4IF$0$0 == 0x00c4
                    00C4    384 _T4IF	=	0x00c4
                    00C5    385 Ftest_acc$P0IF$0$0 == 0x00c5
                    00C5    386 _P0IF	=	0x00c5
                    00C6    387 Ftest_acc$_IRCON6$0$0 == 0x00c6
                    00C6    388 __IRCON6	=	0x00c6
                    00C7    389 Ftest_acc$STIF$0$0 == 0x00c7
                    00C7    390 _STIF	=	0x00c7
                    00D0    391 Ftest_acc$P$0$0 == 0x00d0
                    00D0    392 _P	=	0x00d0
                    00D1    393 Ftest_acc$F1$0$0 == 0x00d1
                    00D1    394 _F1	=	0x00d1
                    00D2    395 Ftest_acc$OV$0$0 == 0x00d2
                    00D2    396 _OV	=	0x00d2
                    00D3    397 Ftest_acc$RS0$0$0 == 0x00d3
                    00D3    398 _RS0	=	0x00d3
                    00D4    399 Ftest_acc$RS1$0$0 == 0x00d4
                    00D4    400 _RS1	=	0x00d4
                    00D5    401 Ftest_acc$F0$0$0 == 0x00d5
                    00D5    402 _F0	=	0x00d5
                    00D6    403 Ftest_acc$AC$0$0 == 0x00d6
                    00D6    404 _AC	=	0x00d6
                    00D7    405 Ftest_acc$CY$0$0 == 0x00d7
                    00D7    406 _CY	=	0x00d7
                    00D8    407 Ftest_acc$T3OVFIF$0$0 == 0x00d8
                    00D8    408 _T3OVFIF	=	0x00d8
                    00D9    409 Ftest_acc$T3CH0IF$0$0 == 0x00d9
                    00D9    410 _T3CH0IF	=	0x00d9
                    00DA    411 Ftest_acc$T3CH1IF$0$0 == 0x00da
                    00DA    412 _T3CH1IF	=	0x00da
                    00DB    413 Ftest_acc$T4OVFIF$0$0 == 0x00db
                    00DB    414 _T4OVFIF	=	0x00db
                    00DC    415 Ftest_acc$T4CH0IF$0$0 == 0x00dc
                    00DC    416 _T4CH0IF	=	0x00dc
                    00DD    417 Ftest_acc$T4CH1IF$0$0 == 0x00dd
                    00DD    418 _T4CH1IF	=	0x00dd
                    00DE    419 Ftest_acc$OVFIM$0$0 == 0x00de
                    00DE    420 _OVFIM	=	0x00de
                    00DF    421 Ftest_acc$_TIMIF7$0$0 == 0x00df
                    00DF    422 __TIMIF7	=	0x00df
                    00E0    423 Ftest_acc$ACC_0$0$0 == 0x00e0
                    00E0    424 _ACC_0	=	0x00e0
                    00E1    425 Ftest_acc$ACC_1$0$0 == 0x00e1
                    00E1    426 _ACC_1	=	0x00e1
                    00E2    427 Ftest_acc$ACC_2$0$0 == 0x00e2
                    00E2    428 _ACC_2	=	0x00e2
                    00E3    429 Ftest_acc$ACC_3$0$0 == 0x00e3
                    00E3    430 _ACC_3	=	0x00e3
                    00E4    431 Ftest_acc$ACC_4$0$0 == 0x00e4
                    00E4    432 _ACC_4	=	0x00e4
                    00E5    433 Ftest_acc$ACC_5$0$0 == 0x00e5
                    00E5    434 _ACC_5	=	0x00e5
                    00E6    435 Ftest_acc$ACC_6$0$0 == 0x00e6
                    00E6    436 _ACC_6	=	0x00e6
                    00E7    437 Ftest_acc$ACC_7$0$0 == 0x00e7
                    00E7    438 _ACC_7	=	0x00e7
                    00E8    439 Ftest_acc$P2IF$0$0 == 0x00e8
                    00E8    440 _P2IF	=	0x00e8
                    00E9    441 Ftest_acc$UTX0IF$0$0 == 0x00e9
                    00E9    442 _UTX0IF	=	0x00e9
                    00EA    443 Ftest_acc$UTX1IF$0$0 == 0x00ea
                    00EA    444 _UTX1IF	=	0x00ea
                    00EB    445 Ftest_acc$P1IF$0$0 == 0x00eb
                    00EB    446 _P1IF	=	0x00eb
                    00EC    447 Ftest_acc$WDTIF$0$0 == 0x00ec
                    00EC    448 _WDTIF	=	0x00ec
                    00ED    449 Ftest_acc$_IRCON25$0$0 == 0x00ed
                    00ED    450 __IRCON25	=	0x00ed
                    00EE    451 Ftest_acc$_IRCON26$0$0 == 0x00ee
                    00EE    452 __IRCON26	=	0x00ee
                    00EF    453 Ftest_acc$_IRCON27$0$0 == 0x00ef
                    00EF    454 __IRCON27	=	0x00ef
                    00F0    455 Ftest_acc$B_0$0$0 == 0x00f0
                    00F0    456 _B_0	=	0x00f0
                    00F1    457 Ftest_acc$B_1$0$0 == 0x00f1
                    00F1    458 _B_1	=	0x00f1
                    00F2    459 Ftest_acc$B_2$0$0 == 0x00f2
                    00F2    460 _B_2	=	0x00f2
                    00F3    461 Ftest_acc$B_3$0$0 == 0x00f3
                    00F3    462 _B_3	=	0x00f3
                    00F4    463 Ftest_acc$B_4$0$0 == 0x00f4
                    00F4    464 _B_4	=	0x00f4
                    00F5    465 Ftest_acc$B_5$0$0 == 0x00f5
                    00F5    466 _B_5	=	0x00f5
                    00F6    467 Ftest_acc$B_6$0$0 == 0x00f6
                    00F6    468 _B_6	=	0x00f6
                    00F7    469 Ftest_acc$B_7$0$0 == 0x00f7
                    00F7    470 _B_7	=	0x00f7
                    00F8    471 Ftest_acc$U1ACTIVE$0$0 == 0x00f8
                    00F8    472 _U1ACTIVE	=	0x00f8
                    00F9    473 Ftest_acc$U1TX_BYTE$0$0 == 0x00f9
                    00F9    474 _U1TX_BYTE	=	0x00f9
                    00FA    475 Ftest_acc$U1RX_BYTE$0$0 == 0x00fa
                    00FA    476 _U1RX_BYTE	=	0x00fa
                    00FB    477 Ftest_acc$U1ERR$0$0 == 0x00fb
                    00FB    478 _U1ERR	=	0x00fb
                    00FC    479 Ftest_acc$U1FE$0$0 == 0x00fc
                    00FC    480 _U1FE	=	0x00fc
                    00FD    481 Ftest_acc$U1SLAVE$0$0 == 0x00fd
                    00FD    482 _U1SLAVE	=	0x00fd
                    00FE    483 Ftest_acc$U1RE$0$0 == 0x00fe
                    00FE    484 _U1RE	=	0x00fe
                    00FF    485 Ftest_acc$U1MODE$0$0 == 0x00ff
                    00FF    486 _U1MODE	=	0x00ff
                            487 ;--------------------------------------------------------
                            488 ; overlayable register banks
                            489 ;--------------------------------------------------------
                            490 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     491 	.ds 8
                            492 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     493 	.ds 8
                            494 	.area REG_BANK_3	(REL,OVR,DATA)
   0018                     495 	.ds 8
                            496 ;--------------------------------------------------------
                            497 ; internal ram data
                            498 ;--------------------------------------------------------
                            499 	.area DSEG    (DATA)
                    0000    500 Ftest_acc$accSample$0$0==.
   0023                     501 _accSample:
   0023                     502 	.ds 2
                            503 ;--------------------------------------------------------
                            504 ; overlayable items in internal ram 
                            505 ;--------------------------------------------------------
                            506 	.area OSEG    (OVR,DATA)
                            507 ;--------------------------------------------------------
                            508 ; Stack segment in internal ram 
                            509 ;--------------------------------------------------------
                            510 	.area	SSEG	(DATA)
   002F                     511 __start__stack:
   002F                     512 	.ds	1
                            513 
                            514 ;--------------------------------------------------------
                            515 ; indirectly addressable internal ram data
                            516 ;--------------------------------------------------------
                            517 	.area ISEG    (DATA)
                            518 ;--------------------------------------------------------
                            519 ; absolute internal ram data
                            520 ;--------------------------------------------------------
                            521 	.area IABS    (ABS,DATA)
                            522 	.area IABS    (ABS,DATA)
                            523 ;--------------------------------------------------------
                            524 ; bit data
                            525 ;--------------------------------------------------------
                            526 	.area BSEG    (BIT)
                    0000    527 Ftest_acc$initComplete$0$0==.
   0000                     528 _initComplete:
   0000                     529 	.ds 1
                            530 ;--------------------------------------------------------
                            531 ; paged external ram data
                            532 ;--------------------------------------------------------
                            533 	.area PSEG    (PAG,XDATA)
                    0000    534 Ftest_acc$counter$0$0==.
   F000                     535 _counter:
   F000                     536 	.ds 2
                            537 ;--------------------------------------------------------
                            538 ; external ram data
                            539 ;--------------------------------------------------------
                            540 	.area XSEG    (XDATA)
                    DF00    541 Ftest_acc$SYNC1$0$0 == 0xdf00
                    DF00    542 _SYNC1	=	0xdf00
                    DF01    543 Ftest_acc$SYNC0$0$0 == 0xdf01
                    DF01    544 _SYNC0	=	0xdf01
                    DF02    545 Ftest_acc$PKTLEN$0$0 == 0xdf02
                    DF02    546 _PKTLEN	=	0xdf02
                    DF03    547 Ftest_acc$PKTCTRL1$0$0 == 0xdf03
                    DF03    548 _PKTCTRL1	=	0xdf03
                    DF04    549 Ftest_acc$PKTCTRL0$0$0 == 0xdf04
                    DF04    550 _PKTCTRL0	=	0xdf04
                    DF05    551 Ftest_acc$ADDR$0$0 == 0xdf05
                    DF05    552 _ADDR	=	0xdf05
                    DF06    553 Ftest_acc$CHANNR$0$0 == 0xdf06
                    DF06    554 _CHANNR	=	0xdf06
                    DF07    555 Ftest_acc$FSCTRL1$0$0 == 0xdf07
                    DF07    556 _FSCTRL1	=	0xdf07
                    DF08    557 Ftest_acc$FSCTRL0$0$0 == 0xdf08
                    DF08    558 _FSCTRL0	=	0xdf08
                    DF09    559 Ftest_acc$FREQ2$0$0 == 0xdf09
                    DF09    560 _FREQ2	=	0xdf09
                    DF0A    561 Ftest_acc$FREQ1$0$0 == 0xdf0a
                    DF0A    562 _FREQ1	=	0xdf0a
                    DF0B    563 Ftest_acc$FREQ0$0$0 == 0xdf0b
                    DF0B    564 _FREQ0	=	0xdf0b
                    DF0C    565 Ftest_acc$MDMCFG4$0$0 == 0xdf0c
                    DF0C    566 _MDMCFG4	=	0xdf0c
                    DF0D    567 Ftest_acc$MDMCFG3$0$0 == 0xdf0d
                    DF0D    568 _MDMCFG3	=	0xdf0d
                    DF0E    569 Ftest_acc$MDMCFG2$0$0 == 0xdf0e
                    DF0E    570 _MDMCFG2	=	0xdf0e
                    DF0F    571 Ftest_acc$MDMCFG1$0$0 == 0xdf0f
                    DF0F    572 _MDMCFG1	=	0xdf0f
                    DF10    573 Ftest_acc$MDMCFG0$0$0 == 0xdf10
                    DF10    574 _MDMCFG0	=	0xdf10
                    DF11    575 Ftest_acc$DEVIATN$0$0 == 0xdf11
                    DF11    576 _DEVIATN	=	0xdf11
                    DF12    577 Ftest_acc$MCSM2$0$0 == 0xdf12
                    DF12    578 _MCSM2	=	0xdf12
                    DF13    579 Ftest_acc$MCSM1$0$0 == 0xdf13
                    DF13    580 _MCSM1	=	0xdf13
                    DF14    581 Ftest_acc$MCSM0$0$0 == 0xdf14
                    DF14    582 _MCSM0	=	0xdf14
                    DF15    583 Ftest_acc$FOCCFG$0$0 == 0xdf15
                    DF15    584 _FOCCFG	=	0xdf15
                    DF16    585 Ftest_acc$BSCFG$0$0 == 0xdf16
                    DF16    586 _BSCFG	=	0xdf16
                    DF17    587 Ftest_acc$AGCCTRL2$0$0 == 0xdf17
                    DF17    588 _AGCCTRL2	=	0xdf17
                    DF18    589 Ftest_acc$AGCCTRL1$0$0 == 0xdf18
                    DF18    590 _AGCCTRL1	=	0xdf18
                    DF19    591 Ftest_acc$AGCCTRL0$0$0 == 0xdf19
                    DF19    592 _AGCCTRL0	=	0xdf19
                    DF1A    593 Ftest_acc$FREND1$0$0 == 0xdf1a
                    DF1A    594 _FREND1	=	0xdf1a
                    DF1B    595 Ftest_acc$FREND0$0$0 == 0xdf1b
                    DF1B    596 _FREND0	=	0xdf1b
                    DF1C    597 Ftest_acc$FSCAL3$0$0 == 0xdf1c
                    DF1C    598 _FSCAL3	=	0xdf1c
                    DF1D    599 Ftest_acc$FSCAL2$0$0 == 0xdf1d
                    DF1D    600 _FSCAL2	=	0xdf1d
                    DF1E    601 Ftest_acc$FSCAL1$0$0 == 0xdf1e
                    DF1E    602 _FSCAL1	=	0xdf1e
                    DF1F    603 Ftest_acc$FSCAL0$0$0 == 0xdf1f
                    DF1F    604 _FSCAL0	=	0xdf1f
                    DF23    605 Ftest_acc$TEST2$0$0 == 0xdf23
                    DF23    606 _TEST2	=	0xdf23
                    DF24    607 Ftest_acc$TEST1$0$0 == 0xdf24
                    DF24    608 _TEST1	=	0xdf24
                    DF25    609 Ftest_acc$TEST0$0$0 == 0xdf25
                    DF25    610 _TEST0	=	0xdf25
                    DF2E    611 Ftest_acc$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    612 _PA_TABLE0	=	0xdf2e
                    DF2F    613 Ftest_acc$IOCFG2$0$0 == 0xdf2f
                    DF2F    614 _IOCFG2	=	0xdf2f
                    DF30    615 Ftest_acc$IOCFG1$0$0 == 0xdf30
                    DF30    616 _IOCFG1	=	0xdf30
                    DF31    617 Ftest_acc$IOCFG0$0$0 == 0xdf31
                    DF31    618 _IOCFG0	=	0xdf31
                    DF36    619 Ftest_acc$PARTNUM$0$0 == 0xdf36
                    DF36    620 _PARTNUM	=	0xdf36
                    DF37    621 Ftest_acc$VERSION$0$0 == 0xdf37
                    DF37    622 _VERSION	=	0xdf37
                    DF38    623 Ftest_acc$FREQEST$0$0 == 0xdf38
                    DF38    624 _FREQEST	=	0xdf38
                    DF39    625 Ftest_acc$LQI$0$0 == 0xdf39
                    DF39    626 _LQI	=	0xdf39
                    DF3A    627 Ftest_acc$RSSI$0$0 == 0xdf3a
                    DF3A    628 _RSSI	=	0xdf3a
                    DF3B    629 Ftest_acc$MARCSTATE$0$0 == 0xdf3b
                    DF3B    630 _MARCSTATE	=	0xdf3b
                    DF3C    631 Ftest_acc$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    632 _PKTSTATUS	=	0xdf3c
                    DF3D    633 Ftest_acc$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    634 _VCO_VC_DAC	=	0xdf3d
                    DF40    635 Ftest_acc$I2SCFG0$0$0 == 0xdf40
                    DF40    636 _I2SCFG0	=	0xdf40
                    DF41    637 Ftest_acc$I2SCFG1$0$0 == 0xdf41
                    DF41    638 _I2SCFG1	=	0xdf41
                    DF42    639 Ftest_acc$I2SDATL$0$0 == 0xdf42
                    DF42    640 _I2SDATL	=	0xdf42
                    DF43    641 Ftest_acc$I2SDATH$0$0 == 0xdf43
                    DF43    642 _I2SDATH	=	0xdf43
                    DF44    643 Ftest_acc$I2SWCNT$0$0 == 0xdf44
                    DF44    644 _I2SWCNT	=	0xdf44
                    DF45    645 Ftest_acc$I2SSTAT$0$0 == 0xdf45
                    DF45    646 _I2SSTAT	=	0xdf45
                    DF46    647 Ftest_acc$I2SCLKF0$0$0 == 0xdf46
                    DF46    648 _I2SCLKF0	=	0xdf46
                    DF47    649 Ftest_acc$I2SCLKF1$0$0 == 0xdf47
                    DF47    650 _I2SCLKF1	=	0xdf47
                    DF48    651 Ftest_acc$I2SCLKF2$0$0 == 0xdf48
                    DF48    652 _I2SCLKF2	=	0xdf48
                    DE00    653 Ftest_acc$USBADDR$0$0 == 0xde00
                    DE00    654 _USBADDR	=	0xde00
                    DE01    655 Ftest_acc$USBPOW$0$0 == 0xde01
                    DE01    656 _USBPOW	=	0xde01
                    DE02    657 Ftest_acc$USBIIF$0$0 == 0xde02
                    DE02    658 _USBIIF	=	0xde02
                    DE04    659 Ftest_acc$USBOIF$0$0 == 0xde04
                    DE04    660 _USBOIF	=	0xde04
                    DE06    661 Ftest_acc$USBCIF$0$0 == 0xde06
                    DE06    662 _USBCIF	=	0xde06
                    DE07    663 Ftest_acc$USBIIE$0$0 == 0xde07
                    DE07    664 _USBIIE	=	0xde07
                    DE09    665 Ftest_acc$USBOIE$0$0 == 0xde09
                    DE09    666 _USBOIE	=	0xde09
                    DE0B    667 Ftest_acc$USBCIE$0$0 == 0xde0b
                    DE0B    668 _USBCIE	=	0xde0b
                    DE0C    669 Ftest_acc$USBFRML$0$0 == 0xde0c
                    DE0C    670 _USBFRML	=	0xde0c
                    DE0D    671 Ftest_acc$USBFRMH$0$0 == 0xde0d
                    DE0D    672 _USBFRMH	=	0xde0d
                    DE0E    673 Ftest_acc$USBINDEX$0$0 == 0xde0e
                    DE0E    674 _USBINDEX	=	0xde0e
                    DE10    675 Ftest_acc$USBMAXI$0$0 == 0xde10
                    DE10    676 _USBMAXI	=	0xde10
                    DE11    677 Ftest_acc$USBCSIL$0$0 == 0xde11
                    DE11    678 _USBCSIL	=	0xde11
                    DE12    679 Ftest_acc$USBCSIH$0$0 == 0xde12
                    DE12    680 _USBCSIH	=	0xde12
                    DE13    681 Ftest_acc$USBMAXO$0$0 == 0xde13
                    DE13    682 _USBMAXO	=	0xde13
                    DE14    683 Ftest_acc$USBCSOL$0$0 == 0xde14
                    DE14    684 _USBCSOL	=	0xde14
                    DE15    685 Ftest_acc$USBCSOH$0$0 == 0xde15
                    DE15    686 _USBCSOH	=	0xde15
                    DE16    687 Ftest_acc$USBCNTL$0$0 == 0xde16
                    DE16    688 _USBCNTL	=	0xde16
                    DE17    689 Ftest_acc$USBCNTH$0$0 == 0xde17
                    DE17    690 _USBCNTH	=	0xde17
                    DE20    691 Ftest_acc$USBF0$0$0 == 0xde20
                    DE20    692 _USBF0	=	0xde20
                    DE22    693 Ftest_acc$USBF1$0$0 == 0xde22
                    DE22    694 _USBF1	=	0xde22
                    DE24    695 Ftest_acc$USBF2$0$0 == 0xde24
                    DE24    696 _USBF2	=	0xde24
                    DE26    697 Ftest_acc$USBF3$0$0 == 0xde26
                    DE26    698 _USBF3	=	0xde26
                    DE28    699 Ftest_acc$USBF4$0$0 == 0xde28
                    DE28    700 _USBF4	=	0xde28
                    DE2A    701 Ftest_acc$USBF5$0$0 == 0xde2a
                    DE2A    702 _USBF5	=	0xde2a
                    0000    703 Ftest_acc$operationalTimeStamp$0$0==.
   F042                     704 _operationalTimeStamp:
   F042                     705 	.ds 4
                    0004    706 LreportResults$buffer$2$2==.
   F046                     707 _reportResults_buffer_2_2:
   F046                     708 	.ds 32
                            709 ;--------------------------------------------------------
                            710 ; absolute external ram data
                            711 ;--------------------------------------------------------
                            712 	.area XABS    (ABS,XDATA)
                            713 ;--------------------------------------------------------
                            714 ; external initialized ram data
                            715 ;--------------------------------------------------------
                            716 	.area XISEG   (XDATA)
                            717 	.area HOME    (CODE)
                            718 	.area GSINIT0 (CODE)
                            719 	.area GSINIT1 (CODE)
                            720 	.area GSINIT2 (CODE)
                            721 	.area GSINIT3 (CODE)
                            722 	.area GSINIT4 (CODE)
                            723 	.area GSINIT5 (CODE)
                            724 	.area GSINIT  (CODE)
                            725 	.area GSFINAL (CODE)
                            726 	.area CSEG    (CODE)
                            727 ;--------------------------------------------------------
                            728 ; interrupt vector 
                            729 ;--------------------------------------------------------
                            730 	.area HOME    (CODE)
   0400                     731 __interrupt_vect:
   0400 02 04 6D            732 	ljmp	__sdcc_gsinit_startup
   0403 32                  733 	reti
   0404                     734 	.ds	7
   040B 02 05 0F            735 	ljmp	_ISR_ADC
   040E                     736 	.ds	5
   0413 32                  737 	reti
   0414                     738 	.ds	7
   041B 32                  739 	reti
   041C                     740 	.ds	7
   0423 32                  741 	reti
   0424                     742 	.ds	7
   042B 32                  743 	reti
   042C                     744 	.ds	7
   0433 32                  745 	reti
   0434                     746 	.ds	7
   043B 32                  747 	reti
   043C                     748 	.ds	7
   0443 32                  749 	reti
   0444                     750 	.ds	7
   044B 32                  751 	reti
   044C                     752 	.ds	7
   0453 32                  753 	reti
   0454                     754 	.ds	7
   045B 02 04 FD            755 	ljmp	_ISR_T3
   045E                     756 	.ds	5
   0463 02 06 65            757 	ljmp	_ISR_T4
                            758 ;--------------------------------------------------------
                            759 ; global & static initialisations
                            760 ;--------------------------------------------------------
                            761 	.area HOME    (CODE)
                            762 	.area GSINIT  (CODE)
                            763 	.area GSFINAL (CODE)
                            764 	.area GSINIT  (CODE)
                            765 	.globl __sdcc_gsinit_startup
                            766 	.globl __sdcc_program_startup
                            767 	.globl __start__stack
                            768 	.globl __mcs51_genXINIT
                            769 	.globl __mcs51_genXRAMCLEAR
                            770 	.globl __mcs51_genRAMCLEAR
                            771 	.area GSFINAL (CODE)
   04FA 02 04 66            772 	ljmp	__sdcc_program_startup
                            773 ;--------------------------------------------------------
                            774 ; Home
                            775 ;--------------------------------------------------------
                            776 	.area HOME    (CODE)
                            777 	.area HOME    (CODE)
   0466                     778 __sdcc_program_startup:
   0466 12 05 D8            779 	lcall	_main
                            780 ;	return from main will lock up
   0469 80 FE               781 	sjmp .
                            782 ;--------------------------------------------------------
                            783 ; code
                            784 ;--------------------------------------------------------
                            785 	.area CSEG    (CODE)
                            786 ;------------------------------------------------------------
                            787 ;Allocation info for local variables in function 'ISR_T3'
                            788 ;------------------------------------------------------------
                            789 ;------------------------------------------------------------
                    0000    790 	G$ISR_T3$0$0 ==.
                    0000    791 	C$test_acc.c$294$0$0 ==.
                            792 ;	src/test_acc/test_acc.c:294: ISR(T3, 3) {
                            793 ;	-----------------------------------------
                            794 ;	 function ISR_T3
                            795 ;	-----------------------------------------
   04FD                     796 _ISR_T3:
                    001A    797 	ar2 = 0x1a
                    001B    798 	ar3 = 0x1b
                    001C    799 	ar4 = 0x1c
                    001D    800 	ar5 = 0x1d
                    001E    801 	ar6 = 0x1e
                    001F    802 	ar7 = 0x1f
                    0018    803 	ar0 = 0x18
                    0019    804 	ar1 = 0x19
   04FD C0 D0               805 	push	psw
   04FF 75 D0 18            806 	mov	psw,#0x18
                    0005    807 	C$test_acc.c$298$1$1 ==.
                            808 ;	src/test_acc/test_acc.c:298: T3IE = 0;
   0502 C2 BB               809 	clr	_T3IE
                    0007    810 	C$test_acc.c$300$1$1 ==.
                            811 ;	src/test_acc/test_acc.c:300: if(initComplete) {
   0504 30 00 03            812 	jnb	_initComplete,00102$
                    000A    813 	C$test_acc.c$304$2$2 ==.
                            814 ;	src/test_acc/test_acc.c:304: ADCCON3 = 0b10100001;
   0507 75 B6 A1            815 	mov	_ADCCON3,#0xA1
   050A                     816 00102$:
                    000D    817 	C$test_acc.c$308$1$1 ==.
                            818 ;	src/test_acc/test_acc.c:308: T3IE = 1;
   050A D2 BB               819 	setb	_T3IE
   050C D0 D0               820 	pop	psw
                    0011    821 	C$test_acc.c$309$1$1 ==.
                    0011    822 	XG$ISR_T3$0$0 ==.
   050E 32                  823 	reti
                            824 ;	eliminated unneeded push/pop dpl
                            825 ;	eliminated unneeded push/pop dph
                            826 ;	eliminated unneeded push/pop b
                            827 ;	eliminated unneeded push/pop acc
                            828 ;------------------------------------------------------------
                            829 ;Allocation info for local variables in function 'ISR_ADC'
                            830 ;------------------------------------------------------------
                            831 ;------------------------------------------------------------
                    0012    832 	G$ISR_ADC$0$0 ==.
                    0012    833 	C$test_acc.c$327$1$1 ==.
                            834 ;	src/test_acc/test_acc.c:327: ISR(ADC, 2)
                            835 ;	-----------------------------------------
                            836 ;	 function ISR_ADC
                            837 ;	-----------------------------------------
   050F                     838 _ISR_ADC:
                    0012    839 	ar2 = 0x12
                    0013    840 	ar3 = 0x13
                    0014    841 	ar4 = 0x14
                    0015    842 	ar5 = 0x15
                    0016    843 	ar6 = 0x16
                    0017    844 	ar7 = 0x17
                    0010    845 	ar0 = 0x10
                    0011    846 	ar1 = 0x11
   050F C0 E0               847 	push	acc
   0511 C0 D0               848 	push	psw
   0513 75 D0 10            849 	mov	psw,#0x10
                    0019    850 	C$test_acc.c$331$1$1 ==.
                            851 ;	src/test_acc/test_acc.c:331: ADCIE = 0;
   0516 C2 A9               852 	clr	_ADCIE
                    001B    853 	C$test_acc.c$334$1$1 ==.
                            854 ;	src/test_acc/test_acc.c:334: if(initComplete)
   0518 30 00 1B            855 	jnb	_initComplete,00102$
                    001E    856 	C$test_acc.c$337$2$2 ==.
                            857 ;	src/test_acc/test_acc.c:337: accSample = ADC >> 5;   // [3:0] of ADC are unreliable, we throw them away
   051B 85 BA 23            858 	mov	_accSample,_ADC
   051E E5 BB               859 	mov	a,(_ADC >> 8)
   0520 C4                  860 	swap	a
   0521 03                  861 	rr	a
   0522 C5 23               862 	xch	a,_accSample
   0524 C4                  863 	swap	a
   0525 03                  864 	rr	a
   0526 54 07               865 	anl	a,#0x07
   0528 65 23               866 	xrl	a,_accSample
   052A C5 23               867 	xch	a,_accSample
   052C 54 07               868 	anl	a,#0x07
   052E C5 23               869 	xch	a,_accSample
   0530 65 23               870 	xrl	a,_accSample
   0532 C5 23               871 	xch	a,_accSample
   0534 F5 24               872 	mov	(_accSample + 1),a
   0536                     873 00102$:
                    0039    874 	C$test_acc.c$343$1$1 ==.
                            875 ;	src/test_acc/test_acc.c:343: ADCIE = 1;
   0536 D2 A9               876 	setb	_ADCIE
   0538 D0 D0               877 	pop	psw
   053A D0 E0               878 	pop	acc
                    003F    879 	C$test_acc.c$344$1$1 ==.
                    003F    880 	XG$ISR_ADC$0$0 ==.
   053C 32                  881 	reti
                            882 ;	eliminated unneeded push/pop dpl
                            883 ;	eliminated unneeded push/pop dph
                            884 ;	eliminated unneeded push/pop b
                            885 ;------------------------------------------------------------
                            886 ;Allocation info for local variables in function 'updateLeds'
                            887 ;------------------------------------------------------------
                            888 ;------------------------------------------------------------
                    0040    889 	Ftest_acc$updateLeds$0$0 ==.
                    0040    890 	C$test_acc.c$365$1$1 ==.
                            891 ;	src/test_acc/test_acc.c:365: static void updateLeds()
                            892 ;	-----------------------------------------
                            893 ;	 function updateLeds
                            894 ;	-----------------------------------------
   053D                     895 _updateLeds:
                    0002    896 	ar2 = 0x02
                    0003    897 	ar3 = 0x03
                    0004    898 	ar4 = 0x04
                    0005    899 	ar5 = 0x05
                    0006    900 	ar6 = 0x06
                    0007    901 	ar7 = 0x07
                    0000    902 	ar0 = 0x00
                    0001    903 	ar1 = 0x01
                    0040    904 	C$test_acc.c$367$1$1 ==.
                            905 ;	src/test_acc/test_acc.c:367: usbShowStatusWithGreenLed(); // USB connected
   053D 12 11 C2            906 	lcall	_usbShowStatusWithGreenLed
                    0043    907 	C$test_acc.c$368$2$2 ==.
                            908 ;	src/test_acc/test_acc.c:368: LED_YELLOW(vinPowerPresent());
   0540 12 10 5E            909 	lcall	_vinPowerPresent
   0543 50 05               910 	jnc	00105$
   0545 43 FF 04            911 	orl	_P2DIR,#0x04
   0548 80 03               912 	sjmp	00106$
   054A                     913 00105$:
   054A 53 FF FB            914 	anl	_P2DIR,#0xFB
   054D                     915 00106$:
                    0050    916 	C$test_acc.c$372$1$1 ==.
                            917 ;	src/test_acc/test_acc.c:372: if(getMs() - operationalTimeStamp > 500)
   054D 12 06 44            918 	lcall	_getMs
   0550 AA 82               919 	mov	r2,dpl
   0552 AB 83               920 	mov	r3,dph
   0554 AC F0               921 	mov	r4,b
   0556 FD                  922 	mov	r5,a
   0557 90 F0 42            923 	mov	dptr,#_operationalTimeStamp
   055A E0                  924 	movx	a,@dptr
   055B FE                  925 	mov	r6,a
   055C A3                  926 	inc	dptr
   055D E0                  927 	movx	a,@dptr
   055E FF                  928 	mov	r7,a
   055F A3                  929 	inc	dptr
   0560 E0                  930 	movx	a,@dptr
   0561 F8                  931 	mov	r0,a
   0562 A3                  932 	inc	dptr
   0563 E0                  933 	movx	a,@dptr
   0564 F9                  934 	mov	r1,a
   0565 EA                  935 	mov	a,r2
   0566 C3                  936 	clr	c
   0567 9E                  937 	subb	a,r6
   0568 FA                  938 	mov	r2,a
   0569 EB                  939 	mov	a,r3
   056A 9F                  940 	subb	a,r7
   056B FB                  941 	mov	r3,a
   056C EC                  942 	mov	a,r4
   056D 98                  943 	subb	a,r0
   056E FC                  944 	mov	r4,a
   056F ED                  945 	mov	a,r5
   0570 99                  946 	subb	a,r1
   0571 FD                  947 	mov	r5,a
   0572 C3                  948 	clr	c
   0573 74 F4               949 	mov	a,#0xF4
   0575 9A                  950 	subb	a,r2
   0576 74 01               951 	mov	a,#0x01
   0578 9B                  952 	subb	a,r3
   0579 E4                  953 	clr	a
   057A 9C                  954 	subb	a,r4
   057B E4                  955 	clr	a
   057C 9D                  956 	subb	a,r5
   057D 50 1B               957 	jnc	00103$
                    0082    958 	C$test_acc.c$375$3$4 ==.
                            959 ;	src/test_acc/test_acc.c:375: LED_RED_TOGGLE();
   057F 63 FF 02            960 	xrl	_P2DIR,#0x02
                    0085    961 	C$test_acc.c$378$2$3 ==.
                            962 ;	src/test_acc/test_acc.c:378: operationalTimeStamp = getMs();
   0582 12 06 44            963 	lcall	_getMs
   0585 AA 82               964 	mov	r2,dpl
   0587 AB 83               965 	mov	r3,dph
   0589 AC F0               966 	mov	r4,b
   058B FD                  967 	mov	r5,a
   058C 90 F0 42            968 	mov	dptr,#_operationalTimeStamp
   058F EA                  969 	mov	a,r2
   0590 F0                  970 	movx	@dptr,a
   0591 A3                  971 	inc	dptr
   0592 EB                  972 	mov	a,r3
   0593 F0                  973 	movx	@dptr,a
   0594 A3                  974 	inc	dptr
   0595 EC                  975 	mov	a,r4
   0596 F0                  976 	movx	@dptr,a
   0597 A3                  977 	inc	dptr
   0598 ED                  978 	mov	a,r5
   0599 F0                  979 	movx	@dptr,a
   059A                     980 00103$:
                    009D    981 	C$test_acc.c$380$2$1 ==.
                    009D    982 	XFtest_acc$updateLeds$0$0 ==.
   059A 22                  983 	ret
                            984 ;------------------------------------------------------------
                            985 ;Allocation info for local variables in function 'reportResults'
                            986 ;------------------------------------------------------------
                            987 ;buffer                    Allocated with name '_reportResults_buffer_2_2'
                            988 ;------------------------------------------------------------
                    009E    989 	Ftest_acc$reportResults$0$0 ==.
                    009E    990 	C$test_acc.c$383$2$1 ==.
                            991 ;	src/test_acc/test_acc.c:383: static void reportResults()
                            992 ;	-----------------------------------------
                            993 ;	 function reportResults
                            994 ;	-----------------------------------------
   059B                     995 _reportResults:
                    009E    996 	C$test_acc.c$385$1$1 ==.
                            997 ;	src/test_acc/test_acc.c:385: if(usbComTxAvailable() > 32)
   059B 12 08 BD            998 	lcall	_usbComTxAvailable
   059E AA 82               999 	mov	r2,dpl
   05A0 74 20              1000 	mov	a,#0x20
   05A2 B5 02 00           1001 	cjne	a,ar2,00106$
   05A5                    1002 00106$:
   05A5 50 30              1003 	jnc	00103$
                    00AA   1004 	C$test_acc.c$391$2$2 ==.
                           1005 ;	src/test_acc/test_acc.c:391: bufferLength = sprintf(buffer, "%d \r\n", accSample);
   05A7 C0 23              1006 	push	_accSample
   05A9 C0 24              1007 	push	(_accSample + 1)
   05AB 74 81              1008 	mov	a,#__str_0
   05AD C0 E0              1009 	push	acc
   05AF 74 19              1010 	mov	a,#(__str_0 >> 8)
   05B1 C0 E0              1011 	push	acc
   05B3 74 80              1012 	mov	a,#0x80
   05B5 C0 E0              1013 	push	acc
   05B7 74 46              1014 	mov	a,#_reportResults_buffer_2_2
   05B9 C0 E0              1015 	push	acc
   05BB 74 F0              1016 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   05BD C0 E0              1017 	push	acc
   05BF E4                 1018 	clr	a
   05C0 C0 E0              1019 	push	acc
   05C2 12 11 6D           1020 	lcall	_sprintf
   05C5 AA 82              1021 	mov	r2,dpl
   05C7 E5 81              1022 	mov	a,sp
   05C9 24 F8              1023 	add	a,#0xf8
   05CB F5 81              1024 	mov	sp,a
   05CD 78 0C              1025 	mov	r0,#_usbComTxSend_PARM_2
   05CF EA                 1026 	mov	a,r2
   05D0 F2                 1027 	movx	@r0,a
                    00D4   1028 	C$test_acc.c$393$2$2 ==.
                           1029 ;	src/test_acc/test_acc.c:393: usbComTxSend(buffer, bufferLength);
   05D1 90 F0 46           1030 	mov	dptr,#_reportResults_buffer_2_2
                    00D7   1031 	C$test_acc.c$395$2$1 ==.
                    00D7   1032 	XFtest_acc$reportResults$0$0 ==.
   05D4 02 08 F1           1033 	ljmp	_usbComTxSend
   05D7                    1034 00103$:
   05D7 22                 1035 	ret
                           1036 ;------------------------------------------------------------
                           1037 ;Allocation info for local variables in function 'main'
                           1038 ;------------------------------------------------------------
                           1039 ;------------------------------------------------------------
                    00DB   1040 	G$main$0$0 ==.
                    00DB   1041 	C$test_acc.c$419$2$1 ==.
                           1042 ;	src/test_acc/test_acc.c:419: void main()
                           1043 ;	-----------------------------------------
                           1044 ;	 function main
                           1045 ;	-----------------------------------------
   05D8                    1046 _main:
                    00DB   1047 	C$test_acc.c$422$1$1 ==.
                           1048 ;	src/test_acc/test_acc.c:422: initComplete = FALSE;
   05D8 C2 00              1049 	clr	_initComplete
                    00DD   1050 	C$test_acc.c$425$1$1 ==.
                           1051 ;	src/test_acc/test_acc.c:425: systemInit();     // configures getMs() function, among others
   05DA 12 0F AC           1052 	lcall	_systemInit
                    00E0   1053 	C$test_acc.c$426$1$1 ==.
                           1054 ;	src/test_acc/test_acc.c:426: usbInit();        // Allows bootloader to be entered by USB command
   05DD 12 09 78           1055 	lcall	_usbInit
                    00E3   1056 	C$test_acc.c$429$1$1 ==.
                           1057 ;	src/test_acc/test_acc.c:429: isrTimerInit();            // Initializes T3 timer for 10KHz sampling freq.
   05E0 12 06 C8           1058 	lcall	_isrTimerInit
                    00E6   1059 	C$test_acc.c$430$1$1 ==.
                           1060 ;	src/test_acc/test_acc.c:430: adcInit();                 // Initializes P0_0 as analog input
   05E3 12 10 82           1061 	lcall	_adcInit
                    00E9   1062 	C$test_acc.c$432$1$1 ==.
                           1063 ;	src/test_acc/test_acc.c:432: accSample = 0;
   05E6 E4                 1064 	clr	a
   05E7 F5 23              1065 	mov	_accSample,a
   05E9 F5 24              1066 	mov	(_accSample + 1),a
                    00EE   1067 	C$test_acc.c$433$1$1 ==.
                           1068 ;	src/test_acc/test_acc.c:433: counter = 0;
   05EB 78 00              1069 	mov	r0,#_counter
   05ED E4                 1070 	clr	a
   05EE F2                 1071 	movx	@r0,a
   05EF 08                 1072 	inc	r0
   05F0 F2                 1073 	movx	@r0,a
                    00F4   1074 	C$test_acc.c$435$1$1 ==.
                           1075 ;	src/test_acc/test_acc.c:435: operationalTimeStamp = getMs();
   05F1 12 06 44           1076 	lcall	_getMs
   05F4 AA 82              1077 	mov	r2,dpl
   05F6 AB 83              1078 	mov	r3,dph
   05F8 AC F0              1079 	mov	r4,b
   05FA FD                 1080 	mov	r5,a
   05FB 90 F0 42           1081 	mov	dptr,#_operationalTimeStamp
   05FE EA                 1082 	mov	a,r2
   05FF F0                 1083 	movx	@dptr,a
   0600 A3                 1084 	inc	dptr
   0601 EB                 1085 	mov	a,r3
   0602 F0                 1086 	movx	@dptr,a
   0603 A3                 1087 	inc	dptr
   0604 EC                 1088 	mov	a,r4
   0605 F0                 1089 	movx	@dptr,a
   0606 A3                 1090 	inc	dptr
   0607 ED                 1091 	mov	a,r5
   0608 F0                 1092 	movx	@dptr,a
                    010C   1093 	C$test_acc.c$438$1$1 ==.
                           1094 ;	src/test_acc/test_acc.c:438: initComplete = TRUE;
   0609 D2 00              1095 	setb	_initComplete
                    010E   1096 	C$test_acc.c$441$1$1 ==.
                           1097 ;	src/test_acc/test_acc.c:441: while(TRUE)
   060B                    1098 00106$:
                    010E   1099 	C$test_acc.c$443$2$2 ==.
                           1100 ;	src/test_acc/test_acc.c:443: ++counter;
   060B 78 00              1101 	mov	r0,#_counter
   060D E2                 1102 	movx	a,@r0
   060E 24 01              1103 	add	a,#0x01
   0610 F2                 1104 	movx	@r0,a
   0611 08                 1105 	inc	r0
   0612 E2                 1106 	movx	a,@r0
   0613 34 00              1107 	addc	a,#0x00
   0615 F2                 1108 	movx	@r0,a
                    0119   1109 	C$test_acc.c$444$2$2 ==.
                           1110 ;	src/test_acc/test_acc.c:444: if(counter == 1000) {
   0616 78 00              1111 	mov	r0,#_counter
   0618 E2                 1112 	movx	a,@r0
   0619 B4 E8 07           1113 	cjne	a,#0xE8,00113$
   061C 08                 1114 	inc	r0
   061D E2                 1115 	movx	a,@r0
   061E B4 03 02           1116 	cjne	a,#0x03,00113$
   0621 80 02              1117 	sjmp	00114$
   0623                    1118 00113$:
   0623 80 06              1119 	sjmp	00102$
   0625                    1120 00114$:
                    0128   1121 	C$test_acc.c$445$3$3 ==.
                           1122 ;	src/test_acc/test_acc.c:445: counter = 0;
   0625 78 00              1123 	mov	r0,#_counter
   0627 E4                 1124 	clr	a
   0628 F2                 1125 	movx	@r0,a
   0629 08                 1126 	inc	r0
   062A F2                 1127 	movx	@r0,a
   062B                    1128 00102$:
                    012E   1129 	C$test_acc.c$448$2$2 ==.
                           1130 ;	src/test_acc/test_acc.c:448: if(!counter) {
   062B 78 00              1131 	mov	r0,#_counter
   062D E2                 1132 	movx	a,@r0
   062E F5 F0              1133 	mov	b,a
   0630 08                 1134 	inc	r0
   0631 E2                 1135 	movx	a,@r0
   0632 45 F0              1136 	orl	a,b
   0634 70 03              1137 	jnz	00104$
                    0139   1138 	C$test_acc.c$449$3$4 ==.
                           1139 ;	src/test_acc/test_acc.c:449: reportResults();  // Display results from Accelerometer ADC conversion
   0636 12 05 9B           1140 	lcall	_reportResults
   0639                    1141 00104$:
                    013C   1142 	C$test_acc.c$451$2$2 ==.
                           1143 ;	src/test_acc/test_acc.c:451: updateLeds();     // blinks red LED every 50ms if we are receiving packets
   0639 12 05 3D           1144 	lcall	_updateLeds
                    013F   1145 	C$test_acc.c$452$2$2 ==.
                           1146 ;	src/test_acc/test_acc.c:452: boardService();   // so we can start bootloader by shorting P2_2 to 3V3
   063C 12 0F B8           1147 	lcall	_boardService
                    0142   1148 	C$test_acc.c$453$2$2 ==.
                           1149 ;	src/test_acc/test_acc.c:453: usbComService();  // so we can start bootloader from Wixel config GUI
   063F 12 08 24           1150 	lcall	_usbComService
                    0145   1151 	C$test_acc.c$455$1$1 ==.
                    0145   1152 	XG$main$0$0 ==.
   0642 80 C7              1153 	sjmp	00106$
                           1154 	.area CSEG    (CODE)
                           1155 	.area CONST   (CODE)
                    0000   1156 Ftest_acc$_str_0$0$0 == .
   1981                    1157 __str_0:
   1981 25 64 20           1158 	.ascii "%d "
   1984 0D                 1159 	.db 0x0D
   1985 0A                 1160 	.db 0x0A
   1986 00                 1161 	.db 0x00
                           1162 	.area XINIT   (CODE)
                           1163 	.area CABS    (ABS,CODE)
