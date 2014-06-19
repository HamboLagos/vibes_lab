                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 10 17:38:01 2012
                              5 ;--------------------------------------------------------
                              6 	.module test_i2c
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _voltage
                             13 	.globl _DAC_COMMAND
                             14 	.globl _DAC_ADDRESS
                             15 	.globl _main
                             16 	.globl _reportResults
                             17 	.globl _updateLeds
                             18 	.globl _reportResults_PARM_4
                             19 	.globl _reportResults_PARM_3
                             20 	.globl _reportResults_PARM_2
                             21 	.globl _transfers
                             22 	.globl _nacks
                             23 	.globl _tempTimeStamp
                             24 	.globl _operationalTimeStamp
                             25 ;--------------------------------------------------------
                             26 ; special function registers
                             27 ;--------------------------------------------------------
                             28 	.area RSEG    (ABS,DATA)
   0000                      29 	.org 0x0000
                    0080     30 Ftest_i2c$P0$0$0 == 0x0080
                    0080     31 _P0	=	0x0080
                    0081     32 Ftest_i2c$SP$0$0 == 0x0081
                    0081     33 _SP	=	0x0081
                    0082     34 Ftest_i2c$DPL0$0$0 == 0x0082
                    0082     35 _DPL0	=	0x0082
                    0083     36 Ftest_i2c$DPH0$0$0 == 0x0083
                    0083     37 _DPH0	=	0x0083
                    0084     38 Ftest_i2c$DPL1$0$0 == 0x0084
                    0084     39 _DPL1	=	0x0084
                    0085     40 Ftest_i2c$DPH1$0$0 == 0x0085
                    0085     41 _DPH1	=	0x0085
                    0086     42 Ftest_i2c$U0CSR$0$0 == 0x0086
                    0086     43 _U0CSR	=	0x0086
                    0087     44 Ftest_i2c$PCON$0$0 == 0x0087
                    0087     45 _PCON	=	0x0087
                    0088     46 Ftest_i2c$TCON$0$0 == 0x0088
                    0088     47 _TCON	=	0x0088
                    0089     48 Ftest_i2c$P0IFG$0$0 == 0x0089
                    0089     49 _P0IFG	=	0x0089
                    008A     50 Ftest_i2c$P1IFG$0$0 == 0x008a
                    008A     51 _P1IFG	=	0x008a
                    008B     52 Ftest_i2c$P2IFG$0$0 == 0x008b
                    008B     53 _P2IFG	=	0x008b
                    008C     54 Ftest_i2c$PICTL$0$0 == 0x008c
                    008C     55 _PICTL	=	0x008c
                    008D     56 Ftest_i2c$P1IEN$0$0 == 0x008d
                    008D     57 _P1IEN	=	0x008d
                    008F     58 Ftest_i2c$P0INP$0$0 == 0x008f
                    008F     59 _P0INP	=	0x008f
                    0090     60 Ftest_i2c$P1$0$0 == 0x0090
                    0090     61 _P1	=	0x0090
                    0091     62 Ftest_i2c$RFIM$0$0 == 0x0091
                    0091     63 _RFIM	=	0x0091
                    0092     64 Ftest_i2c$DPS$0$0 == 0x0092
                    0092     65 _DPS	=	0x0092
                    0093     66 Ftest_i2c$MPAGE$0$0 == 0x0093
                    0093     67 _MPAGE	=	0x0093
                    0095     68 Ftest_i2c$ENDIAN$0$0 == 0x0095
                    0095     69 _ENDIAN	=	0x0095
                    0098     70 Ftest_i2c$S0CON$0$0 == 0x0098
                    0098     71 _S0CON	=	0x0098
                    009A     72 Ftest_i2c$IEN2$0$0 == 0x009a
                    009A     73 _IEN2	=	0x009a
                    009B     74 Ftest_i2c$S1CON$0$0 == 0x009b
                    009B     75 _S1CON	=	0x009b
                    009C     76 Ftest_i2c$T2CT$0$0 == 0x009c
                    009C     77 _T2CT	=	0x009c
                    009D     78 Ftest_i2c$T2PR$0$0 == 0x009d
                    009D     79 _T2PR	=	0x009d
                    009E     80 Ftest_i2c$T2CTL$0$0 == 0x009e
                    009E     81 _T2CTL	=	0x009e
                    00A0     82 Ftest_i2c$P2$0$0 == 0x00a0
                    00A0     83 _P2	=	0x00a0
                    00A1     84 Ftest_i2c$WORIRQ$0$0 == 0x00a1
                    00A1     85 _WORIRQ	=	0x00a1
                    00A2     86 Ftest_i2c$WORCTRL$0$0 == 0x00a2
                    00A2     87 _WORCTRL	=	0x00a2
                    00A3     88 Ftest_i2c$WOREVT0$0$0 == 0x00a3
                    00A3     89 _WOREVT0	=	0x00a3
                    00A4     90 Ftest_i2c$WOREVT1$0$0 == 0x00a4
                    00A4     91 _WOREVT1	=	0x00a4
                    00A5     92 Ftest_i2c$WORTIME0$0$0 == 0x00a5
                    00A5     93 _WORTIME0	=	0x00a5
                    00A6     94 Ftest_i2c$WORTIME1$0$0 == 0x00a6
                    00A6     95 _WORTIME1	=	0x00a6
                    00A8     96 Ftest_i2c$IEN0$0$0 == 0x00a8
                    00A8     97 _IEN0	=	0x00a8
                    00A9     98 Ftest_i2c$IP0$0$0 == 0x00a9
                    00A9     99 _IP0	=	0x00a9
                    00AB    100 Ftest_i2c$FWT$0$0 == 0x00ab
                    00AB    101 _FWT	=	0x00ab
                    00AC    102 Ftest_i2c$FADDRL$0$0 == 0x00ac
                    00AC    103 _FADDRL	=	0x00ac
                    00AD    104 Ftest_i2c$FADDRH$0$0 == 0x00ad
                    00AD    105 _FADDRH	=	0x00ad
                    00AE    106 Ftest_i2c$FCTL$0$0 == 0x00ae
                    00AE    107 _FCTL	=	0x00ae
                    00AF    108 Ftest_i2c$FWDATA$0$0 == 0x00af
                    00AF    109 _FWDATA	=	0x00af
                    00B1    110 Ftest_i2c$ENCDI$0$0 == 0x00b1
                    00B1    111 _ENCDI	=	0x00b1
                    00B2    112 Ftest_i2c$ENCDO$0$0 == 0x00b2
                    00B2    113 _ENCDO	=	0x00b2
                    00B3    114 Ftest_i2c$ENCCS$0$0 == 0x00b3
                    00B3    115 _ENCCS	=	0x00b3
                    00B4    116 Ftest_i2c$ADCCON1$0$0 == 0x00b4
                    00B4    117 _ADCCON1	=	0x00b4
                    00B5    118 Ftest_i2c$ADCCON2$0$0 == 0x00b5
                    00B5    119 _ADCCON2	=	0x00b5
                    00B6    120 Ftest_i2c$ADCCON3$0$0 == 0x00b6
                    00B6    121 _ADCCON3	=	0x00b6
                    00B8    122 Ftest_i2c$IEN1$0$0 == 0x00b8
                    00B8    123 _IEN1	=	0x00b8
                    00B9    124 Ftest_i2c$IP1$0$0 == 0x00b9
                    00B9    125 _IP1	=	0x00b9
                    00BA    126 Ftest_i2c$ADCL$0$0 == 0x00ba
                    00BA    127 _ADCL	=	0x00ba
                    00BB    128 Ftest_i2c$ADCH$0$0 == 0x00bb
                    00BB    129 _ADCH	=	0x00bb
                    00BC    130 Ftest_i2c$RNDL$0$0 == 0x00bc
                    00BC    131 _RNDL	=	0x00bc
                    00BD    132 Ftest_i2c$RNDH$0$0 == 0x00bd
                    00BD    133 _RNDH	=	0x00bd
                    00BE    134 Ftest_i2c$SLEEP$0$0 == 0x00be
                    00BE    135 _SLEEP	=	0x00be
                    00C0    136 Ftest_i2c$IRCON$0$0 == 0x00c0
                    00C0    137 _IRCON	=	0x00c0
                    00C1    138 Ftest_i2c$U0DBUF$0$0 == 0x00c1
                    00C1    139 _U0DBUF	=	0x00c1
                    00C2    140 Ftest_i2c$U0BAUD$0$0 == 0x00c2
                    00C2    141 _U0BAUD	=	0x00c2
                    00C4    142 Ftest_i2c$U0UCR$0$0 == 0x00c4
                    00C4    143 _U0UCR	=	0x00c4
                    00C5    144 Ftest_i2c$U0GCR$0$0 == 0x00c5
                    00C5    145 _U0GCR	=	0x00c5
                    00C6    146 Ftest_i2c$CLKCON$0$0 == 0x00c6
                    00C6    147 _CLKCON	=	0x00c6
                    00C7    148 Ftest_i2c$MEMCTR$0$0 == 0x00c7
                    00C7    149 _MEMCTR	=	0x00c7
                    00C9    150 Ftest_i2c$WDCTL$0$0 == 0x00c9
                    00C9    151 _WDCTL	=	0x00c9
                    00CA    152 Ftest_i2c$T3CNT$0$0 == 0x00ca
                    00CA    153 _T3CNT	=	0x00ca
                    00CB    154 Ftest_i2c$T3CTL$0$0 == 0x00cb
                    00CB    155 _T3CTL	=	0x00cb
                    00CC    156 Ftest_i2c$T3CCTL0$0$0 == 0x00cc
                    00CC    157 _T3CCTL0	=	0x00cc
                    00CD    158 Ftest_i2c$T3CC0$0$0 == 0x00cd
                    00CD    159 _T3CC0	=	0x00cd
                    00CE    160 Ftest_i2c$T3CCTL1$0$0 == 0x00ce
                    00CE    161 _T3CCTL1	=	0x00ce
                    00CF    162 Ftest_i2c$T3CC1$0$0 == 0x00cf
                    00CF    163 _T3CC1	=	0x00cf
                    00D0    164 Ftest_i2c$PSW$0$0 == 0x00d0
                    00D0    165 _PSW	=	0x00d0
                    00D1    166 Ftest_i2c$DMAIRQ$0$0 == 0x00d1
                    00D1    167 _DMAIRQ	=	0x00d1
                    00D2    168 Ftest_i2c$DMA1CFGL$0$0 == 0x00d2
                    00D2    169 _DMA1CFGL	=	0x00d2
                    00D3    170 Ftest_i2c$DMA1CFGH$0$0 == 0x00d3
                    00D3    171 _DMA1CFGH	=	0x00d3
                    00D4    172 Ftest_i2c$DMA0CFGL$0$0 == 0x00d4
                    00D4    173 _DMA0CFGL	=	0x00d4
                    00D5    174 Ftest_i2c$DMA0CFGH$0$0 == 0x00d5
                    00D5    175 _DMA0CFGH	=	0x00d5
                    00D6    176 Ftest_i2c$DMAARM$0$0 == 0x00d6
                    00D6    177 _DMAARM	=	0x00d6
                    00D7    178 Ftest_i2c$DMAREQ$0$0 == 0x00d7
                    00D7    179 _DMAREQ	=	0x00d7
                    00D8    180 Ftest_i2c$TIMIF$0$0 == 0x00d8
                    00D8    181 _TIMIF	=	0x00d8
                    00D9    182 Ftest_i2c$RFD$0$0 == 0x00d9
                    00D9    183 _RFD	=	0x00d9
                    00DA    184 Ftest_i2c$T1CC0L$0$0 == 0x00da
                    00DA    185 _T1CC0L	=	0x00da
                    00DB    186 Ftest_i2c$T1CC0H$0$0 == 0x00db
                    00DB    187 _T1CC0H	=	0x00db
                    00DC    188 Ftest_i2c$T1CC1L$0$0 == 0x00dc
                    00DC    189 _T1CC1L	=	0x00dc
                    00DD    190 Ftest_i2c$T1CC1H$0$0 == 0x00dd
                    00DD    191 _T1CC1H	=	0x00dd
                    00DE    192 Ftest_i2c$T1CC2L$0$0 == 0x00de
                    00DE    193 _T1CC2L	=	0x00de
                    00DF    194 Ftest_i2c$T1CC2H$0$0 == 0x00df
                    00DF    195 _T1CC2H	=	0x00df
                    00E0    196 Ftest_i2c$ACC$0$0 == 0x00e0
                    00E0    197 _ACC	=	0x00e0
                    00E1    198 Ftest_i2c$RFST$0$0 == 0x00e1
                    00E1    199 _RFST	=	0x00e1
                    00E2    200 Ftest_i2c$T1CNTL$0$0 == 0x00e2
                    00E2    201 _T1CNTL	=	0x00e2
                    00E3    202 Ftest_i2c$T1CNTH$0$0 == 0x00e3
                    00E3    203 _T1CNTH	=	0x00e3
                    00E4    204 Ftest_i2c$T1CTL$0$0 == 0x00e4
                    00E4    205 _T1CTL	=	0x00e4
                    00E5    206 Ftest_i2c$T1CCTL0$0$0 == 0x00e5
                    00E5    207 _T1CCTL0	=	0x00e5
                    00E6    208 Ftest_i2c$T1CCTL1$0$0 == 0x00e6
                    00E6    209 _T1CCTL1	=	0x00e6
                    00E7    210 Ftest_i2c$T1CCTL2$0$0 == 0x00e7
                    00E7    211 _T1CCTL2	=	0x00e7
                    00E8    212 Ftest_i2c$IRCON2$0$0 == 0x00e8
                    00E8    213 _IRCON2	=	0x00e8
                    00E9    214 Ftest_i2c$RFIF$0$0 == 0x00e9
                    00E9    215 _RFIF	=	0x00e9
                    00EA    216 Ftest_i2c$T4CNT$0$0 == 0x00ea
                    00EA    217 _T4CNT	=	0x00ea
                    00EB    218 Ftest_i2c$T4CTL$0$0 == 0x00eb
                    00EB    219 _T4CTL	=	0x00eb
                    00EC    220 Ftest_i2c$T4CCTL0$0$0 == 0x00ec
                    00EC    221 _T4CCTL0	=	0x00ec
                    00ED    222 Ftest_i2c$T4CC0$0$0 == 0x00ed
                    00ED    223 _T4CC0	=	0x00ed
                    00EE    224 Ftest_i2c$T4CCTL1$0$0 == 0x00ee
                    00EE    225 _T4CCTL1	=	0x00ee
                    00EF    226 Ftest_i2c$T4CC1$0$0 == 0x00ef
                    00EF    227 _T4CC1	=	0x00ef
                    00F0    228 Ftest_i2c$B$0$0 == 0x00f0
                    00F0    229 _B	=	0x00f0
                    00F1    230 Ftest_i2c$PERCFG$0$0 == 0x00f1
                    00F1    231 _PERCFG	=	0x00f1
                    00F2    232 Ftest_i2c$ADCCFG$0$0 == 0x00f2
                    00F2    233 _ADCCFG	=	0x00f2
                    00F3    234 Ftest_i2c$P0SEL$0$0 == 0x00f3
                    00F3    235 _P0SEL	=	0x00f3
                    00F4    236 Ftest_i2c$P1SEL$0$0 == 0x00f4
                    00F4    237 _P1SEL	=	0x00f4
                    00F5    238 Ftest_i2c$P2SEL$0$0 == 0x00f5
                    00F5    239 _P2SEL	=	0x00f5
                    00F6    240 Ftest_i2c$P1INP$0$0 == 0x00f6
                    00F6    241 _P1INP	=	0x00f6
                    00F7    242 Ftest_i2c$P2INP$0$0 == 0x00f7
                    00F7    243 _P2INP	=	0x00f7
                    00F8    244 Ftest_i2c$U1CSR$0$0 == 0x00f8
                    00F8    245 _U1CSR	=	0x00f8
                    00F9    246 Ftest_i2c$U1DBUF$0$0 == 0x00f9
                    00F9    247 _U1DBUF	=	0x00f9
                    00FA    248 Ftest_i2c$U1BAUD$0$0 == 0x00fa
                    00FA    249 _U1BAUD	=	0x00fa
                    00FB    250 Ftest_i2c$U1UCR$0$0 == 0x00fb
                    00FB    251 _U1UCR	=	0x00fb
                    00FC    252 Ftest_i2c$U1GCR$0$0 == 0x00fc
                    00FC    253 _U1GCR	=	0x00fc
                    00FD    254 Ftest_i2c$P0DIR$0$0 == 0x00fd
                    00FD    255 _P0DIR	=	0x00fd
                    00FE    256 Ftest_i2c$P1DIR$0$0 == 0x00fe
                    00FE    257 _P1DIR	=	0x00fe
                    00FF    258 Ftest_i2c$P2DIR$0$0 == 0x00ff
                    00FF    259 _P2DIR	=	0x00ff
                    FFFFD5D4    260 Ftest_i2c$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    261 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    262 Ftest_i2c$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    263 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    264 Ftest_i2c$FADDR$0$0 == 0xffffadac
                    FFFFADAC    265 _FADDR	=	0xffffadac
                    FFFFBBBA    266 Ftest_i2c$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    267 _ADC	=	0xffffbbba
                            268 ;--------------------------------------------------------
                            269 ; special function bits
                            270 ;--------------------------------------------------------
                            271 	.area RSEG    (ABS,DATA)
   0000                     272 	.org 0x0000
                    0080    273 Ftest_i2c$P0_0$0$0 == 0x0080
                    0080    274 _P0_0	=	0x0080
                    0081    275 Ftest_i2c$P0_1$0$0 == 0x0081
                    0081    276 _P0_1	=	0x0081
                    0082    277 Ftest_i2c$P0_2$0$0 == 0x0082
                    0082    278 _P0_2	=	0x0082
                    0083    279 Ftest_i2c$P0_3$0$0 == 0x0083
                    0083    280 _P0_3	=	0x0083
                    0084    281 Ftest_i2c$P0_4$0$0 == 0x0084
                    0084    282 _P0_4	=	0x0084
                    0085    283 Ftest_i2c$P0_5$0$0 == 0x0085
                    0085    284 _P0_5	=	0x0085
                    0086    285 Ftest_i2c$P0_6$0$0 == 0x0086
                    0086    286 _P0_6	=	0x0086
                    0087    287 Ftest_i2c$P0_7$0$0 == 0x0087
                    0087    288 _P0_7	=	0x0087
                    0088    289 Ftest_i2c$_TCON_0$0$0 == 0x0088
                    0088    290 __TCON_0	=	0x0088
                    0089    291 Ftest_i2c$RFTXRXIF$0$0 == 0x0089
                    0089    292 _RFTXRXIF	=	0x0089
                    008A    293 Ftest_i2c$_TCON_2$0$0 == 0x008a
                    008A    294 __TCON_2	=	0x008a
                    008B    295 Ftest_i2c$URX0IF$0$0 == 0x008b
                    008B    296 _URX0IF	=	0x008b
                    008C    297 Ftest_i2c$_TCON_4$0$0 == 0x008c
                    008C    298 __TCON_4	=	0x008c
                    008D    299 Ftest_i2c$ADCIF$0$0 == 0x008d
                    008D    300 _ADCIF	=	0x008d
                    008E    301 Ftest_i2c$_TCON_6$0$0 == 0x008e
                    008E    302 __TCON_6	=	0x008e
                    008F    303 Ftest_i2c$URX1IF$0$0 == 0x008f
                    008F    304 _URX1IF	=	0x008f
                    0090    305 Ftest_i2c$P1_0$0$0 == 0x0090
                    0090    306 _P1_0	=	0x0090
                    0091    307 Ftest_i2c$P1_1$0$0 == 0x0091
                    0091    308 _P1_1	=	0x0091
                    0092    309 Ftest_i2c$P1_2$0$0 == 0x0092
                    0092    310 _P1_2	=	0x0092
                    0093    311 Ftest_i2c$P1_3$0$0 == 0x0093
                    0093    312 _P1_3	=	0x0093
                    0094    313 Ftest_i2c$P1_4$0$0 == 0x0094
                    0094    314 _P1_4	=	0x0094
                    0095    315 Ftest_i2c$P1_5$0$0 == 0x0095
                    0095    316 _P1_5	=	0x0095
                    0096    317 Ftest_i2c$P1_6$0$0 == 0x0096
                    0096    318 _P1_6	=	0x0096
                    0097    319 Ftest_i2c$P1_7$0$0 == 0x0097
                    0097    320 _P1_7	=	0x0097
                    0098    321 Ftest_i2c$ENCIF_0$0$0 == 0x0098
                    0098    322 _ENCIF_0	=	0x0098
                    0099    323 Ftest_i2c$ENCIF_1$0$0 == 0x0099
                    0099    324 _ENCIF_1	=	0x0099
                    009A    325 Ftest_i2c$_SOCON2$0$0 == 0x009a
                    009A    326 __SOCON2	=	0x009a
                    009B    327 Ftest_i2c$_SOCON3$0$0 == 0x009b
                    009B    328 __SOCON3	=	0x009b
                    009C    329 Ftest_i2c$_SOCON4$0$0 == 0x009c
                    009C    330 __SOCON4	=	0x009c
                    009D    331 Ftest_i2c$_SOCON5$0$0 == 0x009d
                    009D    332 __SOCON5	=	0x009d
                    009E    333 Ftest_i2c$_SOCON6$0$0 == 0x009e
                    009E    334 __SOCON6	=	0x009e
                    009F    335 Ftest_i2c$_SOCON7$0$0 == 0x009f
                    009F    336 __SOCON7	=	0x009f
                    00A0    337 Ftest_i2c$P2_0$0$0 == 0x00a0
                    00A0    338 _P2_0	=	0x00a0
                    00A1    339 Ftest_i2c$P2_1$0$0 == 0x00a1
                    00A1    340 _P2_1	=	0x00a1
                    00A2    341 Ftest_i2c$P2_2$0$0 == 0x00a2
                    00A2    342 _P2_2	=	0x00a2
                    00A3    343 Ftest_i2c$P2_3$0$0 == 0x00a3
                    00A3    344 _P2_3	=	0x00a3
                    00A4    345 Ftest_i2c$P2_4$0$0 == 0x00a4
                    00A4    346 _P2_4	=	0x00a4
                    00A5    347 Ftest_i2c$P2_5$0$0 == 0x00a5
                    00A5    348 _P2_5	=	0x00a5
                    00A6    349 Ftest_i2c$P2_6$0$0 == 0x00a6
                    00A6    350 _P2_6	=	0x00a6
                    00A7    351 Ftest_i2c$P2_7$0$0 == 0x00a7
                    00A7    352 _P2_7	=	0x00a7
                    00A8    353 Ftest_i2c$RFTXRXIE$0$0 == 0x00a8
                    00A8    354 _RFTXRXIE	=	0x00a8
                    00A9    355 Ftest_i2c$ADCIE$0$0 == 0x00a9
                    00A9    356 _ADCIE	=	0x00a9
                    00AA    357 Ftest_i2c$URX0IE$0$0 == 0x00aa
                    00AA    358 _URX0IE	=	0x00aa
                    00AB    359 Ftest_i2c$URX1IE$0$0 == 0x00ab
                    00AB    360 _URX1IE	=	0x00ab
                    00AC    361 Ftest_i2c$ENCIE$0$0 == 0x00ac
                    00AC    362 _ENCIE	=	0x00ac
                    00AD    363 Ftest_i2c$STIE$0$0 == 0x00ad
                    00AD    364 _STIE	=	0x00ad
                    00AE    365 Ftest_i2c$_IEN06$0$0 == 0x00ae
                    00AE    366 __IEN06	=	0x00ae
                    00AF    367 Ftest_i2c$EA$0$0 == 0x00af
                    00AF    368 _EA	=	0x00af
                    00B8    369 Ftest_i2c$DMAIE$0$0 == 0x00b8
                    00B8    370 _DMAIE	=	0x00b8
                    00B9    371 Ftest_i2c$T1IE$0$0 == 0x00b9
                    00B9    372 _T1IE	=	0x00b9
                    00BA    373 Ftest_i2c$T2IE$0$0 == 0x00ba
                    00BA    374 _T2IE	=	0x00ba
                    00BB    375 Ftest_i2c$T3IE$0$0 == 0x00bb
                    00BB    376 _T3IE	=	0x00bb
                    00BC    377 Ftest_i2c$T4IE$0$0 == 0x00bc
                    00BC    378 _T4IE	=	0x00bc
                    00BD    379 Ftest_i2c$P0IE$0$0 == 0x00bd
                    00BD    380 _P0IE	=	0x00bd
                    00BE    381 Ftest_i2c$_IEN16$0$0 == 0x00be
                    00BE    382 __IEN16	=	0x00be
                    00BF    383 Ftest_i2c$_IEN17$0$0 == 0x00bf
                    00BF    384 __IEN17	=	0x00bf
                    00C0    385 Ftest_i2c$DMAIF$0$0 == 0x00c0
                    00C0    386 _DMAIF	=	0x00c0
                    00C1    387 Ftest_i2c$T1IF$0$0 == 0x00c1
                    00C1    388 _T1IF	=	0x00c1
                    00C2    389 Ftest_i2c$T2IF$0$0 == 0x00c2
                    00C2    390 _T2IF	=	0x00c2
                    00C3    391 Ftest_i2c$T3IF$0$0 == 0x00c3
                    00C3    392 _T3IF	=	0x00c3
                    00C4    393 Ftest_i2c$T4IF$0$0 == 0x00c4
                    00C4    394 _T4IF	=	0x00c4
                    00C5    395 Ftest_i2c$P0IF$0$0 == 0x00c5
                    00C5    396 _P0IF	=	0x00c5
                    00C6    397 Ftest_i2c$_IRCON6$0$0 == 0x00c6
                    00C6    398 __IRCON6	=	0x00c6
                    00C7    399 Ftest_i2c$STIF$0$0 == 0x00c7
                    00C7    400 _STIF	=	0x00c7
                    00D0    401 Ftest_i2c$P$0$0 == 0x00d0
                    00D0    402 _P	=	0x00d0
                    00D1    403 Ftest_i2c$F1$0$0 == 0x00d1
                    00D1    404 _F1	=	0x00d1
                    00D2    405 Ftest_i2c$OV$0$0 == 0x00d2
                    00D2    406 _OV	=	0x00d2
                    00D3    407 Ftest_i2c$RS0$0$0 == 0x00d3
                    00D3    408 _RS0	=	0x00d3
                    00D4    409 Ftest_i2c$RS1$0$0 == 0x00d4
                    00D4    410 _RS1	=	0x00d4
                    00D5    411 Ftest_i2c$F0$0$0 == 0x00d5
                    00D5    412 _F0	=	0x00d5
                    00D6    413 Ftest_i2c$AC$0$0 == 0x00d6
                    00D6    414 _AC	=	0x00d6
                    00D7    415 Ftest_i2c$CY$0$0 == 0x00d7
                    00D7    416 _CY	=	0x00d7
                    00D8    417 Ftest_i2c$T3OVFIF$0$0 == 0x00d8
                    00D8    418 _T3OVFIF	=	0x00d8
                    00D9    419 Ftest_i2c$T3CH0IF$0$0 == 0x00d9
                    00D9    420 _T3CH0IF	=	0x00d9
                    00DA    421 Ftest_i2c$T3CH1IF$0$0 == 0x00da
                    00DA    422 _T3CH1IF	=	0x00da
                    00DB    423 Ftest_i2c$T4OVFIF$0$0 == 0x00db
                    00DB    424 _T4OVFIF	=	0x00db
                    00DC    425 Ftest_i2c$T4CH0IF$0$0 == 0x00dc
                    00DC    426 _T4CH0IF	=	0x00dc
                    00DD    427 Ftest_i2c$T4CH1IF$0$0 == 0x00dd
                    00DD    428 _T4CH1IF	=	0x00dd
                    00DE    429 Ftest_i2c$OVFIM$0$0 == 0x00de
                    00DE    430 _OVFIM	=	0x00de
                    00DF    431 Ftest_i2c$_TIMIF7$0$0 == 0x00df
                    00DF    432 __TIMIF7	=	0x00df
                    00E0    433 Ftest_i2c$ACC_0$0$0 == 0x00e0
                    00E0    434 _ACC_0	=	0x00e0
                    00E1    435 Ftest_i2c$ACC_1$0$0 == 0x00e1
                    00E1    436 _ACC_1	=	0x00e1
                    00E2    437 Ftest_i2c$ACC_2$0$0 == 0x00e2
                    00E2    438 _ACC_2	=	0x00e2
                    00E3    439 Ftest_i2c$ACC_3$0$0 == 0x00e3
                    00E3    440 _ACC_3	=	0x00e3
                    00E4    441 Ftest_i2c$ACC_4$0$0 == 0x00e4
                    00E4    442 _ACC_4	=	0x00e4
                    00E5    443 Ftest_i2c$ACC_5$0$0 == 0x00e5
                    00E5    444 _ACC_5	=	0x00e5
                    00E6    445 Ftest_i2c$ACC_6$0$0 == 0x00e6
                    00E6    446 _ACC_6	=	0x00e6
                    00E7    447 Ftest_i2c$ACC_7$0$0 == 0x00e7
                    00E7    448 _ACC_7	=	0x00e7
                    00E8    449 Ftest_i2c$P2IF$0$0 == 0x00e8
                    00E8    450 _P2IF	=	0x00e8
                    00E9    451 Ftest_i2c$UTX0IF$0$0 == 0x00e9
                    00E9    452 _UTX0IF	=	0x00e9
                    00EA    453 Ftest_i2c$UTX1IF$0$0 == 0x00ea
                    00EA    454 _UTX1IF	=	0x00ea
                    00EB    455 Ftest_i2c$P1IF$0$0 == 0x00eb
                    00EB    456 _P1IF	=	0x00eb
                    00EC    457 Ftest_i2c$WDTIF$0$0 == 0x00ec
                    00EC    458 _WDTIF	=	0x00ec
                    00ED    459 Ftest_i2c$_IRCON25$0$0 == 0x00ed
                    00ED    460 __IRCON25	=	0x00ed
                    00EE    461 Ftest_i2c$_IRCON26$0$0 == 0x00ee
                    00EE    462 __IRCON26	=	0x00ee
                    00EF    463 Ftest_i2c$_IRCON27$0$0 == 0x00ef
                    00EF    464 __IRCON27	=	0x00ef
                    00F0    465 Ftest_i2c$B_0$0$0 == 0x00f0
                    00F0    466 _B_0	=	0x00f0
                    00F1    467 Ftest_i2c$B_1$0$0 == 0x00f1
                    00F1    468 _B_1	=	0x00f1
                    00F2    469 Ftest_i2c$B_2$0$0 == 0x00f2
                    00F2    470 _B_2	=	0x00f2
                    00F3    471 Ftest_i2c$B_3$0$0 == 0x00f3
                    00F3    472 _B_3	=	0x00f3
                    00F4    473 Ftest_i2c$B_4$0$0 == 0x00f4
                    00F4    474 _B_4	=	0x00f4
                    00F5    475 Ftest_i2c$B_5$0$0 == 0x00f5
                    00F5    476 _B_5	=	0x00f5
                    00F6    477 Ftest_i2c$B_6$0$0 == 0x00f6
                    00F6    478 _B_6	=	0x00f6
                    00F7    479 Ftest_i2c$B_7$0$0 == 0x00f7
                    00F7    480 _B_7	=	0x00f7
                    00F8    481 Ftest_i2c$U1ACTIVE$0$0 == 0x00f8
                    00F8    482 _U1ACTIVE	=	0x00f8
                    00F9    483 Ftest_i2c$U1TX_BYTE$0$0 == 0x00f9
                    00F9    484 _U1TX_BYTE	=	0x00f9
                    00FA    485 Ftest_i2c$U1RX_BYTE$0$0 == 0x00fa
                    00FA    486 _U1RX_BYTE	=	0x00fa
                    00FB    487 Ftest_i2c$U1ERR$0$0 == 0x00fb
                    00FB    488 _U1ERR	=	0x00fb
                    00FC    489 Ftest_i2c$U1FE$0$0 == 0x00fc
                    00FC    490 _U1FE	=	0x00fc
                    00FD    491 Ftest_i2c$U1SLAVE$0$0 == 0x00fd
                    00FD    492 _U1SLAVE	=	0x00fd
                    00FE    493 Ftest_i2c$U1RE$0$0 == 0x00fe
                    00FE    494 _U1RE	=	0x00fe
                    00FF    495 Ftest_i2c$U1MODE$0$0 == 0x00ff
                    00FF    496 _U1MODE	=	0x00ff
                            497 ;--------------------------------------------------------
                            498 ; overlayable register banks
                            499 ;--------------------------------------------------------
                            500 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     501 	.ds 8
                            502 ;--------------------------------------------------------
                            503 ; internal ram data
                            504 ;--------------------------------------------------------
                            505 	.area DSEG    (DATA)
                    0000    506 G$operationalTimeStamp$0$0==.
   0010                     507 _operationalTimeStamp::
   0010                     508 	.ds 4
                    0004    509 G$tempTimeStamp$0$0==.
   0014                     510 _tempTimeStamp::
   0014                     511 	.ds 4
                            512 ;--------------------------------------------------------
                            513 ; overlayable items in internal ram 
                            514 ;--------------------------------------------------------
                            515 	.area OSEG    (OVR,DATA)
                            516 ;--------------------------------------------------------
                            517 ; Stack segment in internal ram 
                            518 ;--------------------------------------------------------
                            519 	.area	SSEG	(DATA)
   0027                     520 __start__stack:
   0027                     521 	.ds	1
                            522 
                            523 ;--------------------------------------------------------
                            524 ; indirectly addressable internal ram data
                            525 ;--------------------------------------------------------
                            526 	.area ISEG    (DATA)
                            527 ;--------------------------------------------------------
                            528 ; absolute internal ram data
                            529 ;--------------------------------------------------------
                            530 	.area IABS    (ABS,DATA)
                            531 	.area IABS    (ABS,DATA)
                            532 ;--------------------------------------------------------
                            533 ; bit data
                            534 ;--------------------------------------------------------
                            535 	.area BSEG    (BIT)
                            536 ;--------------------------------------------------------
                            537 ; paged external ram data
                            538 ;--------------------------------------------------------
                            539 	.area PSEG    (PAG,XDATA)
                    0000    540 G$nacks$0$0==.
   F000                     541 _nacks::
   F000                     542 	.ds 10
                    000A    543 G$transfers$0$0==.
   F00A                     544 _transfers::
   F00A                     545 	.ds 40
                    0032    546 LreportResults$ns$1$1==.
   F032                     547 _reportResults_PARM_2:
   F032                     548 	.ds 1
                    0033    549 LreportResults$testNum$1$1==.
   F033                     550 _reportResults_PARM_3:
   F033                     551 	.ds 1
                    0034    552 LreportResults$time$1$1==.
   F034                     553 _reportResults_PARM_4:
   F034                     554 	.ds 1
                    0035    555 LreportResults$transPerSecond$2$2==.
   F035                     556 _reportResults_transPerSecond_2_2:
   F035                     557 	.ds 4
                    0039    558 LreportResults$dataRateKbps$2$2==.
   F039                     559 _reportResults_dataRateKbps_2_2:
   F039                     560 	.ds 4
                            561 ;--------------------------------------------------------
                            562 ; external ram data
                            563 ;--------------------------------------------------------
                            564 	.area XSEG    (XDATA)
                    DF00    565 Ftest_i2c$SYNC1$0$0 == 0xdf00
                    DF00    566 _SYNC1	=	0xdf00
                    DF01    567 Ftest_i2c$SYNC0$0$0 == 0xdf01
                    DF01    568 _SYNC0	=	0xdf01
                    DF02    569 Ftest_i2c$PKTLEN$0$0 == 0xdf02
                    DF02    570 _PKTLEN	=	0xdf02
                    DF03    571 Ftest_i2c$PKTCTRL1$0$0 == 0xdf03
                    DF03    572 _PKTCTRL1	=	0xdf03
                    DF04    573 Ftest_i2c$PKTCTRL0$0$0 == 0xdf04
                    DF04    574 _PKTCTRL0	=	0xdf04
                    DF05    575 Ftest_i2c$ADDR$0$0 == 0xdf05
                    DF05    576 _ADDR	=	0xdf05
                    DF06    577 Ftest_i2c$CHANNR$0$0 == 0xdf06
                    DF06    578 _CHANNR	=	0xdf06
                    DF07    579 Ftest_i2c$FSCTRL1$0$0 == 0xdf07
                    DF07    580 _FSCTRL1	=	0xdf07
                    DF08    581 Ftest_i2c$FSCTRL0$0$0 == 0xdf08
                    DF08    582 _FSCTRL0	=	0xdf08
                    DF09    583 Ftest_i2c$FREQ2$0$0 == 0xdf09
                    DF09    584 _FREQ2	=	0xdf09
                    DF0A    585 Ftest_i2c$FREQ1$0$0 == 0xdf0a
                    DF0A    586 _FREQ1	=	0xdf0a
                    DF0B    587 Ftest_i2c$FREQ0$0$0 == 0xdf0b
                    DF0B    588 _FREQ0	=	0xdf0b
                    DF0C    589 Ftest_i2c$MDMCFG4$0$0 == 0xdf0c
                    DF0C    590 _MDMCFG4	=	0xdf0c
                    DF0D    591 Ftest_i2c$MDMCFG3$0$0 == 0xdf0d
                    DF0D    592 _MDMCFG3	=	0xdf0d
                    DF0E    593 Ftest_i2c$MDMCFG2$0$0 == 0xdf0e
                    DF0E    594 _MDMCFG2	=	0xdf0e
                    DF0F    595 Ftest_i2c$MDMCFG1$0$0 == 0xdf0f
                    DF0F    596 _MDMCFG1	=	0xdf0f
                    DF10    597 Ftest_i2c$MDMCFG0$0$0 == 0xdf10
                    DF10    598 _MDMCFG0	=	0xdf10
                    DF11    599 Ftest_i2c$DEVIATN$0$0 == 0xdf11
                    DF11    600 _DEVIATN	=	0xdf11
                    DF12    601 Ftest_i2c$MCSM2$0$0 == 0xdf12
                    DF12    602 _MCSM2	=	0xdf12
                    DF13    603 Ftest_i2c$MCSM1$0$0 == 0xdf13
                    DF13    604 _MCSM1	=	0xdf13
                    DF14    605 Ftest_i2c$MCSM0$0$0 == 0xdf14
                    DF14    606 _MCSM0	=	0xdf14
                    DF15    607 Ftest_i2c$FOCCFG$0$0 == 0xdf15
                    DF15    608 _FOCCFG	=	0xdf15
                    DF16    609 Ftest_i2c$BSCFG$0$0 == 0xdf16
                    DF16    610 _BSCFG	=	0xdf16
                    DF17    611 Ftest_i2c$AGCCTRL2$0$0 == 0xdf17
                    DF17    612 _AGCCTRL2	=	0xdf17
                    DF18    613 Ftest_i2c$AGCCTRL1$0$0 == 0xdf18
                    DF18    614 _AGCCTRL1	=	0xdf18
                    DF19    615 Ftest_i2c$AGCCTRL0$0$0 == 0xdf19
                    DF19    616 _AGCCTRL0	=	0xdf19
                    DF1A    617 Ftest_i2c$FREND1$0$0 == 0xdf1a
                    DF1A    618 _FREND1	=	0xdf1a
                    DF1B    619 Ftest_i2c$FREND0$0$0 == 0xdf1b
                    DF1B    620 _FREND0	=	0xdf1b
                    DF1C    621 Ftest_i2c$FSCAL3$0$0 == 0xdf1c
                    DF1C    622 _FSCAL3	=	0xdf1c
                    DF1D    623 Ftest_i2c$FSCAL2$0$0 == 0xdf1d
                    DF1D    624 _FSCAL2	=	0xdf1d
                    DF1E    625 Ftest_i2c$FSCAL1$0$0 == 0xdf1e
                    DF1E    626 _FSCAL1	=	0xdf1e
                    DF1F    627 Ftest_i2c$FSCAL0$0$0 == 0xdf1f
                    DF1F    628 _FSCAL0	=	0xdf1f
                    DF23    629 Ftest_i2c$TEST2$0$0 == 0xdf23
                    DF23    630 _TEST2	=	0xdf23
                    DF24    631 Ftest_i2c$TEST1$0$0 == 0xdf24
                    DF24    632 _TEST1	=	0xdf24
                    DF25    633 Ftest_i2c$TEST0$0$0 == 0xdf25
                    DF25    634 _TEST0	=	0xdf25
                    DF2E    635 Ftest_i2c$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    636 _PA_TABLE0	=	0xdf2e
                    DF2F    637 Ftest_i2c$IOCFG2$0$0 == 0xdf2f
                    DF2F    638 _IOCFG2	=	0xdf2f
                    DF30    639 Ftest_i2c$IOCFG1$0$0 == 0xdf30
                    DF30    640 _IOCFG1	=	0xdf30
                    DF31    641 Ftest_i2c$IOCFG0$0$0 == 0xdf31
                    DF31    642 _IOCFG0	=	0xdf31
                    DF36    643 Ftest_i2c$PARTNUM$0$0 == 0xdf36
                    DF36    644 _PARTNUM	=	0xdf36
                    DF37    645 Ftest_i2c$VERSION$0$0 == 0xdf37
                    DF37    646 _VERSION	=	0xdf37
                    DF38    647 Ftest_i2c$FREQEST$0$0 == 0xdf38
                    DF38    648 _FREQEST	=	0xdf38
                    DF39    649 Ftest_i2c$LQI$0$0 == 0xdf39
                    DF39    650 _LQI	=	0xdf39
                    DF3A    651 Ftest_i2c$RSSI$0$0 == 0xdf3a
                    DF3A    652 _RSSI	=	0xdf3a
                    DF3B    653 Ftest_i2c$MARCSTATE$0$0 == 0xdf3b
                    DF3B    654 _MARCSTATE	=	0xdf3b
                    DF3C    655 Ftest_i2c$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    656 _PKTSTATUS	=	0xdf3c
                    DF3D    657 Ftest_i2c$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    658 _VCO_VC_DAC	=	0xdf3d
                    DF40    659 Ftest_i2c$I2SCFG0$0$0 == 0xdf40
                    DF40    660 _I2SCFG0	=	0xdf40
                    DF41    661 Ftest_i2c$I2SCFG1$0$0 == 0xdf41
                    DF41    662 _I2SCFG1	=	0xdf41
                    DF42    663 Ftest_i2c$I2SDATL$0$0 == 0xdf42
                    DF42    664 _I2SDATL	=	0xdf42
                    DF43    665 Ftest_i2c$I2SDATH$0$0 == 0xdf43
                    DF43    666 _I2SDATH	=	0xdf43
                    DF44    667 Ftest_i2c$I2SWCNT$0$0 == 0xdf44
                    DF44    668 _I2SWCNT	=	0xdf44
                    DF45    669 Ftest_i2c$I2SSTAT$0$0 == 0xdf45
                    DF45    670 _I2SSTAT	=	0xdf45
                    DF46    671 Ftest_i2c$I2SCLKF0$0$0 == 0xdf46
                    DF46    672 _I2SCLKF0	=	0xdf46
                    DF47    673 Ftest_i2c$I2SCLKF1$0$0 == 0xdf47
                    DF47    674 _I2SCLKF1	=	0xdf47
                    DF48    675 Ftest_i2c$I2SCLKF2$0$0 == 0xdf48
                    DF48    676 _I2SCLKF2	=	0xdf48
                    DE00    677 Ftest_i2c$USBADDR$0$0 == 0xde00
                    DE00    678 _USBADDR	=	0xde00
                    DE01    679 Ftest_i2c$USBPOW$0$0 == 0xde01
                    DE01    680 _USBPOW	=	0xde01
                    DE02    681 Ftest_i2c$USBIIF$0$0 == 0xde02
                    DE02    682 _USBIIF	=	0xde02
                    DE04    683 Ftest_i2c$USBOIF$0$0 == 0xde04
                    DE04    684 _USBOIF	=	0xde04
                    DE06    685 Ftest_i2c$USBCIF$0$0 == 0xde06
                    DE06    686 _USBCIF	=	0xde06
                    DE07    687 Ftest_i2c$USBIIE$0$0 == 0xde07
                    DE07    688 _USBIIE	=	0xde07
                    DE09    689 Ftest_i2c$USBOIE$0$0 == 0xde09
                    DE09    690 _USBOIE	=	0xde09
                    DE0B    691 Ftest_i2c$USBCIE$0$0 == 0xde0b
                    DE0B    692 _USBCIE	=	0xde0b
                    DE0C    693 Ftest_i2c$USBFRML$0$0 == 0xde0c
                    DE0C    694 _USBFRML	=	0xde0c
                    DE0D    695 Ftest_i2c$USBFRMH$0$0 == 0xde0d
                    DE0D    696 _USBFRMH	=	0xde0d
                    DE0E    697 Ftest_i2c$USBINDEX$0$0 == 0xde0e
                    DE0E    698 _USBINDEX	=	0xde0e
                    DE10    699 Ftest_i2c$USBMAXI$0$0 == 0xde10
                    DE10    700 _USBMAXI	=	0xde10
                    DE11    701 Ftest_i2c$USBCSIL$0$0 == 0xde11
                    DE11    702 _USBCSIL	=	0xde11
                    DE12    703 Ftest_i2c$USBCSIH$0$0 == 0xde12
                    DE12    704 _USBCSIH	=	0xde12
                    DE13    705 Ftest_i2c$USBMAXO$0$0 == 0xde13
                    DE13    706 _USBMAXO	=	0xde13
                    DE14    707 Ftest_i2c$USBCSOL$0$0 == 0xde14
                    DE14    708 _USBCSOL	=	0xde14
                    DE15    709 Ftest_i2c$USBCSOH$0$0 == 0xde15
                    DE15    710 _USBCSOH	=	0xde15
                    DE16    711 Ftest_i2c$USBCNTL$0$0 == 0xde16
                    DE16    712 _USBCNTL	=	0xde16
                    DE17    713 Ftest_i2c$USBCNTH$0$0 == 0xde17
                    DE17    714 _USBCNTH	=	0xde17
                    DE20    715 Ftest_i2c$USBF0$0$0 == 0xde20
                    DE20    716 _USBF0	=	0xde20
                    DE22    717 Ftest_i2c$USBF1$0$0 == 0xde22
                    DE22    718 _USBF1	=	0xde22
                    DE24    719 Ftest_i2c$USBF2$0$0 == 0xde24
                    DE24    720 _USBF2	=	0xde24
                    DE26    721 Ftest_i2c$USBF3$0$0 == 0xde26
                    DE26    722 _USBF3	=	0xde26
                    DE28    723 Ftest_i2c$USBF4$0$0 == 0xde28
                    DE28    724 _USBF4	=	0xde28
                    DE2A    725 Ftest_i2c$USBF5$0$0 == 0xde2a
                    DE2A    726 _USBF5	=	0xde2a
                    0000    727 LreportResults$buffer$2$2==.
   F093                     728 _reportResults_buffer_2_2:
   F093                     729 	.ds 64
                            730 ;--------------------------------------------------------
                            731 ; absolute external ram data
                            732 ;--------------------------------------------------------
                            733 	.area XABS    (ABS,XDATA)
                            734 ;--------------------------------------------------------
                            735 ; external initialized ram data
                            736 ;--------------------------------------------------------
                            737 	.area XISEG   (XDATA)
                            738 	.area HOME    (CODE)
                            739 	.area GSINIT0 (CODE)
                            740 	.area GSINIT1 (CODE)
                            741 	.area GSINIT2 (CODE)
                            742 	.area GSINIT3 (CODE)
                            743 	.area GSINIT4 (CODE)
                            744 	.area GSINIT5 (CODE)
                            745 	.area GSINIT  (CODE)
                            746 	.area GSFINAL (CODE)
                            747 	.area CSEG    (CODE)
                            748 ;--------------------------------------------------------
                            749 ; interrupt vector 
                            750 ;--------------------------------------------------------
                            751 	.area HOME    (CODE)
   0400                     752 __interrupt_vect:
   0400 02 04 6D            753 	ljmp	__sdcc_gsinit_startup
   0403 32                  754 	reti
   0404                     755 	.ds	7
   040B 32                  756 	reti
   040C                     757 	.ds	7
   0413 32                  758 	reti
   0414                     759 	.ds	7
   041B 32                  760 	reti
   041C                     761 	.ds	7
   0423 32                  762 	reti
   0424                     763 	.ds	7
   042B 32                  764 	reti
   042C                     765 	.ds	7
   0433 32                  766 	reti
   0434                     767 	.ds	7
   043B 32                  768 	reti
   043C                     769 	.ds	7
   0443 32                  770 	reti
   0444                     771 	.ds	7
   044B 32                  772 	reti
   044C                     773 	.ds	7
   0453 32                  774 	reti
   0454                     775 	.ds	7
   045B 32                  776 	reti
   045C                     777 	.ds	7
   0463 02 14 39            778 	ljmp	_ISR_T4
                            779 ;--------------------------------------------------------
                            780 ; global & static initialisations
                            781 ;--------------------------------------------------------
                            782 	.area HOME    (CODE)
                            783 	.area GSINIT  (CODE)
                            784 	.area GSFINAL (CODE)
                            785 	.area GSINIT  (CODE)
                            786 	.globl __sdcc_gsinit_startup
                            787 	.globl __sdcc_program_startup
                            788 	.globl __start__stack
                            789 	.globl __mcs51_genXINIT
                            790 	.globl __mcs51_genXRAMCLEAR
                            791 	.globl __mcs51_genRAMCLEAR
                            792 	.area GSFINAL (CODE)
   04FA 02 04 66            793 	ljmp	__sdcc_program_startup
                            794 ;--------------------------------------------------------
                            795 ; Home
                            796 ;--------------------------------------------------------
                            797 	.area HOME    (CODE)
                            798 	.area HOME    (CODE)
   0466                     799 __sdcc_program_startup:
   0466 12 06 72            800 	lcall	_main
                            801 ;	return from main will lock up
   0469 80 FE               802 	sjmp .
                            803 ;--------------------------------------------------------
                            804 ; code
                            805 ;--------------------------------------------------------
                            806 	.area CSEG    (CODE)
                            807 ;------------------------------------------------------------
                            808 ;Allocation info for local variables in function 'updateLeds'
                            809 ;------------------------------------------------------------
                            810 ;------------------------------------------------------------
                    0000    811 	G$updateLeds$0$0 ==.
                    0000    812 	C$test_i2c.c$52$0$0 ==.
                            813 ;	src/test_i2c/test_i2c.c:52: void updateLeds()
                            814 ;	-----------------------------------------
                            815 ;	 function updateLeds
                            816 ;	-----------------------------------------
   04FD                     817 _updateLeds:
                    0002    818 	ar2 = 0x02
                    0003    819 	ar3 = 0x03
                    0004    820 	ar4 = 0x04
                    0005    821 	ar5 = 0x05
                    0006    822 	ar6 = 0x06
                    0007    823 	ar7 = 0x07
                    0000    824 	ar0 = 0x00
                    0001    825 	ar1 = 0x01
                    0000    826 	C$test_i2c.c$54$1$1 ==.
                            827 ;	src/test_i2c/test_i2c.c:54: usbShowStatusWithGreenLed();
   04FD 12 15 B2            828 	lcall	_usbShowStatusWithGreenLed
                    0003    829 	C$test_i2c.c$55$2$2 ==.
                            830 ;	src/test_i2c/test_i2c.c:55: LED_YELLOW(vinPowerPresent());
   0500 12 12 C7            831 	lcall	_vinPowerPresent
   0503 50 05               832 	jnc	00105$
   0505 43 FF 04            833 	orl	_P2DIR,#0x04
   0508 80 03               834 	sjmp	00106$
   050A                     835 00105$:
   050A 53 FF FB            836 	anl	_P2DIR,#0xFB
   050D                     837 00106$:
                    0010    838 	C$test_i2c.c$57$1$1 ==.
                            839 ;	src/test_i2c/test_i2c.c:57: if (getMs() - operationalTimeStamp > 50)
   050D 12 14 18            840 	lcall	_getMs
   0510 AA 82               841 	mov	r2,dpl
   0512 AB 83               842 	mov	r3,dph
   0514 AC F0               843 	mov	r4,b
   0516 FD                  844 	mov	r5,a
   0517 EA                  845 	mov	a,r2
   0518 C3                  846 	clr	c
   0519 95 10               847 	subb	a,_operationalTimeStamp
   051B FA                  848 	mov	r2,a
   051C EB                  849 	mov	a,r3
   051D 95 11               850 	subb	a,(_operationalTimeStamp + 1)
   051F FB                  851 	mov	r3,a
   0520 EC                  852 	mov	a,r4
   0521 95 12               853 	subb	a,(_operationalTimeStamp + 2)
   0523 FC                  854 	mov	r4,a
   0524 ED                  855 	mov	a,r5
   0525 95 13               856 	subb	a,(_operationalTimeStamp + 3)
   0527 FD                  857 	mov	r5,a
   0528 C3                  858 	clr	c
   0529 74 32               859 	mov	a,#0x32
   052B 9A                  860 	subb	a,r2
   052C E4                  861 	clr	a
   052D 9B                  862 	subb	a,r3
   052E E4                  863 	clr	a
   052F 9C                  864 	subb	a,r4
   0530 E4                  865 	clr	a
   0531 9D                  866 	subb	a,r5
   0532 50 11               867 	jnc	00103$
                    0037    868 	C$test_i2c.c$60$2$3 ==.
                            869 ;	src/test_i2c/test_i2c.c:60: operationalTimeStamp = getMs();
   0534 12 14 18            870 	lcall	_getMs
   0537 85 82 10            871 	mov	_operationalTimeStamp,dpl
   053A 85 83 11            872 	mov	(_operationalTimeStamp + 1),dph
   053D 85 F0 12            873 	mov	(_operationalTimeStamp + 2),b
   0540 F5 13               874 	mov	(_operationalTimeStamp + 3),a
                    0045    875 	C$test_i2c.c$62$3$4 ==.
                            876 ;	src/test_i2c/test_i2c.c:62: LED_RED_TOGGLE();
   0542 63 FF 02            877 	xrl	_P2DIR,#0x02
   0545                     878 00103$:
                    0048    879 	C$test_i2c.c$64$3$1 ==.
                    0048    880 	XG$updateLeds$0$0 ==.
   0545 22                  881 	ret
                            882 ;------------------------------------------------------------
                            883 ;Allocation info for local variables in function 'reportResults'
                            884 ;------------------------------------------------------------
                            885 ;buffer                    Allocated with name '_reportResults_buffer_2_2'
                            886 ;------------------------------------------------------------
                    0049    887 	G$reportResults$0$0 ==.
                    0049    888 	C$test_i2c.c$66$3$1 ==.
                            889 ;	src/test_i2c/test_i2c.c:66: void reportResults(uint32 ts, uint8 ns, uint8 testNum, uint8 time)
                            890 ;	-----------------------------------------
                            891 ;	 function reportResults
                            892 ;	-----------------------------------------
   0546                     893 _reportResults:
   0546 AA 82               894 	mov	r2,dpl
   0548 AB 83               895 	mov	r3,dph
   054A AC F0               896 	mov	r4,b
   054C FD                  897 	mov	r5,a
                    0050    898 	C$test_i2c.c$68$1$1 ==.
                            899 ;	src/test_i2c/test_i2c.c:68: if (usbComTxAvailable() > 64)
   054D C0 02               900 	push	ar2
   054F C0 03               901 	push	ar3
   0551 C0 04               902 	push	ar4
   0553 C0 05               903 	push	ar5
   0555 12 0A E7            904 	lcall	_usbComTxAvailable
   0558 AE 82               905 	mov	r6,dpl
   055A D0 05               906 	pop	ar5
   055C D0 04               907 	pop	ar4
   055E D0 03               908 	pop	ar3
   0560 D0 02               909 	pop	ar2
   0562 74 40               910 	mov	a,#0x40
   0564 B5 06 00            911 	cjne	a,ar6,00106$
   0567                     912 00106$:
   0567 40 01               913 	jc	00107$
   0569 22                  914 	ret
   056A                     915 00107$:
                    006D    916 	C$test_i2c.c$73$2$2 ==.
                            917 ;	src/test_i2c/test_i2c.c:73: uint32 transPerSecond = (uint32) (ts / time);
   056A 78 34               918 	mov	r0,#_reportResults_PARM_4
   056C 79 3D               919 	mov	r1,#__divulong_PARM_2
   056E E2                  920 	movx	a,@r0
   056F F3                  921 	movx	@r1,a
   0570 09                  922 	inc	r1
   0571 E4                  923 	clr	a
   0572 F3                  924 	movx	@r1,a
   0573 09                  925 	inc	r1
   0574 F3                  926 	movx	@r1,a
   0575 09                  927 	inc	r1
   0576 F3                  928 	movx	@r1,a
   0577 8A 82               929 	mov	dpl,r2
   0579 8B 83               930 	mov	dph,r3
   057B 8C F0               931 	mov	b,r4
   057D ED                  932 	mov	a,r5
   057E C0 02               933 	push	ar2
   0580 C0 03               934 	push	ar3
   0582 C0 04               935 	push	ar4
   0584 C0 05               936 	push	ar5
   0586 12 08 65            937 	lcall	__divulong
   0589 78 35               938 	mov	r0,#_reportResults_transPerSecond_2_2
   058B C0 E0               939 	push	acc
   058D E5 82               940 	mov	a,dpl
   058F F2                  941 	movx	@r0,a
   0590 08                  942 	inc	r0
   0591 E5 83               943 	mov	a,dph
   0593 F2                  944 	movx	@r0,a
   0594 08                  945 	inc	r0
   0595 E5 F0               946 	mov	a,b
   0597 F2                  947 	movx	@r0,a
   0598 D0 E0               948 	pop	acc
   059A 08                  949 	inc	r0
   059B F2                  950 	movx	@r0,a
   059C D0 05               951 	pop	ar5
   059E D0 04               952 	pop	ar4
   05A0 D0 03               953 	pop	ar3
   05A2 D0 02               954 	pop	ar2
                    00A7    955 	C$test_i2c.c$74$2$1 ==.
                            956 ;	src/test_i2c/test_i2c.c:74: uint32 dataRateKbps = (uint32) ((ts * 24) / (time * 1000));
   05A4 78 5D               957 	mov	r0,#__mullong_PARM_2
   05A6 EA                  958 	mov	a,r2
   05A7 F2                  959 	movx	@r0,a
   05A8 08                  960 	inc	r0
   05A9 EB                  961 	mov	a,r3
   05AA F2                  962 	movx	@r0,a
   05AB 08                  963 	inc	r0
   05AC EC                  964 	mov	a,r4
   05AD F2                  965 	movx	@r0,a
   05AE 08                  966 	inc	r0
   05AF ED                  967 	mov	a,r5
   05B0 F2                  968 	movx	@r0,a
   05B1 90 00 18            969 	mov	dptr,#(0x18&0x00ff)
   05B4 E4                  970 	clr	a
   05B5 F5 F0               971 	mov	b,a
   05B7 12 12 F4            972 	lcall	__mullong
   05BA AA 82               973 	mov	r2,dpl
   05BC AB 83               974 	mov	r3,dph
   05BE AC F0               975 	mov	r4,b
   05C0 FD                  976 	mov	r5,a
   05C1 78 34               977 	mov	r0,#_reportResults_PARM_4
   05C3 79 5B               978 	mov	r1,#__mulint_PARM_2
   05C5 E2                  979 	movx	a,@r0
   05C6 F3                  980 	movx	@r1,a
   05C7 09                  981 	inc	r1
   05C8 E4                  982 	clr	a
   05C9 F3                  983 	movx	@r1,a
   05CA 90 03 E8            984 	mov	dptr,#0x03E8
   05CD C0 02               985 	push	ar2
   05CF C0 03               986 	push	ar3
   05D1 C0 04               987 	push	ar4
   05D3 C0 05               988 	push	ar5
   05D5 12 12 D4            989 	lcall	__mulint
   05D8 AE 82               990 	mov	r6,dpl
   05DA AF 83               991 	mov	r7,dph
   05DC D0 05               992 	pop	ar5
   05DE D0 04               993 	pop	ar4
   05E0 D0 03               994 	pop	ar3
   05E2 D0 02               995 	pop	ar2
   05E4 78 3D               996 	mov	r0,#__divulong_PARM_2
   05E6 EE                  997 	mov	a,r6
   05E7 F2                  998 	movx	@r0,a
   05E8 08                  999 	inc	r0
   05E9 EF                 1000 	mov	a,r7
   05EA F2                 1001 	movx	@r0,a
   05EB EF                 1002 	mov	a,r7
   05EC 33                 1003 	rlc	a
   05ED 95 E0              1004 	subb	a,acc
   05EF 08                 1005 	inc	r0
   05F0 F2                 1006 	movx	@r0,a
   05F1 08                 1007 	inc	r0
   05F2 F2                 1008 	movx	@r0,a
   05F3 8A 82              1009 	mov	dpl,r2
   05F5 8B 83              1010 	mov	dph,r3
   05F7 8C F0              1011 	mov	b,r4
   05F9 ED                 1012 	mov	a,r5
   05FA 12 08 65           1013 	lcall	__divulong
   05FD 78 39              1014 	mov	r0,#_reportResults_dataRateKbps_2_2
   05FF C0 E0              1015 	push	acc
   0601 E5 82              1016 	mov	a,dpl
   0603 F2                 1017 	movx	@r0,a
   0604 08                 1018 	inc	r0
   0605 E5 83              1019 	mov	a,dph
   0607 F2                 1020 	movx	@r0,a
   0608 08                 1021 	inc	r0
   0609 E5 F0              1022 	mov	a,b
   060B F2                 1023 	movx	@r0,a
   060C D0 E0              1024 	pop	acc
   060E 08                 1025 	inc	r0
   060F F2                 1026 	movx	@r0,a
                    0113   1027 	C$test_i2c.c$80$2$2 ==.
                           1028 ;	src/test_i2c/test_i2c.c:80: transPerSecond, dataRateKbps, ns, testNum);
   0610 78 33              1029 	mov	r0,#_reportResults_PARM_3
   0612 E2                 1030 	movx	a,@r0
   0613 FE                 1031 	mov	r6,a
   0614 7F 00              1032 	mov	r7,#0x00
   0616 78 32              1033 	mov	r0,#_reportResults_PARM_2
   0618 E2                 1034 	movx	a,@r0
   0619 FA                 1035 	mov	r2,a
   061A 7B 00              1036 	mov	r3,#0x00
                    011F   1037 	C$test_i2c.c$79$2$2 ==.
                           1038 ;	src/test_i2c/test_i2c.c:79: "nacks: %d        Test: %d \r\n\r\n",
                    011F   1039 	C$test_i2c.c$77$2$2 ==.
                           1040 ;	src/test_i2c/test_i2c.c:77: buffer, "Transmissions/second: %Lu x "
   061C C0 06              1041 	push	ar6
   061E C0 07              1042 	push	ar7
   0620 C0 02              1043 	push	ar2
   0622 C0 03              1044 	push	ar3
   0624 78 39              1045 	mov	r0,#_reportResults_dataRateKbps_2_2
   0626 E2                 1046 	movx	a,@r0
   0627 C0 E0              1047 	push	acc
   0629 08                 1048 	inc	r0
   062A E2                 1049 	movx	a,@r0
   062B C0 E0              1050 	push	acc
   062D 08                 1051 	inc	r0
   062E E2                 1052 	movx	a,@r0
   062F C0 E0              1053 	push	acc
   0631 08                 1054 	inc	r0
   0632 E2                 1055 	movx	a,@r0
   0633 C0 E0              1056 	push	acc
   0635 78 35              1057 	mov	r0,#_reportResults_transPerSecond_2_2
   0637 E2                 1058 	movx	a,@r0
   0638 C0 E0              1059 	push	acc
   063A 08                 1060 	inc	r0
   063B E2                 1061 	movx	a,@r0
   063C C0 E0              1062 	push	acc
   063E 08                 1063 	inc	r0
   063F E2                 1064 	movx	a,@r0
   0640 C0 E0              1065 	push	acc
   0642 08                 1066 	inc	r0
   0643 E2                 1067 	movx	a,@r0
   0644 C0 E0              1068 	push	acc
   0646 74 8C              1069 	mov	a,#__str_0
   0648 C0 E0              1070 	push	acc
   064A 74 1D              1071 	mov	a,#(__str_0 >> 8)
   064C C0 E0              1072 	push	acc
   064E 74 80              1073 	mov	a,#0x80
   0650 C0 E0              1074 	push	acc
   0652 74 93              1075 	mov	a,#_reportResults_buffer_2_2
   0654 C0 E0              1076 	push	acc
   0656 74 F0              1077 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   0658 C0 E0              1078 	push	acc
   065A E4                 1079 	clr	a
   065B C0 E0              1080 	push	acc
   065D 12 15 5D           1081 	lcall	_sprintf
   0660 AA 82              1082 	mov	r2,dpl
   0662 E5 81              1083 	mov	a,sp
   0664 24 EE              1084 	add	a,#0xee
   0666 F5 81              1085 	mov	sp,a
   0668 78 4B              1086 	mov	r0,#_usbComTxSend_PARM_2
   066A EA                 1087 	mov	a,r2
   066B F2                 1088 	movx	@r0,a
                    016F   1089 	C$test_i2c.c$82$2$2 ==.
                           1090 ;	src/test_i2c/test_i2c.c:82: usbComTxSend(buffer, bufferLength);
   066C 90 F0 93           1091 	mov	dptr,#_reportResults_buffer_2_2
                    0172   1092 	C$test_i2c.c$84$2$1 ==.
                    0172   1093 	XG$reportResults$0$0 ==.
   066F 02 0B 1B           1094 	ljmp	_usbComTxSend
                           1095 ;------------------------------------------------------------
                           1096 ;Allocation info for local variables in function 'main'
                           1097 ;------------------------------------------------------------
                           1098 ;------------------------------------------------------------
                    0175   1099 	G$main$0$0 ==.
                    0175   1100 	C$test_i2c.c$88$2$1 ==.
                           1101 ;	src/test_i2c/test_i2c.c:88: void main()
                           1102 ;	-----------------------------------------
                           1103 ;	 function main
                           1104 ;	-----------------------------------------
   0672                    1105 _main:
                    0175   1106 	C$test_i2c.c$93$1$1 ==.
                           1107 ;	src/test_i2c/test_i2c.c:93: systemInit();
   0672 12 12 15           1108 	lcall	_systemInit
                    0178   1109 	C$test_i2c.c$94$1$1 ==.
                           1110 ;	src/test_i2c/test_i2c.c:94: usbInit();
   0675 12 0B E1           1111 	lcall	_usbInit
                    017B   1112 	C$test_i2c.c$95$1$1 ==.
                           1113 ;	src/test_i2c/test_i2c.c:95: dacInit();
   0678 12 0B A2           1114 	lcall	_dacInit
                    017E   1115 	C$test_i2c.c$97$1$1 ==.
                           1116 ;	src/test_i2c/test_i2c.c:97: tempTimeStamp = getMs();
   067B 12 14 18           1117 	lcall	_getMs
   067E 85 82 14           1118 	mov	_tempTimeStamp,dpl
   0681 85 83 15           1119 	mov	(_tempTimeStamp + 1),dph
   0684 85 F0 16           1120 	mov	(_tempTimeStamp + 2),b
   0687 F5 17              1121 	mov	(_tempTimeStamp + 3),a
                    018C   1122 	C$test_i2c.c$100$1$1 ==.
                           1123 ;	src/test_i2c/test_i2c.c:100: while (getMs() - tempTimeStamp < 4000)
   0689                    1124 00101$:
   0689 12 14 18           1125 	lcall	_getMs
   068C AA 82              1126 	mov	r2,dpl
   068E AB 83              1127 	mov	r3,dph
   0690 AC F0              1128 	mov	r4,b
   0692 FD                 1129 	mov	r5,a
   0693 EA                 1130 	mov	a,r2
   0694 C3                 1131 	clr	c
   0695 95 14              1132 	subb	a,_tempTimeStamp
   0697 FA                 1133 	mov	r2,a
   0698 EB                 1134 	mov	a,r3
   0699 95 15              1135 	subb	a,(_tempTimeStamp + 1)
   069B FB                 1136 	mov	r3,a
   069C EC                 1137 	mov	a,r4
   069D 95 16              1138 	subb	a,(_tempTimeStamp + 2)
   069F FC                 1139 	mov	r4,a
   06A0 ED                 1140 	mov	a,r5
   06A1 95 17              1141 	subb	a,(_tempTimeStamp + 3)
   06A3 FD                 1142 	mov	r5,a
   06A4 C3                 1143 	clr	c
   06A5 EA                 1144 	mov	a,r2
   06A6 94 A0              1145 	subb	a,#0xA0
   06A8 EB                 1146 	mov	a,r3
   06A9 94 0F              1147 	subb	a,#0x0F
   06AB EC                 1148 	mov	a,r4
   06AC 94 00              1149 	subb	a,#0x00
   06AE ED                 1150 	mov	a,r5
   06AF 94 00              1151 	subb	a,#0x00
   06B1 50 0B              1152 	jnc	00127$
                    01B6   1153 	C$test_i2c.c$102$2$2 ==.
                           1154 ;	src/test_i2c/test_i2c.c:102: updateLeds(); // blinks red LED every 50ms if we are receiving packets
   06B3 12 04 FD           1155 	lcall	_updateLeds
                    01B9   1156 	C$test_i2c.c$103$2$2 ==.
                           1157 ;	src/test_i2c/test_i2c.c:103: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
   06B6 12 12 21           1158 	lcall	_boardService
                    01BC   1159 	C$test_i2c.c$104$2$2 ==.
                           1160 ;	src/test_i2c/test_i2c.c:104: usbComService(); // so we can start bootloader from wixel config GUI
   06B9 12 0A 4E           1161 	lcall	_usbComService
                    01BF   1162 	C$test_i2c.c$107$1$1 ==.
                           1163 ;	src/test_i2c/test_i2c.c:107: for (i = 0; i < 10; i++)
   06BC 80 CB              1164 	sjmp	00101$
   06BE                    1165 00127$:
   06BE 7A 00              1166 	mov	r2,#0x00
   06C0                    1167 00116$:
   06C0 BA 0A 00           1168 	cjne	r2,#0x0A,00134$
   06C3                    1169 00134$:
   06C3 40 03              1170 	jc	00135$
   06C5 02 07 F3           1171 	ljmp	00119$
   06C8                    1172 00135$:
                    01CB   1173 	C$test_i2c.c$109$2$3 ==.
                           1174 ;	src/test_i2c/test_i2c.c:109: transfers[i] = 0;
   06C8 EA                 1175 	mov	a,r2
   06C9 2A                 1176 	add	a,r2
   06CA 25 E0              1177 	add	a,acc
   06CC FB                 1178 	mov	r3,a
   06CD 24 0A              1179 	add	a,#_transfers
   06CF F8                 1180 	mov	r0,a
   06D0 E4                 1181 	clr	a
   06D1 F2                 1182 	movx	@r0,a
   06D2 08                 1183 	inc	r0
   06D3 F2                 1184 	movx	@r0,a
   06D4 08                 1185 	inc	r0
   06D5 F2                 1186 	movx	@r0,a
   06D6 08                 1187 	inc	r0
   06D7 F2                 1188 	movx	@r0,a
                    01DB   1189 	C$test_i2c.c$110$2$3 ==.
                           1190 ;	src/test_i2c/test_i2c.c:110: nacks[i] = FALSE;
   06D8 EA                 1191 	mov	a,r2
   06D9 24 00              1192 	add	a,#_nacks
   06DB F8                 1193 	mov	r0,a
   06DC E4                 1194 	clr	a
   06DD F2                 1195 	movx	@r0,a
                    01E1   1196 	C$test_i2c.c$113$2$3 ==.
                           1197 ;	src/test_i2c/test_i2c.c:113: tempTimeStamp = getMs();
   06DE C0 02              1198 	push	ar2
   06E0 C0 03              1199 	push	ar3
   06E2 12 14 18           1200 	lcall	_getMs
   06E5 85 82 14           1201 	mov	_tempTimeStamp,dpl
   06E8 85 83 15           1202 	mov	(_tempTimeStamp + 1),dph
   06EB 85 F0 16           1203 	mov	(_tempTimeStamp + 2),b
   06EE F5 17              1204 	mov	(_tempTimeStamp + 3),a
   06F0 D0 03              1205 	pop	ar3
   06F2 D0 02              1206 	pop	ar2
                    01F7   1207 	C$test_i2c.c$114$3$4 ==.
                           1208 ;	src/test_i2c/test_i2c.c:114: while (getMs() - tempTimeStamp < 2000)
   06F4                    1209 00104$:
   06F4 C0 02              1210 	push	ar2
   06F6 C0 03              1211 	push	ar3
   06F8 12 14 18           1212 	lcall	_getMs
   06FB AC 82              1213 	mov	r4,dpl
   06FD AD 83              1214 	mov	r5,dph
   06FF AE F0              1215 	mov	r6,b
   0701 FF                 1216 	mov	r7,a
   0702 D0 03              1217 	pop	ar3
   0704 D0 02              1218 	pop	ar2
   0706 EC                 1219 	mov	a,r4
   0707 C3                 1220 	clr	c
   0708 95 14              1221 	subb	a,_tempTimeStamp
   070A FC                 1222 	mov	r4,a
   070B ED                 1223 	mov	a,r5
   070C 95 15              1224 	subb	a,(_tempTimeStamp + 1)
   070E FD                 1225 	mov	r5,a
   070F EE                 1226 	mov	a,r6
   0710 95 16              1227 	subb	a,(_tempTimeStamp + 2)
   0712 FE                 1228 	mov	r6,a
   0713 EF                 1229 	mov	a,r7
   0714 95 17              1230 	subb	a,(_tempTimeStamp + 3)
   0716 FF                 1231 	mov	r7,a
   0717 C3                 1232 	clr	c
   0718 EC                 1233 	mov	a,r4
   0719 94 D0              1234 	subb	a,#0xD0
   071B ED                 1235 	mov	a,r5
   071C 94 07              1236 	subb	a,#0x07
   071E EE                 1237 	mov	a,r6
   071F 94 00              1238 	subb	a,#0x00
   0721 EF                 1239 	mov	a,r7
   0722 94 00              1240 	subb	a,#0x00
   0724 40 03              1241 	jc	00136$
   0726 02 07 EC           1242 	ljmp	00106$
   0729                    1243 00136$:
                    022C   1244 	C$test_i2c.c$116$3$4 ==.
                           1245 ;	src/test_i2c/test_i2c.c:116: dacStart();
   0729 C0 02              1246 	push	ar2
   072B C0 03              1247 	push	ar3
   072D 12 0B B1           1248 	lcall	_dacStart
   0730 D0 03              1249 	pop	ar3
   0732 D0 02              1250 	pop	ar2
                    0237   1251 	C$test_i2c.c$117$3$4 ==.
                           1252 ;	src/test_i2c/test_i2c.c:117: nacks[i] |= dacSendByte(DAC_ADDRESS);
   0734 EA                 1253 	mov	a,r2
   0735 24 00              1254 	add	a,#_nacks
   0737 F8                 1255 	mov	r0,a
   0738 E2                 1256 	movx	a,@r0
   0739 FC                 1257 	mov	r4,a
   073A 90 1D 88           1258 	mov	dptr,#_DAC_ADDRESS
   073D E4                 1259 	clr	a
   073E 93                 1260 	movc	a,@a+dptr
   073F F5 82              1261 	mov	dpl,a
   0741 C0 02              1262 	push	ar2
   0743 C0 03              1263 	push	ar3
   0745 C0 04              1264 	push	ar4
   0747 C0 00              1265 	push	ar0
   0749 12 0B BB           1266 	lcall	_dacSendByte
   074C E4                 1267 	clr	a
   074D 33                 1268 	rlc	a
   074E FD                 1269 	mov	r5,a
   074F D0 00              1270 	pop	ar0
   0751 D0 04              1271 	pop	ar4
   0753 D0 03              1272 	pop	ar3
   0755 D0 02              1273 	pop	ar2
   0757 ED                 1274 	mov	a,r5
   0758 4C                 1275 	orl	a,r4
   0759 F2                 1276 	movx	@r0,a
                    025D   1277 	C$test_i2c.c$118$3$4 ==.
                           1278 ;	src/test_i2c/test_i2c.c:118: nacks[i] |= dacSendByte(
   075A EA                 1279 	mov	a,r2
   075B 24 00              1280 	add	a,#_nacks
   075D F8                 1281 	mov	r0,a
   075E E2                 1282 	movx	a,@r0
   075F FC                 1283 	mov	r4,a
                    0263   1284 	C$test_i2c.c$119$3$4 ==.
                           1285 ;	src/test_i2c/test_i2c.c:119: DAC_COMMAND | (uint8) ((voltage & 0xF00) >> 8));
   0760 90 1D 8A           1286 	mov	dptr,#_voltage
   0763 E4                 1287 	clr	a
   0764 93                 1288 	movc	a,@a+dptr
   0765 74 01              1289 	mov	a,#0x01
   0767 93                 1290 	movc	a,@a+dptr
   0768 FE                 1291 	mov	r6,a
   0769 53 06 0F           1292 	anl	ar6,#0x0F
   076C 8E 05              1293 	mov	ar5,r6
   076E 90 1D 89           1294 	mov	dptr,#_DAC_COMMAND
   0771 E4                 1295 	clr	a
   0772 93                 1296 	movc	a,@a+dptr
   0773 4D                 1297 	orl	a,r5
   0774 F5 82              1298 	mov	dpl,a
   0776 C0 02              1299 	push	ar2
   0778 C0 03              1300 	push	ar3
   077A C0 04              1301 	push	ar4
   077C C0 00              1302 	push	ar0
   077E 12 0B BB           1303 	lcall	_dacSendByte
   0781 E4                 1304 	clr	a
   0782 33                 1305 	rlc	a
   0783 FD                 1306 	mov	r5,a
   0784 D0 00              1307 	pop	ar0
   0786 D0 04              1308 	pop	ar4
   0788 D0 03              1309 	pop	ar3
   078A D0 02              1310 	pop	ar2
   078C ED                 1311 	mov	a,r5
   078D 4C                 1312 	orl	a,r4
   078E F2                 1313 	movx	@r0,a
                    0292   1314 	C$test_i2c.c$120$3$4 ==.
                           1315 ;	src/test_i2c/test_i2c.c:120: nacks[i] |= dacSendByte((uint8) (voltage & 0xFF));
   078F EA                 1316 	mov	a,r2
   0790 24 00              1317 	add	a,#_nacks
   0792 F8                 1318 	mov	r0,a
   0793 E2                 1319 	movx	a,@r0
   0794 FC                 1320 	mov	r4,a
   0795 90 1D 8A           1321 	mov	dptr,#_voltage
   0798 E4                 1322 	clr	a
   0799 93                 1323 	movc	a,@a+dptr
   079A FD                 1324 	mov	r5,a
   079B 74 01              1325 	mov	a,#0x01
   079D 93                 1326 	movc	a,@a+dptr
   079E 8D 82              1327 	mov	dpl,r5
   07A0 C0 02              1328 	push	ar2
   07A2 C0 03              1329 	push	ar3
   07A4 C0 04              1330 	push	ar4
   07A6 C0 00              1331 	push	ar0
   07A8 12 0B BB           1332 	lcall	_dacSendByte
   07AB E4                 1333 	clr	a
   07AC 33                 1334 	rlc	a
   07AD FD                 1335 	mov	r5,a
   07AE D0 00              1336 	pop	ar0
   07B0 D0 04              1337 	pop	ar4
   07B2 ED                 1338 	mov	a,r5
   07B3 4C                 1339 	orl	a,r4
   07B4 F2                 1340 	movx	@r0,a
                    02B8   1341 	C$test_i2c.c$121$3$4 ==.
                           1342 ;	src/test_i2c/test_i2c.c:121: dacStop();
   07B5 12 0B B6           1343 	lcall	_dacStop
   07B8 D0 03              1344 	pop	ar3
   07BA D0 02              1345 	pop	ar2
                    02BF   1346 	C$test_i2c.c$123$3$4 ==.
                           1347 ;	src/test_i2c/test_i2c.c:123: transfers[i]++;
   07BC EB                 1348 	mov	a,r3
   07BD 24 0A              1349 	add	a,#_transfers
   07BF F8                 1350 	mov	r0,a
   07C0 E2                 1351 	movx	a,@r0
   07C1 FC                 1352 	mov	r4,a
   07C2 08                 1353 	inc	r0
   07C3 E2                 1354 	movx	a,@r0
   07C4 FD                 1355 	mov	r5,a
   07C5 08                 1356 	inc	r0
   07C6 E2                 1357 	movx	a,@r0
   07C7 FE                 1358 	mov	r6,a
   07C8 08                 1359 	inc	r0
   07C9 E2                 1360 	movx	a,@r0
   07CA FF                 1361 	mov	r7,a
   07CB 18                 1362 	dec	r0
   07CC 18                 1363 	dec	r0
   07CD 18                 1364 	dec	r0
   07CE 0C                 1365 	inc	r4
   07CF BC 00 09           1366 	cjne	r4,#0x00,00137$
   07D2 0D                 1367 	inc	r5
   07D3 BD 00 05           1368 	cjne	r5,#0x00,00137$
   07D6 0E                 1369 	inc	r6
   07D7 BE 00 01           1370 	cjne	r6,#0x00,00137$
   07DA 0F                 1371 	inc	r7
   07DB                    1372 00137$:
   07DB EC                 1373 	mov	a,r4
   07DC F2                 1374 	movx	@r0,a
   07DD 08                 1375 	inc	r0
   07DE ED                 1376 	mov	a,r5
   07DF F2                 1377 	movx	@r0,a
   07E0 08                 1378 	inc	r0
   07E1 EE                 1379 	mov	a,r6
   07E2 F2                 1380 	movx	@r0,a
   07E3 08                 1381 	inc	r0
   07E4 EF                 1382 	mov	a,r7
   07E5 F2                 1383 	movx	@r0,a
   07E6 18                 1384 	dec	r0
   07E7 18                 1385 	dec	r0
   07E8 18                 1386 	dec	r0
   07E9 02 06 F4           1387 	ljmp	00104$
   07EC                    1388 00106$:
                    02EF   1389 	C$test_i2c.c$126$3$5 ==.
                           1390 ;	src/test_i2c/test_i2c.c:126: LED_RED_TOGGLE();
   07EC 63 FF 02           1391 	xrl	_P2DIR,#0x02
                    02F2   1392 	C$test_i2c.c$107$1$1 ==.
                           1393 ;	src/test_i2c/test_i2c.c:107: for (i = 0; i < 10; i++)
   07EF 0A                 1394 	inc	r2
   07F0 02 06 C0           1395 	ljmp	00116$
   07F3                    1396 00119$:
                    02F6   1397 	C$test_i2c.c$129$1$1 ==.
                           1398 ;	src/test_i2c/test_i2c.c:129: i = 0;
   07F3 7A 00              1399 	mov	r2,#0x00
                    02F8   1400 	C$test_i2c.c$132$1$1 ==.
                           1401 ;	src/test_i2c/test_i2c.c:132: while (TRUE)
   07F5                    1402 00114$:
                    02F8   1403 	C$test_i2c.c$134$2$6 ==.
                           1404 ;	src/test_i2c/test_i2c.c:134: updateLeds(); // blinks red LED every 50ms if we are receiving packets
   07F5 C0 02              1405 	push	ar2
   07F7 12 04 FD           1406 	lcall	_updateLeds
                    02FD   1407 	C$test_i2c.c$135$2$6 ==.
                           1408 ;	src/test_i2c/test_i2c.c:135: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
   07FA 12 12 21           1409 	lcall	_boardService
                    0300   1410 	C$test_i2c.c$136$2$6 ==.
                           1411 ;	src/test_i2c/test_i2c.c:136: usbComService(); // so we can start bootloader from wixel config GUI
   07FD 12 0A 4E           1412 	lcall	_usbComService
   0800 D0 02              1413 	pop	ar2
                    0305   1414 	C$test_i2c.c$138$2$6 ==.
                           1415 ;	src/test_i2c/test_i2c.c:138: if ((i % 5 == 0) && (i / 5 <= 9))
   0802 75 F0 05           1416 	mov	b,#0x05
   0805 EA                 1417 	mov	a,r2
   0806 84                 1418 	div	ab
   0807 E5 F0              1419 	mov	a,b
   0809 70 48              1420 	jnz	00110$
   080B 75 F0 05           1421 	mov	b,#0x05
   080E EA                 1422 	mov	a,r2
   080F 84                 1423 	div	ab
   0810 FB                 1424 	mov	r3,a
   0811 74 09              1425 	mov	a,#0x09
   0813 B5 03 00           1426 	cjne	a,ar3,00139$
   0816                    1427 00139$:
   0816 40 3B              1428 	jc	00110$
                    031B   1429 	C$test_i2c.c$140$1$1 ==.
                           1430 ;	src/test_i2c/test_i2c.c:140: reportResults(transfers[i / 5], nacks[i / 5], i / 5, 2);
   0818 C0 02              1431 	push	ar2
   081A EB                 1432 	mov	a,r3
   081B 2B                 1433 	add	a,r3
   081C 25 E0              1434 	add	a,acc
   081E 24 0A              1435 	add	a,#_transfers
   0820 F8                 1436 	mov	r0,a
   0821 E2                 1437 	movx	a,@r0
   0822 FC                 1438 	mov	r4,a
   0823 08                 1439 	inc	r0
   0824 E2                 1440 	movx	a,@r0
   0825 FD                 1441 	mov	r5,a
   0826 08                 1442 	inc	r0
   0827 E2                 1443 	movx	a,@r0
   0828 FE                 1444 	mov	r6,a
   0829 08                 1445 	inc	r0
   082A E2                 1446 	movx	a,@r0
   082B FF                 1447 	mov	r7,a
   082C 18                 1448 	dec	r0
   082D 18                 1449 	dec	r0
   082E 18                 1450 	dec	r0
   082F EB                 1451 	mov	a,r3
   0830 24 00              1452 	add	a,#_nacks
   0832 F8                 1453 	mov	r0,a
   0833 E2                 1454 	movx	a,@r0
   0834 FA                 1455 	mov	r2,a
   0835 78 32              1456 	mov	r0,#_reportResults_PARM_2
   0837 F2                 1457 	movx	@r0,a
   0838 78 33              1458 	mov	r0,#_reportResults_PARM_3
   083A EB                 1459 	mov	a,r3
   083B F2                 1460 	movx	@r0,a
   083C 78 34              1461 	mov	r0,#_reportResults_PARM_4
   083E 74 02              1462 	mov	a,#0x02
   0840 F2                 1463 	movx	@r0,a
   0841 8C 82              1464 	mov	dpl,r4
   0843 8D 83              1465 	mov	dph,r5
   0845 8E F0              1466 	mov	b,r6
   0847 EF                 1467 	mov	a,r7
   0848 C0 02              1468 	push	ar2
   084A 12 05 46           1469 	lcall	_reportResults
   084D D0 02              1470 	pop	ar2
   084F D0 02              1471 	pop	ar2
   0851 80 0E              1472 	sjmp	00111$
   0853                    1473 00110$:
                    0356   1474 	C$test_i2c.c$142$2$6 ==.
                           1475 ;	src/test_i2c/test_i2c.c:142: else if (i / 5 > 9)
   0853 75 F0 05           1476 	mov	b,#0x05
   0856 EA                 1477 	mov	a,r2
   0857 84                 1478 	div	ab
   0858 FB                 1479 	mov	r3,a
   0859 74 09              1480 	mov	a,#0x09
   085B B5 03 00           1481 	cjne	a,ar3,00141$
   085E                    1482 00141$:
   085E 50 01              1483 	jnc	00111$
                    0363   1484 	C$test_i2c.c$144$3$8 ==.
                           1485 ;	src/test_i2c/test_i2c.c:144: i--;
   0860 1A                 1486 	dec	r2
   0861                    1487 00111$:
                    0364   1488 	C$test_i2c.c$147$2$6 ==.
                           1489 ;	src/test_i2c/test_i2c.c:147: i++;
   0861 0A                 1490 	inc	r2
                    0365   1491 	C$test_i2c.c$150$1$1 ==.
                    0365   1492 	XG$main$0$0 ==.
   0862 02 07 F5           1493 	ljmp	00114$
                           1494 	.area CSEG    (CODE)
                           1495 	.area CONST   (CODE)
                    0000   1496 G$DAC_ADDRESS$0$0 == .
   1D88                    1497 _DAC_ADDRESS:
   1D88 C0                 1498 	.db #0xC0	; 192
                    0001   1499 G$DAC_COMMAND$0$0 == .
   1D89                    1500 _DAC_COMMAND:
   1D89 00                 1501 	.db #0x00	; 0
                    0002   1502 G$voltage$0$0 == .
   1D8A                    1503 _voltage:
   1D8A AA 0A              1504 	.byte #0xAA,#0x0A	; 2730
                    0004   1505 Ftest_i2c$_str_0$0$0 == .
   1D8C                    1506 __str_0:
   1D8C 54 72 61 6E 73 6D  1507 	.ascii "Transmissions/second: %Lu x bits/transmission: 24 equals: %L"
        69 73 73 69 6F 6E
        73 2F 73 65 63 6F
        6E 64 3A 20 25 4C
        75 20 78 20 62 69
        74 73 2F 74 72 61
        6E 73 6D 69 73 73
        69 6F 6E 3A 20 32
        34 20 65 71 75 61
        6C 73 3A 20 25 4C
   1DC8 75 4B 62 70 73 20  1508 	.ascii "uKbps (Effective)"
        28 45 66 66 65 63
        74 69 76 65 29
   1DD9 0D                 1509 	.db 0x0D
   1DDA 0A                 1510 	.db 0x0A
   1DDB 20 6E 61 63 6B 73  1511 	.ascii " nacks: %d        Test: %d "
        3A 20 25 64 20 20
        20 20 20 20 20 20
        54 65 73 74 3A 20
        25 64 20
   1DF6 0D                 1512 	.db 0x0D
   1DF7 0A                 1513 	.db 0x0A
   1DF8 0D                 1514 	.db 0x0D
   1DF9 0A                 1515 	.db 0x0A
   1DFA 00                 1516 	.db 0x00
                           1517 	.area XINIT   (CODE)
                           1518 	.area CABS    (ABS,CODE)
