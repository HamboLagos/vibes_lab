                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 10 17:37:58 2012
                              5 ;--------------------------------------------------------
                              6 	.module test_radio
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _ISR_T3
                             14 	.globl _reportResults
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 	.area RSEG    (ABS,DATA)
   0000                      19 	.org 0x0000
                    0080     20 Ftest_radio$P0$0$0 == 0x0080
                    0080     21 _P0	=	0x0080
                    0081     22 Ftest_radio$SP$0$0 == 0x0081
                    0081     23 _SP	=	0x0081
                    0082     24 Ftest_radio$DPL0$0$0 == 0x0082
                    0082     25 _DPL0	=	0x0082
                    0083     26 Ftest_radio$DPH0$0$0 == 0x0083
                    0083     27 _DPH0	=	0x0083
                    0084     28 Ftest_radio$DPL1$0$0 == 0x0084
                    0084     29 _DPL1	=	0x0084
                    0085     30 Ftest_radio$DPH1$0$0 == 0x0085
                    0085     31 _DPH1	=	0x0085
                    0086     32 Ftest_radio$U0CSR$0$0 == 0x0086
                    0086     33 _U0CSR	=	0x0086
                    0087     34 Ftest_radio$PCON$0$0 == 0x0087
                    0087     35 _PCON	=	0x0087
                    0088     36 Ftest_radio$TCON$0$0 == 0x0088
                    0088     37 _TCON	=	0x0088
                    0089     38 Ftest_radio$P0IFG$0$0 == 0x0089
                    0089     39 _P0IFG	=	0x0089
                    008A     40 Ftest_radio$P1IFG$0$0 == 0x008a
                    008A     41 _P1IFG	=	0x008a
                    008B     42 Ftest_radio$P2IFG$0$0 == 0x008b
                    008B     43 _P2IFG	=	0x008b
                    008C     44 Ftest_radio$PICTL$0$0 == 0x008c
                    008C     45 _PICTL	=	0x008c
                    008D     46 Ftest_radio$P1IEN$0$0 == 0x008d
                    008D     47 _P1IEN	=	0x008d
                    008F     48 Ftest_radio$P0INP$0$0 == 0x008f
                    008F     49 _P0INP	=	0x008f
                    0090     50 Ftest_radio$P1$0$0 == 0x0090
                    0090     51 _P1	=	0x0090
                    0091     52 Ftest_radio$RFIM$0$0 == 0x0091
                    0091     53 _RFIM	=	0x0091
                    0092     54 Ftest_radio$DPS$0$0 == 0x0092
                    0092     55 _DPS	=	0x0092
                    0093     56 Ftest_radio$MPAGE$0$0 == 0x0093
                    0093     57 _MPAGE	=	0x0093
                    0095     58 Ftest_radio$ENDIAN$0$0 == 0x0095
                    0095     59 _ENDIAN	=	0x0095
                    0098     60 Ftest_radio$S0CON$0$0 == 0x0098
                    0098     61 _S0CON	=	0x0098
                    009A     62 Ftest_radio$IEN2$0$0 == 0x009a
                    009A     63 _IEN2	=	0x009a
                    009B     64 Ftest_radio$S1CON$0$0 == 0x009b
                    009B     65 _S1CON	=	0x009b
                    009C     66 Ftest_radio$T2CT$0$0 == 0x009c
                    009C     67 _T2CT	=	0x009c
                    009D     68 Ftest_radio$T2PR$0$0 == 0x009d
                    009D     69 _T2PR	=	0x009d
                    009E     70 Ftest_radio$T2CTL$0$0 == 0x009e
                    009E     71 _T2CTL	=	0x009e
                    00A0     72 Ftest_radio$P2$0$0 == 0x00a0
                    00A0     73 _P2	=	0x00a0
                    00A1     74 Ftest_radio$WORIRQ$0$0 == 0x00a1
                    00A1     75 _WORIRQ	=	0x00a1
                    00A2     76 Ftest_radio$WORCTRL$0$0 == 0x00a2
                    00A2     77 _WORCTRL	=	0x00a2
                    00A3     78 Ftest_radio$WOREVT0$0$0 == 0x00a3
                    00A3     79 _WOREVT0	=	0x00a3
                    00A4     80 Ftest_radio$WOREVT1$0$0 == 0x00a4
                    00A4     81 _WOREVT1	=	0x00a4
                    00A5     82 Ftest_radio$WORTIME0$0$0 == 0x00a5
                    00A5     83 _WORTIME0	=	0x00a5
                    00A6     84 Ftest_radio$WORTIME1$0$0 == 0x00a6
                    00A6     85 _WORTIME1	=	0x00a6
                    00A8     86 Ftest_radio$IEN0$0$0 == 0x00a8
                    00A8     87 _IEN0	=	0x00a8
                    00A9     88 Ftest_radio$IP0$0$0 == 0x00a9
                    00A9     89 _IP0	=	0x00a9
                    00AB     90 Ftest_radio$FWT$0$0 == 0x00ab
                    00AB     91 _FWT	=	0x00ab
                    00AC     92 Ftest_radio$FADDRL$0$0 == 0x00ac
                    00AC     93 _FADDRL	=	0x00ac
                    00AD     94 Ftest_radio$FADDRH$0$0 == 0x00ad
                    00AD     95 _FADDRH	=	0x00ad
                    00AE     96 Ftest_radio$FCTL$0$0 == 0x00ae
                    00AE     97 _FCTL	=	0x00ae
                    00AF     98 Ftest_radio$FWDATA$0$0 == 0x00af
                    00AF     99 _FWDATA	=	0x00af
                    00B1    100 Ftest_radio$ENCDI$0$0 == 0x00b1
                    00B1    101 _ENCDI	=	0x00b1
                    00B2    102 Ftest_radio$ENCDO$0$0 == 0x00b2
                    00B2    103 _ENCDO	=	0x00b2
                    00B3    104 Ftest_radio$ENCCS$0$0 == 0x00b3
                    00B3    105 _ENCCS	=	0x00b3
                    00B4    106 Ftest_radio$ADCCON1$0$0 == 0x00b4
                    00B4    107 _ADCCON1	=	0x00b4
                    00B5    108 Ftest_radio$ADCCON2$0$0 == 0x00b5
                    00B5    109 _ADCCON2	=	0x00b5
                    00B6    110 Ftest_radio$ADCCON3$0$0 == 0x00b6
                    00B6    111 _ADCCON3	=	0x00b6
                    00B8    112 Ftest_radio$IEN1$0$0 == 0x00b8
                    00B8    113 _IEN1	=	0x00b8
                    00B9    114 Ftest_radio$IP1$0$0 == 0x00b9
                    00B9    115 _IP1	=	0x00b9
                    00BA    116 Ftest_radio$ADCL$0$0 == 0x00ba
                    00BA    117 _ADCL	=	0x00ba
                    00BB    118 Ftest_radio$ADCH$0$0 == 0x00bb
                    00BB    119 _ADCH	=	0x00bb
                    00BC    120 Ftest_radio$RNDL$0$0 == 0x00bc
                    00BC    121 _RNDL	=	0x00bc
                    00BD    122 Ftest_radio$RNDH$0$0 == 0x00bd
                    00BD    123 _RNDH	=	0x00bd
                    00BE    124 Ftest_radio$SLEEP$0$0 == 0x00be
                    00BE    125 _SLEEP	=	0x00be
                    00C0    126 Ftest_radio$IRCON$0$0 == 0x00c0
                    00C0    127 _IRCON	=	0x00c0
                    00C1    128 Ftest_radio$U0DBUF$0$0 == 0x00c1
                    00C1    129 _U0DBUF	=	0x00c1
                    00C2    130 Ftest_radio$U0BAUD$0$0 == 0x00c2
                    00C2    131 _U0BAUD	=	0x00c2
                    00C4    132 Ftest_radio$U0UCR$0$0 == 0x00c4
                    00C4    133 _U0UCR	=	0x00c4
                    00C5    134 Ftest_radio$U0GCR$0$0 == 0x00c5
                    00C5    135 _U0GCR	=	0x00c5
                    00C6    136 Ftest_radio$CLKCON$0$0 == 0x00c6
                    00C6    137 _CLKCON	=	0x00c6
                    00C7    138 Ftest_radio$MEMCTR$0$0 == 0x00c7
                    00C7    139 _MEMCTR	=	0x00c7
                    00C9    140 Ftest_radio$WDCTL$0$0 == 0x00c9
                    00C9    141 _WDCTL	=	0x00c9
                    00CA    142 Ftest_radio$T3CNT$0$0 == 0x00ca
                    00CA    143 _T3CNT	=	0x00ca
                    00CB    144 Ftest_radio$T3CTL$0$0 == 0x00cb
                    00CB    145 _T3CTL	=	0x00cb
                    00CC    146 Ftest_radio$T3CCTL0$0$0 == 0x00cc
                    00CC    147 _T3CCTL0	=	0x00cc
                    00CD    148 Ftest_radio$T3CC0$0$0 == 0x00cd
                    00CD    149 _T3CC0	=	0x00cd
                    00CE    150 Ftest_radio$T3CCTL1$0$0 == 0x00ce
                    00CE    151 _T3CCTL1	=	0x00ce
                    00CF    152 Ftest_radio$T3CC1$0$0 == 0x00cf
                    00CF    153 _T3CC1	=	0x00cf
                    00D0    154 Ftest_radio$PSW$0$0 == 0x00d0
                    00D0    155 _PSW	=	0x00d0
                    00D1    156 Ftest_radio$DMAIRQ$0$0 == 0x00d1
                    00D1    157 _DMAIRQ	=	0x00d1
                    00D2    158 Ftest_radio$DMA1CFGL$0$0 == 0x00d2
                    00D2    159 _DMA1CFGL	=	0x00d2
                    00D3    160 Ftest_radio$DMA1CFGH$0$0 == 0x00d3
                    00D3    161 _DMA1CFGH	=	0x00d3
                    00D4    162 Ftest_radio$DMA0CFGL$0$0 == 0x00d4
                    00D4    163 _DMA0CFGL	=	0x00d4
                    00D5    164 Ftest_radio$DMA0CFGH$0$0 == 0x00d5
                    00D5    165 _DMA0CFGH	=	0x00d5
                    00D6    166 Ftest_radio$DMAARM$0$0 == 0x00d6
                    00D6    167 _DMAARM	=	0x00d6
                    00D7    168 Ftest_radio$DMAREQ$0$0 == 0x00d7
                    00D7    169 _DMAREQ	=	0x00d7
                    00D8    170 Ftest_radio$TIMIF$0$0 == 0x00d8
                    00D8    171 _TIMIF	=	0x00d8
                    00D9    172 Ftest_radio$RFD$0$0 == 0x00d9
                    00D9    173 _RFD	=	0x00d9
                    00DA    174 Ftest_radio$T1CC0L$0$0 == 0x00da
                    00DA    175 _T1CC0L	=	0x00da
                    00DB    176 Ftest_radio$T1CC0H$0$0 == 0x00db
                    00DB    177 _T1CC0H	=	0x00db
                    00DC    178 Ftest_radio$T1CC1L$0$0 == 0x00dc
                    00DC    179 _T1CC1L	=	0x00dc
                    00DD    180 Ftest_radio$T1CC1H$0$0 == 0x00dd
                    00DD    181 _T1CC1H	=	0x00dd
                    00DE    182 Ftest_radio$T1CC2L$0$0 == 0x00de
                    00DE    183 _T1CC2L	=	0x00de
                    00DF    184 Ftest_radio$T1CC2H$0$0 == 0x00df
                    00DF    185 _T1CC2H	=	0x00df
                    00E0    186 Ftest_radio$ACC$0$0 == 0x00e0
                    00E0    187 _ACC	=	0x00e0
                    00E1    188 Ftest_radio$RFST$0$0 == 0x00e1
                    00E1    189 _RFST	=	0x00e1
                    00E2    190 Ftest_radio$T1CNTL$0$0 == 0x00e2
                    00E2    191 _T1CNTL	=	0x00e2
                    00E3    192 Ftest_radio$T1CNTH$0$0 == 0x00e3
                    00E3    193 _T1CNTH	=	0x00e3
                    00E4    194 Ftest_radio$T1CTL$0$0 == 0x00e4
                    00E4    195 _T1CTL	=	0x00e4
                    00E5    196 Ftest_radio$T1CCTL0$0$0 == 0x00e5
                    00E5    197 _T1CCTL0	=	0x00e5
                    00E6    198 Ftest_radio$T1CCTL1$0$0 == 0x00e6
                    00E6    199 _T1CCTL1	=	0x00e6
                    00E7    200 Ftest_radio$T1CCTL2$0$0 == 0x00e7
                    00E7    201 _T1CCTL2	=	0x00e7
                    00E8    202 Ftest_radio$IRCON2$0$0 == 0x00e8
                    00E8    203 _IRCON2	=	0x00e8
                    00E9    204 Ftest_radio$RFIF$0$0 == 0x00e9
                    00E9    205 _RFIF	=	0x00e9
                    00EA    206 Ftest_radio$T4CNT$0$0 == 0x00ea
                    00EA    207 _T4CNT	=	0x00ea
                    00EB    208 Ftest_radio$T4CTL$0$0 == 0x00eb
                    00EB    209 _T4CTL	=	0x00eb
                    00EC    210 Ftest_radio$T4CCTL0$0$0 == 0x00ec
                    00EC    211 _T4CCTL0	=	0x00ec
                    00ED    212 Ftest_radio$T4CC0$0$0 == 0x00ed
                    00ED    213 _T4CC0	=	0x00ed
                    00EE    214 Ftest_radio$T4CCTL1$0$0 == 0x00ee
                    00EE    215 _T4CCTL1	=	0x00ee
                    00EF    216 Ftest_radio$T4CC1$0$0 == 0x00ef
                    00EF    217 _T4CC1	=	0x00ef
                    00F0    218 Ftest_radio$B$0$0 == 0x00f0
                    00F0    219 _B	=	0x00f0
                    00F1    220 Ftest_radio$PERCFG$0$0 == 0x00f1
                    00F1    221 _PERCFG	=	0x00f1
                    00F2    222 Ftest_radio$ADCCFG$0$0 == 0x00f2
                    00F2    223 _ADCCFG	=	0x00f2
                    00F3    224 Ftest_radio$P0SEL$0$0 == 0x00f3
                    00F3    225 _P0SEL	=	0x00f3
                    00F4    226 Ftest_radio$P1SEL$0$0 == 0x00f4
                    00F4    227 _P1SEL	=	0x00f4
                    00F5    228 Ftest_radio$P2SEL$0$0 == 0x00f5
                    00F5    229 _P2SEL	=	0x00f5
                    00F6    230 Ftest_radio$P1INP$0$0 == 0x00f6
                    00F6    231 _P1INP	=	0x00f6
                    00F7    232 Ftest_radio$P2INP$0$0 == 0x00f7
                    00F7    233 _P2INP	=	0x00f7
                    00F8    234 Ftest_radio$U1CSR$0$0 == 0x00f8
                    00F8    235 _U1CSR	=	0x00f8
                    00F9    236 Ftest_radio$U1DBUF$0$0 == 0x00f9
                    00F9    237 _U1DBUF	=	0x00f9
                    00FA    238 Ftest_radio$U1BAUD$0$0 == 0x00fa
                    00FA    239 _U1BAUD	=	0x00fa
                    00FB    240 Ftest_radio$U1UCR$0$0 == 0x00fb
                    00FB    241 _U1UCR	=	0x00fb
                    00FC    242 Ftest_radio$U1GCR$0$0 == 0x00fc
                    00FC    243 _U1GCR	=	0x00fc
                    00FD    244 Ftest_radio$P0DIR$0$0 == 0x00fd
                    00FD    245 _P0DIR	=	0x00fd
                    00FE    246 Ftest_radio$P1DIR$0$0 == 0x00fe
                    00FE    247 _P1DIR	=	0x00fe
                    00FF    248 Ftest_radio$P2DIR$0$0 == 0x00ff
                    00FF    249 _P2DIR	=	0x00ff
                    FFFFD5D4    250 Ftest_radio$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    251 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    252 Ftest_radio$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    253 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    254 Ftest_radio$FADDR$0$0 == 0xffffadac
                    FFFFADAC    255 _FADDR	=	0xffffadac
                    FFFFBBBA    256 Ftest_radio$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    257 _ADC	=	0xffffbbba
                            258 ;--------------------------------------------------------
                            259 ; special function bits
                            260 ;--------------------------------------------------------
                            261 	.area RSEG    (ABS,DATA)
   0000                     262 	.org 0x0000
                    0080    263 Ftest_radio$P0_0$0$0 == 0x0080
                    0080    264 _P0_0	=	0x0080
                    0081    265 Ftest_radio$P0_1$0$0 == 0x0081
                    0081    266 _P0_1	=	0x0081
                    0082    267 Ftest_radio$P0_2$0$0 == 0x0082
                    0082    268 _P0_2	=	0x0082
                    0083    269 Ftest_radio$P0_3$0$0 == 0x0083
                    0083    270 _P0_3	=	0x0083
                    0084    271 Ftest_radio$P0_4$0$0 == 0x0084
                    0084    272 _P0_4	=	0x0084
                    0085    273 Ftest_radio$P0_5$0$0 == 0x0085
                    0085    274 _P0_5	=	0x0085
                    0086    275 Ftest_radio$P0_6$0$0 == 0x0086
                    0086    276 _P0_6	=	0x0086
                    0087    277 Ftest_radio$P0_7$0$0 == 0x0087
                    0087    278 _P0_7	=	0x0087
                    0088    279 Ftest_radio$_TCON_0$0$0 == 0x0088
                    0088    280 __TCON_0	=	0x0088
                    0089    281 Ftest_radio$RFTXRXIF$0$0 == 0x0089
                    0089    282 _RFTXRXIF	=	0x0089
                    008A    283 Ftest_radio$_TCON_2$0$0 == 0x008a
                    008A    284 __TCON_2	=	0x008a
                    008B    285 Ftest_radio$URX0IF$0$0 == 0x008b
                    008B    286 _URX0IF	=	0x008b
                    008C    287 Ftest_radio$_TCON_4$0$0 == 0x008c
                    008C    288 __TCON_4	=	0x008c
                    008D    289 Ftest_radio$ADCIF$0$0 == 0x008d
                    008D    290 _ADCIF	=	0x008d
                    008E    291 Ftest_radio$_TCON_6$0$0 == 0x008e
                    008E    292 __TCON_6	=	0x008e
                    008F    293 Ftest_radio$URX1IF$0$0 == 0x008f
                    008F    294 _URX1IF	=	0x008f
                    0090    295 Ftest_radio$P1_0$0$0 == 0x0090
                    0090    296 _P1_0	=	0x0090
                    0091    297 Ftest_radio$P1_1$0$0 == 0x0091
                    0091    298 _P1_1	=	0x0091
                    0092    299 Ftest_radio$P1_2$0$0 == 0x0092
                    0092    300 _P1_2	=	0x0092
                    0093    301 Ftest_radio$P1_3$0$0 == 0x0093
                    0093    302 _P1_3	=	0x0093
                    0094    303 Ftest_radio$P1_4$0$0 == 0x0094
                    0094    304 _P1_4	=	0x0094
                    0095    305 Ftest_radio$P1_5$0$0 == 0x0095
                    0095    306 _P1_5	=	0x0095
                    0096    307 Ftest_radio$P1_6$0$0 == 0x0096
                    0096    308 _P1_6	=	0x0096
                    0097    309 Ftest_radio$P1_7$0$0 == 0x0097
                    0097    310 _P1_7	=	0x0097
                    0098    311 Ftest_radio$ENCIF_0$0$0 == 0x0098
                    0098    312 _ENCIF_0	=	0x0098
                    0099    313 Ftest_radio$ENCIF_1$0$0 == 0x0099
                    0099    314 _ENCIF_1	=	0x0099
                    009A    315 Ftest_radio$_SOCON2$0$0 == 0x009a
                    009A    316 __SOCON2	=	0x009a
                    009B    317 Ftest_radio$_SOCON3$0$0 == 0x009b
                    009B    318 __SOCON3	=	0x009b
                    009C    319 Ftest_radio$_SOCON4$0$0 == 0x009c
                    009C    320 __SOCON4	=	0x009c
                    009D    321 Ftest_radio$_SOCON5$0$0 == 0x009d
                    009D    322 __SOCON5	=	0x009d
                    009E    323 Ftest_radio$_SOCON6$0$0 == 0x009e
                    009E    324 __SOCON6	=	0x009e
                    009F    325 Ftest_radio$_SOCON7$0$0 == 0x009f
                    009F    326 __SOCON7	=	0x009f
                    00A0    327 Ftest_radio$P2_0$0$0 == 0x00a0
                    00A0    328 _P2_0	=	0x00a0
                    00A1    329 Ftest_radio$P2_1$0$0 == 0x00a1
                    00A1    330 _P2_1	=	0x00a1
                    00A2    331 Ftest_radio$P2_2$0$0 == 0x00a2
                    00A2    332 _P2_2	=	0x00a2
                    00A3    333 Ftest_radio$P2_3$0$0 == 0x00a3
                    00A3    334 _P2_3	=	0x00a3
                    00A4    335 Ftest_radio$P2_4$0$0 == 0x00a4
                    00A4    336 _P2_4	=	0x00a4
                    00A5    337 Ftest_radio$P2_5$0$0 == 0x00a5
                    00A5    338 _P2_5	=	0x00a5
                    00A6    339 Ftest_radio$P2_6$0$0 == 0x00a6
                    00A6    340 _P2_6	=	0x00a6
                    00A7    341 Ftest_radio$P2_7$0$0 == 0x00a7
                    00A7    342 _P2_7	=	0x00a7
                    00A8    343 Ftest_radio$RFTXRXIE$0$0 == 0x00a8
                    00A8    344 _RFTXRXIE	=	0x00a8
                    00A9    345 Ftest_radio$ADCIE$0$0 == 0x00a9
                    00A9    346 _ADCIE	=	0x00a9
                    00AA    347 Ftest_radio$URX0IE$0$0 == 0x00aa
                    00AA    348 _URX0IE	=	0x00aa
                    00AB    349 Ftest_radio$URX1IE$0$0 == 0x00ab
                    00AB    350 _URX1IE	=	0x00ab
                    00AC    351 Ftest_radio$ENCIE$0$0 == 0x00ac
                    00AC    352 _ENCIE	=	0x00ac
                    00AD    353 Ftest_radio$STIE$0$0 == 0x00ad
                    00AD    354 _STIE	=	0x00ad
                    00AE    355 Ftest_radio$_IEN06$0$0 == 0x00ae
                    00AE    356 __IEN06	=	0x00ae
                    00AF    357 Ftest_radio$EA$0$0 == 0x00af
                    00AF    358 _EA	=	0x00af
                    00B8    359 Ftest_radio$DMAIE$0$0 == 0x00b8
                    00B8    360 _DMAIE	=	0x00b8
                    00B9    361 Ftest_radio$T1IE$0$0 == 0x00b9
                    00B9    362 _T1IE	=	0x00b9
                    00BA    363 Ftest_radio$T2IE$0$0 == 0x00ba
                    00BA    364 _T2IE	=	0x00ba
                    00BB    365 Ftest_radio$T3IE$0$0 == 0x00bb
                    00BB    366 _T3IE	=	0x00bb
                    00BC    367 Ftest_radio$T4IE$0$0 == 0x00bc
                    00BC    368 _T4IE	=	0x00bc
                    00BD    369 Ftest_radio$P0IE$0$0 == 0x00bd
                    00BD    370 _P0IE	=	0x00bd
                    00BE    371 Ftest_radio$_IEN16$0$0 == 0x00be
                    00BE    372 __IEN16	=	0x00be
                    00BF    373 Ftest_radio$_IEN17$0$0 == 0x00bf
                    00BF    374 __IEN17	=	0x00bf
                    00C0    375 Ftest_radio$DMAIF$0$0 == 0x00c0
                    00C0    376 _DMAIF	=	0x00c0
                    00C1    377 Ftest_radio$T1IF$0$0 == 0x00c1
                    00C1    378 _T1IF	=	0x00c1
                    00C2    379 Ftest_radio$T2IF$0$0 == 0x00c2
                    00C2    380 _T2IF	=	0x00c2
                    00C3    381 Ftest_radio$T3IF$0$0 == 0x00c3
                    00C3    382 _T3IF	=	0x00c3
                    00C4    383 Ftest_radio$T4IF$0$0 == 0x00c4
                    00C4    384 _T4IF	=	0x00c4
                    00C5    385 Ftest_radio$P0IF$0$0 == 0x00c5
                    00C5    386 _P0IF	=	0x00c5
                    00C6    387 Ftest_radio$_IRCON6$0$0 == 0x00c6
                    00C6    388 __IRCON6	=	0x00c6
                    00C7    389 Ftest_radio$STIF$0$0 == 0x00c7
                    00C7    390 _STIF	=	0x00c7
                    00D0    391 Ftest_radio$P$0$0 == 0x00d0
                    00D0    392 _P	=	0x00d0
                    00D1    393 Ftest_radio$F1$0$0 == 0x00d1
                    00D1    394 _F1	=	0x00d1
                    00D2    395 Ftest_radio$OV$0$0 == 0x00d2
                    00D2    396 _OV	=	0x00d2
                    00D3    397 Ftest_radio$RS0$0$0 == 0x00d3
                    00D3    398 _RS0	=	0x00d3
                    00D4    399 Ftest_radio$RS1$0$0 == 0x00d4
                    00D4    400 _RS1	=	0x00d4
                    00D5    401 Ftest_radio$F0$0$0 == 0x00d5
                    00D5    402 _F0	=	0x00d5
                    00D6    403 Ftest_radio$AC$0$0 == 0x00d6
                    00D6    404 _AC	=	0x00d6
                    00D7    405 Ftest_radio$CY$0$0 == 0x00d7
                    00D7    406 _CY	=	0x00d7
                    00D8    407 Ftest_radio$T3OVFIF$0$0 == 0x00d8
                    00D8    408 _T3OVFIF	=	0x00d8
                    00D9    409 Ftest_radio$T3CH0IF$0$0 == 0x00d9
                    00D9    410 _T3CH0IF	=	0x00d9
                    00DA    411 Ftest_radio$T3CH1IF$0$0 == 0x00da
                    00DA    412 _T3CH1IF	=	0x00da
                    00DB    413 Ftest_radio$T4OVFIF$0$0 == 0x00db
                    00DB    414 _T4OVFIF	=	0x00db
                    00DC    415 Ftest_radio$T4CH0IF$0$0 == 0x00dc
                    00DC    416 _T4CH0IF	=	0x00dc
                    00DD    417 Ftest_radio$T4CH1IF$0$0 == 0x00dd
                    00DD    418 _T4CH1IF	=	0x00dd
                    00DE    419 Ftest_radio$OVFIM$0$0 == 0x00de
                    00DE    420 _OVFIM	=	0x00de
                    00DF    421 Ftest_radio$_TIMIF7$0$0 == 0x00df
                    00DF    422 __TIMIF7	=	0x00df
                    00E0    423 Ftest_radio$ACC_0$0$0 == 0x00e0
                    00E0    424 _ACC_0	=	0x00e0
                    00E1    425 Ftest_radio$ACC_1$0$0 == 0x00e1
                    00E1    426 _ACC_1	=	0x00e1
                    00E2    427 Ftest_radio$ACC_2$0$0 == 0x00e2
                    00E2    428 _ACC_2	=	0x00e2
                    00E3    429 Ftest_radio$ACC_3$0$0 == 0x00e3
                    00E3    430 _ACC_3	=	0x00e3
                    00E4    431 Ftest_radio$ACC_4$0$0 == 0x00e4
                    00E4    432 _ACC_4	=	0x00e4
                    00E5    433 Ftest_radio$ACC_5$0$0 == 0x00e5
                    00E5    434 _ACC_5	=	0x00e5
                    00E6    435 Ftest_radio$ACC_6$0$0 == 0x00e6
                    00E6    436 _ACC_6	=	0x00e6
                    00E7    437 Ftest_radio$ACC_7$0$0 == 0x00e7
                    00E7    438 _ACC_7	=	0x00e7
                    00E8    439 Ftest_radio$P2IF$0$0 == 0x00e8
                    00E8    440 _P2IF	=	0x00e8
                    00E9    441 Ftest_radio$UTX0IF$0$0 == 0x00e9
                    00E9    442 _UTX0IF	=	0x00e9
                    00EA    443 Ftest_radio$UTX1IF$0$0 == 0x00ea
                    00EA    444 _UTX1IF	=	0x00ea
                    00EB    445 Ftest_radio$P1IF$0$0 == 0x00eb
                    00EB    446 _P1IF	=	0x00eb
                    00EC    447 Ftest_radio$WDTIF$0$0 == 0x00ec
                    00EC    448 _WDTIF	=	0x00ec
                    00ED    449 Ftest_radio$_IRCON25$0$0 == 0x00ed
                    00ED    450 __IRCON25	=	0x00ed
                    00EE    451 Ftest_radio$_IRCON26$0$0 == 0x00ee
                    00EE    452 __IRCON26	=	0x00ee
                    00EF    453 Ftest_radio$_IRCON27$0$0 == 0x00ef
                    00EF    454 __IRCON27	=	0x00ef
                    00F0    455 Ftest_radio$B_0$0$0 == 0x00f0
                    00F0    456 _B_0	=	0x00f0
                    00F1    457 Ftest_radio$B_1$0$0 == 0x00f1
                    00F1    458 _B_1	=	0x00f1
                    00F2    459 Ftest_radio$B_2$0$0 == 0x00f2
                    00F2    460 _B_2	=	0x00f2
                    00F3    461 Ftest_radio$B_3$0$0 == 0x00f3
                    00F3    462 _B_3	=	0x00f3
                    00F4    463 Ftest_radio$B_4$0$0 == 0x00f4
                    00F4    464 _B_4	=	0x00f4
                    00F5    465 Ftest_radio$B_5$0$0 == 0x00f5
                    00F5    466 _B_5	=	0x00f5
                    00F6    467 Ftest_radio$B_6$0$0 == 0x00f6
                    00F6    468 _B_6	=	0x00f6
                    00F7    469 Ftest_radio$B_7$0$0 == 0x00f7
                    00F7    470 _B_7	=	0x00f7
                    00F8    471 Ftest_radio$U1ACTIVE$0$0 == 0x00f8
                    00F8    472 _U1ACTIVE	=	0x00f8
                    00F9    473 Ftest_radio$U1TX_BYTE$0$0 == 0x00f9
                    00F9    474 _U1TX_BYTE	=	0x00f9
                    00FA    475 Ftest_radio$U1RX_BYTE$0$0 == 0x00fa
                    00FA    476 _U1RX_BYTE	=	0x00fa
                    00FB    477 Ftest_radio$U1ERR$0$0 == 0x00fb
                    00FB    478 _U1ERR	=	0x00fb
                    00FC    479 Ftest_radio$U1FE$0$0 == 0x00fc
                    00FC    480 _U1FE	=	0x00fc
                    00FD    481 Ftest_radio$U1SLAVE$0$0 == 0x00fd
                    00FD    482 _U1SLAVE	=	0x00fd
                    00FE    483 Ftest_radio$U1RE$0$0 == 0x00fe
                    00FE    484 _U1RE	=	0x00fe
                    00FF    485 Ftest_radio$U1MODE$0$0 == 0x00ff
                    00FF    486 _U1MODE	=	0x00ff
                            487 ;--------------------------------------------------------
                            488 ; overlayable register banks
                            489 ;--------------------------------------------------------
                            490 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     491 	.ds 8
                            492 	.area REG_BANK_3	(REL,OVR,DATA)
   0018                     493 	.ds 8
                            494 ;--------------------------------------------------------
                            495 ; overlayable bit register bank
                            496 ;--------------------------------------------------------
                            497 	.area BIT_BANK	(REL,OVR,DATA)
   0025                     498 bits:
   0025                     499 	.ds 1
                    8000    500 	b0 = bits[0]
                    8100    501 	b1 = bits[1]
                    8200    502 	b2 = bits[2]
                    8300    503 	b3 = bits[3]
                    8400    504 	b4 = bits[4]
                    8500    505 	b5 = bits[5]
                    8600    506 	b6 = bits[6]
                    8700    507 	b7 = bits[7]
                            508 ;--------------------------------------------------------
                            509 ; internal ram data
                            510 ;--------------------------------------------------------
                            511 	.area DSEG    (DATA)
                    0000    512 Ftest_radio$accSample$0$0==.
   0026                     513 _accSample:
   0026                     514 	.ds 2
                    0002    515 Ftest_radio$sampleIndex$0$0==.
   0028                     516 _sampleIndex:
   0028                     517 	.ds 1
                    0003    518 Ftest_radio$isrCounter$0$0==.
   0029                     519 _isrCounter:
   0029                     520 	.ds 1
                    0004    521 Ftest_radio$operationalTimeStamp$0$0==.
   002A                     522 _operationalTimeStamp:
   002A                     523 	.ds 4
                            524 ;--------------------------------------------------------
                            525 ; overlayable items in internal ram 
                            526 ;--------------------------------------------------------
                            527 	.area OSEG    (OVR,DATA)
                            528 ;--------------------------------------------------------
                            529 ; Stack segment in internal ram 
                            530 ;--------------------------------------------------------
                            531 	.area	SSEG	(DATA)
   003B                     532 __start__stack:
   003B                     533 	.ds	1
                            534 
                            535 ;--------------------------------------------------------
                            536 ; indirectly addressable internal ram data
                            537 ;--------------------------------------------------------
                            538 	.area ISEG    (DATA)
                            539 ;--------------------------------------------------------
                            540 ; absolute internal ram data
                            541 ;--------------------------------------------------------
                            542 	.area IABS    (ABS,DATA)
                            543 	.area IABS    (ABS,DATA)
                            544 ;--------------------------------------------------------
                            545 ; bit data
                            546 ;--------------------------------------------------------
                            547 	.area BSEG    (BIT)
                    0000    548 Ftest_radio$sufficientRxBuffer$0$0==.
   0000                     549 _sufficientRxBuffer:
   0000                     550 	.ds 1
                    0001    551 Ftest_radio$lostSample$0$0==.
   0001                     552 _lostSample:
   0001                     553 	.ds 1
                    0002    554 Ftest_radio$dacNAKd$0$0==.
   0002                     555 _dacNAKd:
   0002                     556 	.ds 1
                    0003    557 Ftest_radio$initComplete$0$0==.
   0003                     558 _initComplete:
   0003                     559 	.ds 1
                    0004    560 LISR_T3$sloc0$1$0==.
   0004                     561 _ISR_T3_sloc0_1_0:
   0004                     562 	.ds 1
                    0005    563 Lmain$sloc0$1$0==.
   0005                     564 _main_sloc0_1_0:
   0005                     565 	.ds 1
                            566 ;--------------------------------------------------------
                            567 ; paged external ram data
                            568 ;--------------------------------------------------------
                            569 	.area PSEG    (PAG,XDATA)
                    0000    570 Ftest_radio$packet$0$0==.
   F000                     571 _packet:
   F000                     572 	.ds 2
                    0002    573 Ftest_radio$cause$0$0==.
   F002                     574 _cause:
   F002                     575 	.ds 1
                    0003    576 Ftest_radio$dummySample$0$0==.
   F003                     577 _dummySample:
   F003                     578 	.ds 2
                    0005    579 Ftest_radio$packetID$0$0==.
   F005                     580 _packetID:
   F005                     581 	.ds 1
                            582 ;--------------------------------------------------------
                            583 ; external ram data
                            584 ;--------------------------------------------------------
                            585 	.area XSEG    (XDATA)
                    DF00    586 Ftest_radio$SYNC1$0$0 == 0xdf00
                    DF00    587 _SYNC1	=	0xdf00
                    DF01    588 Ftest_radio$SYNC0$0$0 == 0xdf01
                    DF01    589 _SYNC0	=	0xdf01
                    DF02    590 Ftest_radio$PKTLEN$0$0 == 0xdf02
                    DF02    591 _PKTLEN	=	0xdf02
                    DF03    592 Ftest_radio$PKTCTRL1$0$0 == 0xdf03
                    DF03    593 _PKTCTRL1	=	0xdf03
                    DF04    594 Ftest_radio$PKTCTRL0$0$0 == 0xdf04
                    DF04    595 _PKTCTRL0	=	0xdf04
                    DF05    596 Ftest_radio$ADDR$0$0 == 0xdf05
                    DF05    597 _ADDR	=	0xdf05
                    DF06    598 Ftest_radio$CHANNR$0$0 == 0xdf06
                    DF06    599 _CHANNR	=	0xdf06
                    DF07    600 Ftest_radio$FSCTRL1$0$0 == 0xdf07
                    DF07    601 _FSCTRL1	=	0xdf07
                    DF08    602 Ftest_radio$FSCTRL0$0$0 == 0xdf08
                    DF08    603 _FSCTRL0	=	0xdf08
                    DF09    604 Ftest_radio$FREQ2$0$0 == 0xdf09
                    DF09    605 _FREQ2	=	0xdf09
                    DF0A    606 Ftest_radio$FREQ1$0$0 == 0xdf0a
                    DF0A    607 _FREQ1	=	0xdf0a
                    DF0B    608 Ftest_radio$FREQ0$0$0 == 0xdf0b
                    DF0B    609 _FREQ0	=	0xdf0b
                    DF0C    610 Ftest_radio$MDMCFG4$0$0 == 0xdf0c
                    DF0C    611 _MDMCFG4	=	0xdf0c
                    DF0D    612 Ftest_radio$MDMCFG3$0$0 == 0xdf0d
                    DF0D    613 _MDMCFG3	=	0xdf0d
                    DF0E    614 Ftest_radio$MDMCFG2$0$0 == 0xdf0e
                    DF0E    615 _MDMCFG2	=	0xdf0e
                    DF0F    616 Ftest_radio$MDMCFG1$0$0 == 0xdf0f
                    DF0F    617 _MDMCFG1	=	0xdf0f
                    DF10    618 Ftest_radio$MDMCFG0$0$0 == 0xdf10
                    DF10    619 _MDMCFG0	=	0xdf10
                    DF11    620 Ftest_radio$DEVIATN$0$0 == 0xdf11
                    DF11    621 _DEVIATN	=	0xdf11
                    DF12    622 Ftest_radio$MCSM2$0$0 == 0xdf12
                    DF12    623 _MCSM2	=	0xdf12
                    DF13    624 Ftest_radio$MCSM1$0$0 == 0xdf13
                    DF13    625 _MCSM1	=	0xdf13
                    DF14    626 Ftest_radio$MCSM0$0$0 == 0xdf14
                    DF14    627 _MCSM0	=	0xdf14
                    DF15    628 Ftest_radio$FOCCFG$0$0 == 0xdf15
                    DF15    629 _FOCCFG	=	0xdf15
                    DF16    630 Ftest_radio$BSCFG$0$0 == 0xdf16
                    DF16    631 _BSCFG	=	0xdf16
                    DF17    632 Ftest_radio$AGCCTRL2$0$0 == 0xdf17
                    DF17    633 _AGCCTRL2	=	0xdf17
                    DF18    634 Ftest_radio$AGCCTRL1$0$0 == 0xdf18
                    DF18    635 _AGCCTRL1	=	0xdf18
                    DF19    636 Ftest_radio$AGCCTRL0$0$0 == 0xdf19
                    DF19    637 _AGCCTRL0	=	0xdf19
                    DF1A    638 Ftest_radio$FREND1$0$0 == 0xdf1a
                    DF1A    639 _FREND1	=	0xdf1a
                    DF1B    640 Ftest_radio$FREND0$0$0 == 0xdf1b
                    DF1B    641 _FREND0	=	0xdf1b
                    DF1C    642 Ftest_radio$FSCAL3$0$0 == 0xdf1c
                    DF1C    643 _FSCAL3	=	0xdf1c
                    DF1D    644 Ftest_radio$FSCAL2$0$0 == 0xdf1d
                    DF1D    645 _FSCAL2	=	0xdf1d
                    DF1E    646 Ftest_radio$FSCAL1$0$0 == 0xdf1e
                    DF1E    647 _FSCAL1	=	0xdf1e
                    DF1F    648 Ftest_radio$FSCAL0$0$0 == 0xdf1f
                    DF1F    649 _FSCAL0	=	0xdf1f
                    DF23    650 Ftest_radio$TEST2$0$0 == 0xdf23
                    DF23    651 _TEST2	=	0xdf23
                    DF24    652 Ftest_radio$TEST1$0$0 == 0xdf24
                    DF24    653 _TEST1	=	0xdf24
                    DF25    654 Ftest_radio$TEST0$0$0 == 0xdf25
                    DF25    655 _TEST0	=	0xdf25
                    DF2E    656 Ftest_radio$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    657 _PA_TABLE0	=	0xdf2e
                    DF2F    658 Ftest_radio$IOCFG2$0$0 == 0xdf2f
                    DF2F    659 _IOCFG2	=	0xdf2f
                    DF30    660 Ftest_radio$IOCFG1$0$0 == 0xdf30
                    DF30    661 _IOCFG1	=	0xdf30
                    DF31    662 Ftest_radio$IOCFG0$0$0 == 0xdf31
                    DF31    663 _IOCFG0	=	0xdf31
                    DF36    664 Ftest_radio$PARTNUM$0$0 == 0xdf36
                    DF36    665 _PARTNUM	=	0xdf36
                    DF37    666 Ftest_radio$VERSION$0$0 == 0xdf37
                    DF37    667 _VERSION	=	0xdf37
                    DF38    668 Ftest_radio$FREQEST$0$0 == 0xdf38
                    DF38    669 _FREQEST	=	0xdf38
                    DF39    670 Ftest_radio$LQI$0$0 == 0xdf39
                    DF39    671 _LQI	=	0xdf39
                    DF3A    672 Ftest_radio$RSSI$0$0 == 0xdf3a
                    DF3A    673 _RSSI	=	0xdf3a
                    DF3B    674 Ftest_radio$MARCSTATE$0$0 == 0xdf3b
                    DF3B    675 _MARCSTATE	=	0xdf3b
                    DF3C    676 Ftest_radio$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    677 _PKTSTATUS	=	0xdf3c
                    DF3D    678 Ftest_radio$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    679 _VCO_VC_DAC	=	0xdf3d
                    DF40    680 Ftest_radio$I2SCFG0$0$0 == 0xdf40
                    DF40    681 _I2SCFG0	=	0xdf40
                    DF41    682 Ftest_radio$I2SCFG1$0$0 == 0xdf41
                    DF41    683 _I2SCFG1	=	0xdf41
                    DF42    684 Ftest_radio$I2SDATL$0$0 == 0xdf42
                    DF42    685 _I2SDATL	=	0xdf42
                    DF43    686 Ftest_radio$I2SDATH$0$0 == 0xdf43
                    DF43    687 _I2SDATH	=	0xdf43
                    DF44    688 Ftest_radio$I2SWCNT$0$0 == 0xdf44
                    DF44    689 _I2SWCNT	=	0xdf44
                    DF45    690 Ftest_radio$I2SSTAT$0$0 == 0xdf45
                    DF45    691 _I2SSTAT	=	0xdf45
                    DF46    692 Ftest_radio$I2SCLKF0$0$0 == 0xdf46
                    DF46    693 _I2SCLKF0	=	0xdf46
                    DF47    694 Ftest_radio$I2SCLKF1$0$0 == 0xdf47
                    DF47    695 _I2SCLKF1	=	0xdf47
                    DF48    696 Ftest_radio$I2SCLKF2$0$0 == 0xdf48
                    DF48    697 _I2SCLKF2	=	0xdf48
                    DE00    698 Ftest_radio$USBADDR$0$0 == 0xde00
                    DE00    699 _USBADDR	=	0xde00
                    DE01    700 Ftest_radio$USBPOW$0$0 == 0xde01
                    DE01    701 _USBPOW	=	0xde01
                    DE02    702 Ftest_radio$USBIIF$0$0 == 0xde02
                    DE02    703 _USBIIF	=	0xde02
                    DE04    704 Ftest_radio$USBOIF$0$0 == 0xde04
                    DE04    705 _USBOIF	=	0xde04
                    DE06    706 Ftest_radio$USBCIF$0$0 == 0xde06
                    DE06    707 _USBCIF	=	0xde06
                    DE07    708 Ftest_radio$USBIIE$0$0 == 0xde07
                    DE07    709 _USBIIE	=	0xde07
                    DE09    710 Ftest_radio$USBOIE$0$0 == 0xde09
                    DE09    711 _USBOIE	=	0xde09
                    DE0B    712 Ftest_radio$USBCIE$0$0 == 0xde0b
                    DE0B    713 _USBCIE	=	0xde0b
                    DE0C    714 Ftest_radio$USBFRML$0$0 == 0xde0c
                    DE0C    715 _USBFRML	=	0xde0c
                    DE0D    716 Ftest_radio$USBFRMH$0$0 == 0xde0d
                    DE0D    717 _USBFRMH	=	0xde0d
                    DE0E    718 Ftest_radio$USBINDEX$0$0 == 0xde0e
                    DE0E    719 _USBINDEX	=	0xde0e
                    DE10    720 Ftest_radio$USBMAXI$0$0 == 0xde10
                    DE10    721 _USBMAXI	=	0xde10
                    DE11    722 Ftest_radio$USBCSIL$0$0 == 0xde11
                    DE11    723 _USBCSIL	=	0xde11
                    DE12    724 Ftest_radio$USBCSIH$0$0 == 0xde12
                    DE12    725 _USBCSIH	=	0xde12
                    DE13    726 Ftest_radio$USBMAXO$0$0 == 0xde13
                    DE13    727 _USBMAXO	=	0xde13
                    DE14    728 Ftest_radio$USBCSOL$0$0 == 0xde14
                    DE14    729 _USBCSOL	=	0xde14
                    DE15    730 Ftest_radio$USBCSOH$0$0 == 0xde15
                    DE15    731 _USBCSOH	=	0xde15
                    DE16    732 Ftest_radio$USBCNTL$0$0 == 0xde16
                    DE16    733 _USBCNTL	=	0xde16
                    DE17    734 Ftest_radio$USBCNTH$0$0 == 0xde17
                    DE17    735 _USBCNTH	=	0xde17
                    DE20    736 Ftest_radio$USBF0$0$0 == 0xde20
                    DE20    737 _USBF0	=	0xde20
                    DE22    738 Ftest_radio$USBF1$0$0 == 0xde22
                    DE22    739 _USBF1	=	0xde22
                    DE24    740 Ftest_radio$USBF2$0$0 == 0xde24
                    DE24    741 _USBF2	=	0xde24
                    DE26    742 Ftest_radio$USBF3$0$0 == 0xde26
                    DE26    743 _USBF3	=	0xde26
                    DE28    744 Ftest_radio$USBF4$0$0 == 0xde28
                    DE28    745 _USBF4	=	0xde28
                    DE2A    746 Ftest_radio$USBF5$0$0 == 0xde2a
                    DE2A    747 _USBF5	=	0xde2a
                    0000    748 LreportResults$buffer$2$2==.
   F047                     749 _reportResults_buffer_2_2:
   F047                     750 	.ds 64
                            751 ;--------------------------------------------------------
                            752 ; absolute external ram data
                            753 ;--------------------------------------------------------
                            754 	.area XABS    (ABS,XDATA)
                            755 ;--------------------------------------------------------
                            756 ; external initialized ram data
                            757 ;--------------------------------------------------------
                            758 	.area XISEG   (XDATA)
                            759 	.area HOME    (CODE)
                            760 	.area GSINIT0 (CODE)
                            761 	.area GSINIT1 (CODE)
                            762 	.area GSINIT2 (CODE)
                            763 	.area GSINIT3 (CODE)
                            764 	.area GSINIT4 (CODE)
                            765 	.area GSINIT5 (CODE)
                            766 	.area GSINIT  (CODE)
                            767 	.area GSFINAL (CODE)
                            768 	.area CSEG    (CODE)
                            769 ;--------------------------------------------------------
                            770 ; interrupt vector 
                            771 ;--------------------------------------------------------
                            772 	.area HOME    (CODE)
   0400                     773 __interrupt_vect:
   0400 02 04 8D            774 	ljmp	__sdcc_gsinit_startup
   0403 32                  775 	reti
   0404                     776 	.ds	7
   040B 32                  777 	reti
   040C                     778 	.ds	7
   0413 32                  779 	reti
   0414                     780 	.ds	7
   041B 32                  781 	reti
   041C                     782 	.ds	7
   0423 32                  783 	reti
   0424                     784 	.ds	7
   042B 32                  785 	reti
   042C                     786 	.ds	7
   0433 32                  787 	reti
   0434                     788 	.ds	7
   043B 32                  789 	reti
   043C                     790 	.ds	7
   0443 32                  791 	reti
   0444                     792 	.ds	7
   044B 32                  793 	reti
   044C                     794 	.ds	7
   0453 32                  795 	reti
   0454                     796 	.ds	7
   045B 02 06 35            797 	ljmp	_ISR_T3
   045E                     798 	.ds	5
   0463 02 0E 6C            799 	ljmp	_ISR_T4
   0466                     800 	.ds	5
   046B 32                  801 	reti
   046C                     802 	.ds	7
   0473 32                  803 	reti
   0474                     804 	.ds	7
   047B 32                  805 	reti
   047C                     806 	.ds	7
   0483 02 0C 20            807 	ljmp	_ISR_RF
                            808 ;--------------------------------------------------------
                            809 ; global & static initialisations
                            810 ;--------------------------------------------------------
                            811 	.area HOME    (CODE)
                            812 	.area GSINIT  (CODE)
                            813 	.area GSFINAL (CODE)
                            814 	.area GSINIT  (CODE)
                            815 	.globl __sdcc_gsinit_startup
                            816 	.globl __sdcc_program_startup
                            817 	.globl __start__stack
                            818 	.globl __mcs51_genXINIT
                            819 	.globl __mcs51_genXRAMCLEAR
                            820 	.globl __mcs51_genRAMCLEAR
                    0000    821 	G$main$0$0 ==.
                    0000    822 	C$test_radio.c$105$1$1 ==.
                            823 ;	src/test_radio/test_radio.c:105: static volatile uint8 cause = 0;
   04E6 78 02               824 	mov	r0,#_cause
   04E8 E4                  825 	clr	a
   04E9 F2                  826 	movx	@r0,a
                    0004    827 	G$main$0$0 ==.
                    0004    828 	C$test_radio.c$107$1$1 ==.
                            829 ;	src/test_radio/test_radio.c:107: static volatile uint16 dummySample = 0;
   04EA 78 03               830 	mov	r0,#_dummySample
   04EC E4                  831 	clr	a
   04ED F2                  832 	movx	@r0,a
   04EE 08                  833 	inc	r0
   04EF F2                  834 	movx	@r0,a
                    000A    835 	G$main$0$0 ==.
                    000A    836 	C$test_radio.c$109$1$1 ==.
                            837 ;	src/test_radio/test_radio.c:109: static volatile uint8 packetID = 0;
   04F0 78 05               838 	mov	r0,#_packetID
   04F2 E4                  839 	clr	a
   04F3 F2                  840 	movx	@r0,a
                            841 	.area GSFINAL (CODE)
   0528 02 04 86            842 	ljmp	__sdcc_program_startup
                            843 ;--------------------------------------------------------
                            844 ; Home
                            845 ;--------------------------------------------------------
                            846 	.area HOME    (CODE)
                            847 	.area HOME    (CODE)
   0486                     848 __sdcc_program_startup:
   0486 12 08 3D            849 	lcall	_main
                            850 ;	return from main will lock up
   0489 80 FE               851 	sjmp .
                            852 ;--------------------------------------------------------
                            853 ; code
                            854 ;--------------------------------------------------------
                            855 	.area CSEG    (CODE)
                            856 ;------------------------------------------------------------
                            857 ;Allocation info for local variables in function 'reportResults'
                            858 ;------------------------------------------------------------
                            859 ;buffer                    Allocated with name '_reportResults_buffer_2_2'
                            860 ;------------------------------------------------------------
                    0000    861 	G$reportResults$0$0 ==.
                    0000    862 	C$test_radio.c$111$0$0 ==.
                            863 ;	src/test_radio/test_radio.c:111: void reportResults()
                            864 ;	-----------------------------------------
                            865 ;	 function reportResults
                            866 ;	-----------------------------------------
   052B                     867 _reportResults:
                    0002    868 	ar2 = 0x02
                    0003    869 	ar3 = 0x03
                    0004    870 	ar4 = 0x04
                    0005    871 	ar5 = 0x05
                    0006    872 	ar6 = 0x06
                    0007    873 	ar7 = 0x07
                    0000    874 	ar0 = 0x00
                    0001    875 	ar1 = 0x01
                    0000    876 	C$test_radio.c$113$1$1 ==.
                            877 ;	src/test_radio/test_radio.c:113: if(usbComTxAvailable() > 64)
   052B 12 10 C4            878 	lcall	_usbComTxAvailable
   052E AA 82               879 	mov	r2,dpl
   0530 74 40               880 	mov	a,#0x40
   0532 B5 02 00            881 	cjne	a,ar2,00122$
   0535                     882 00122$:
   0535 40 01               883 	jc	00123$
   0537 22                  884 	ret
   0538                     885 00123$:
                    000D    886 	C$test_radio.c$118$2$2 ==.
                            887 ;	src/test_radio/test_radio.c:118: if(cause == PACKET_BUFFER_EMPTY_ERROR)
   0538 78 02               888 	mov	r0,#_cause
   053A E2                  889 	movx	a,@r0
   053B B4 01 27            890 	cjne	a,#0x01,00111$
                    0013    891 	C$test_radio.c$120$3$3 ==.
                            892 ;	src/test_radio/test_radio.c:120: bufferLength = sprintf(buffer, "Packet Buffer Empty");
   053E 74 90               893 	mov	a,#__str_0
   0540 C0 E0               894 	push	acc
   0542 74 21               895 	mov	a,#(__str_0 >> 8)
   0544 C0 E0               896 	push	acc
   0546 74 80               897 	mov	a,#0x80
   0548 C0 E0               898 	push	acc
   054A 74 47               899 	mov	a,#_reportResults_buffer_2_2
   054C C0 E0               900 	push	acc
   054E 74 F0               901 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   0550 C0 E0               902 	push	acc
   0552 E4                  903 	clr	a
   0553 C0 E0               904 	push	acc
   0555 12 19 7A            905 	lcall	_sprintf
   0558 AA 82               906 	mov	r2,dpl
   055A AB 83               907 	mov	r3,dph
   055C E5 81               908 	mov	a,sp
   055E 24 FA               909 	add	a,#0xfa
   0560 F5 81               910 	mov	sp,a
   0562 02 06 2B            911 	ljmp	00112$
   0565                     912 00111$:
                    003A    913 	C$test_radio.c$122$2$2 ==.
                            914 ;	src/test_radio/test_radio.c:122: else if(cause == DAC_NAK_ERROR)
   0565 78 02               915 	mov	r0,#_cause
   0567 E2                  916 	movx	a,@r0
   0568 B4 02 29            917 	cjne	a,#0x02,00108$
                    0040    918 	C$test_radio.c$124$3$4 ==.
                            919 ;	src/test_radio/test_radio.c:124: bufferLength = sprintf(buffer, "DAC NAK'd");
   056B 74 A4               920 	mov	a,#__str_1
   056D C0 E0               921 	push	acc
   056F 74 21               922 	mov	a,#(__str_1 >> 8)
   0571 C0 E0               923 	push	acc
   0573 74 80               924 	mov	a,#0x80
   0575 C0 E0               925 	push	acc
   0577 74 47               926 	mov	a,#_reportResults_buffer_2_2
   0579 C0 E0               927 	push	acc
   057B 74 F0               928 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   057D C0 E0               929 	push	acc
   057F E4                  930 	clr	a
   0580 C0 E0               931 	push	acc
   0582 12 19 7A            932 	lcall	_sprintf
   0585 AB 82               933 	mov	r3,dpl
   0587 AC 83               934 	mov	r4,dph
   0589 E5 81               935 	mov	a,sp
   058B 24 FA               936 	add	a,#0xfa
   058D F5 81               937 	mov	sp,a
   058F 8B 02               938 	mov	ar2,r3
   0591 02 06 2B            939 	ljmp	00112$
   0594                     940 00108$:
                    0069    941 	C$test_radio.c$126$2$2 ==.
                            942 ;	src/test_radio/test_radio.c:126: else if(cause == SAMPLE_ERROR)
   0594 78 02               943 	mov	r0,#_cause
   0596 E2                  944 	movx	a,@r0
   0597 B4 03 3D            945 	cjne	a,#0x03,00105$
                    006F    946 	C$test_radio.c$130$3$5 ==.
                            947 ;	src/test_radio/test_radio.c:130: sampleIndex, accSample, dummySample);
   059A AB 28               948 	mov	r3,_sampleIndex
   059C 7C 00               949 	mov	r4,#0x00
                    0073    950 	C$test_radio.c$129$3$5 ==.
                            951 ;	src/test_radio/test_radio.c:129: buffer, "Sample Error\r\n packet[%d]: %d\r\n expected: %d",
   059E 78 03               952 	mov	r0,#_dummySample
   05A0 E2                  953 	movx	a,@r0
   05A1 C0 E0               954 	push	acc
   05A3 08                  955 	inc	r0
   05A4 E2                  956 	movx	a,@r0
   05A5 C0 E0               957 	push	acc
   05A7 C0 26               958 	push	_accSample
   05A9 C0 27               959 	push	(_accSample + 1)
   05AB C0 03               960 	push	ar3
   05AD C0 04               961 	push	ar4
   05AF 74 AE               962 	mov	a,#__str_2
   05B1 C0 E0               963 	push	acc
   05B3 74 21               964 	mov	a,#(__str_2 >> 8)
   05B5 C0 E0               965 	push	acc
   05B7 74 80               966 	mov	a,#0x80
   05B9 C0 E0               967 	push	acc
   05BB 74 47               968 	mov	a,#_reportResults_buffer_2_2
   05BD C0 E0               969 	push	acc
   05BF 74 F0               970 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   05C1 C0 E0               971 	push	acc
   05C3 E4                  972 	clr	a
   05C4 C0 E0               973 	push	acc
   05C6 12 19 7A            974 	lcall	_sprintf
   05C9 AB 82               975 	mov	r3,dpl
   05CB AC 83               976 	mov	r4,dph
   05CD E5 81               977 	mov	a,sp
   05CF 24 F4               978 	add	a,#0xf4
   05D1 F5 81               979 	mov	sp,a
   05D3 8B 02               980 	mov	ar2,r3
   05D5 80 54               981 	sjmp	00112$
   05D7                     982 00105$:
                    00AC    983 	C$test_radio.c$132$2$2 ==.
                            984 ;	src/test_radio/test_radio.c:132: else if(cause == PACKET_ID_ERROR)
   05D7 78 02               985 	mov	r0,#_cause
   05D9 E2                  986 	movx	a,@r0
   05DA B4 04 28            987 	cjne	a,#0x04,00102$
                    00B2    988 	C$test_radio.c$134$3$6 ==.
                            989 ;	src/test_radio/test_radio.c:134: bufferLength = sprintf(buffer, "Packet ID Error");
   05DD 74 DB               990 	mov	a,#__str_3
   05DF C0 E0               991 	push	acc
   05E1 74 21               992 	mov	a,#(__str_3 >> 8)
   05E3 C0 E0               993 	push	acc
   05E5 74 80               994 	mov	a,#0x80
   05E7 C0 E0               995 	push	acc
   05E9 74 47               996 	mov	a,#_reportResults_buffer_2_2
   05EB C0 E0               997 	push	acc
   05ED 74 F0               998 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   05EF C0 E0               999 	push	acc
   05F1 E4                 1000 	clr	a
   05F2 C0 E0              1001 	push	acc
   05F4 12 19 7A           1002 	lcall	_sprintf
   05F7 AB 82              1003 	mov	r3,dpl
   05F9 AC 83              1004 	mov	r4,dph
   05FB E5 81              1005 	mov	a,sp
   05FD 24 FA              1006 	add	a,#0xfa
   05FF F5 81              1007 	mov	sp,a
   0601 8B 02              1008 	mov	ar2,r3
   0603 80 26              1009 	sjmp	00112$
   0605                    1010 00102$:
                    00DA   1011 	C$test_radio.c$138$3$7 ==.
                           1012 ;	src/test_radio/test_radio.c:138: bufferLength = sprintf(buffer, "Unknown Error");
   0605 74 EB              1013 	mov	a,#__str_4
   0607 C0 E0              1014 	push	acc
   0609 74 21              1015 	mov	a,#(__str_4 >> 8)
   060B C0 E0              1016 	push	acc
   060D 74 80              1017 	mov	a,#0x80
   060F C0 E0              1018 	push	acc
   0611 74 47              1019 	mov	a,#_reportResults_buffer_2_2
   0613 C0 E0              1020 	push	acc
   0615 74 F0              1021 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   0617 C0 E0              1022 	push	acc
   0619 E4                 1023 	clr	a
   061A C0 E0              1024 	push	acc
   061C 12 19 7A           1025 	lcall	_sprintf
   061F AB 82              1026 	mov	r3,dpl
   0621 AC 83              1027 	mov	r4,dph
   0623 E5 81              1028 	mov	a,sp
   0625 24 FA              1029 	add	a,#0xfa
   0627 F5 81              1030 	mov	sp,a
   0629 8B 02              1031 	mov	ar2,r3
   062B                    1032 00112$:
                    0100   1033 	C$test_radio.c$141$2$2 ==.
                           1034 ;	src/test_radio/test_radio.c:141: usbComTxSend(buffer, bufferLength);
   062B 78 11              1035 	mov	r0,#_usbComTxSend_PARM_2
   062D EA                 1036 	mov	a,r2
   062E F2                 1037 	movx	@r0,a
   062F 90 F0 47           1038 	mov	dptr,#_reportResults_buffer_2_2
                    0107   1039 	C$test_radio.c$143$2$1 ==.
                    0107   1040 	XG$reportResults$0$0 ==.
   0632 02 10 F8           1041 	ljmp	_usbComTxSend
                           1042 ;------------------------------------------------------------
                           1043 ;Allocation info for local variables in function 'ISR_T3'
                           1044 ;------------------------------------------------------------
                           1045 ;------------------------------------------------------------
                    010A   1046 	G$ISR_T3$0$0 ==.
                    010A   1047 	C$test_radio.c$165$2$1 ==.
                           1048 ;	src/test_radio/test_radio.c:165: */ISR(T3, 3)
                           1049 ;	-----------------------------------------
                           1050 ;	 function ISR_T3
                           1051 ;	-----------------------------------------
   0635                    1052 _ISR_T3:
                    001A   1053 	ar2 = 0x1a
                    001B   1054 	ar3 = 0x1b
                    001C   1055 	ar4 = 0x1c
                    001D   1056 	ar5 = 0x1d
                    001E   1057 	ar6 = 0x1e
                    001F   1058 	ar7 = 0x1f
                    0018   1059 	ar0 = 0x18
                    0019   1060 	ar1 = 0x19
   0635 C0 25              1061 	push	bits
   0637 C0 E0              1062 	push	acc
   0639 C0 F0              1063 	push	b
   063B C0 82              1064 	push	dpl
   063D C0 83              1065 	push	dph
   063F C0 02              1066 	push	(0+2)
   0641 C0 03              1067 	push	(0+3)
   0643 C0 04              1068 	push	(0+4)
   0645 C0 05              1069 	push	(0+5)
   0647 C0 06              1070 	push	(0+6)
   0649 C0 07              1071 	push	(0+7)
   064B C0 00              1072 	push	(0+0)
   064D C0 01              1073 	push	(0+1)
   064F C0 D0              1074 	push	psw
   0651 75 D0 18           1075 	mov	psw,#0x18
                    0129   1076 	C$test_radio.c$169$1$1 ==.
                           1077 ;	src/test_radio/test_radio.c:169: T3IE = 0;
   0654 C2 BB              1078 	clr	_T3IE
                    012B   1079 	C$test_radio.c$172$1$1 ==.
                           1080 ;	src/test_radio/test_radio.c:172: if(initComplete && sufficientRxBuffer)
   0656 20 03 03           1081 	jb	_initComplete,00142$
   0659 02 07 BE           1082 	ljmp	00123$
   065C                    1083 00142$:
   065C 20 00 03           1084 	jb	_sufficientRxBuffer,00143$
   065F 02 07 BE           1085 	ljmp	00123$
   0662                    1086 00143$:
                    0137   1087 	C$test_radio.c$176$2$2 ==.
                           1088 ;	src/test_radio/test_radio.c:176: if(!dacNAKd && packet)
   0662 30 02 03           1089 	jnb	_dacNAKd,00144$
   0665 02 07 B3           1090 	ljmp	00119$
   0668                    1091 00144$:
   0668 78 00              1092 	mov	r0,#_packet
   066A E2                 1093 	movx	a,@r0
   066B F5 F0              1094 	mov	b,a
   066D 08                 1095 	inc	r0
   066E E2                 1096 	movx	a,@r0
   066F 45 F0              1097 	orl	a,b
   0671 70 03              1098 	jnz	00145$
   0673 02 07 B3           1099 	ljmp	00119$
   0676                    1100 00145$:
                    014B   1101 	C$test_radio.c$181$3$3 ==.
                           1102 ;	src/test_radio/test_radio.c:181: DAC_COMMAND | (uint8) ((accSample & 0xF00) >> 8));
   0676 E5 26              1103 	mov	a,_accSample
   0678 74 0F              1104 	mov	a,#0x0F
   067A 55 27              1105 	anl	a,(_accSample + 1)
   067C FA                 1106 	mov	r2,a
   067D 90 21 8F           1107 	mov	dptr,#_DAC_COMMAND
   0680 E4                 1108 	clr	a
   0681 93                 1109 	movc	a,@a+dptr
   0682 4A                 1110 	orl	a,r2
   0683 F5 82              1111 	mov	dpl,a
   0685 75 D0 00           1112 	mov	psw,#0x00
   0688 12 11 98           1113 	lcall	_dacSendByte
   068B 53 D0 E7           1114 	anl	psw,#0xE7
   068E 43 D0 18           1115 	orl	psw,#0x18
   0691 92 04              1116 	mov  _ISR_T3_sloc0_1_0,c
   0693 72 02              1117 	orl	c,_dacNAKd
   0695 92 02              1118 	mov	_dacNAKd,c
                    016C   1119 	C$test_radio.c$182$3$3 ==.
                           1120 ;	src/test_radio/test_radio.c:182: dacNAKd |= dacSendByte((uint8) (accSample & 0xFF));
   0697 AA 26              1121 	mov	r2,_accSample
   0699 E5 27              1122 	mov	a,(_accSample + 1)
   069B 8A 82              1123 	mov	dpl,r2
   069D 75 D0 00           1124 	mov	psw,#0x00
   06A0 12 11 98           1125 	lcall	_dacSendByte
   06A3 53 D0 E7           1126 	anl	psw,#0xE7
   06A6 43 D0 18           1127 	orl	psw,#0x18
   06A9 92 04              1128 	mov  _ISR_T3_sloc0_1_0,c
   06AB 72 02              1129 	orl	c,_dacNAKd
   06AD 92 02              1130 	mov	_dacNAKd,c
                    0184   1131 	C$test_radio.c$184$3$3 ==.
                           1132 ;	src/test_radio/test_radio.c:184: if(dacNAKd)
   06AF 30 02 05           1133 	jnb	_dacNAKd,00102$
                    0187   1134 	C$test_radio.c$186$4$4 ==.
                           1135 ;	src/test_radio/test_radio.c:186: cause = DAC_NAK_ERROR;
   06B2 78 02              1136 	mov	r0,#_cause
   06B4 74 02              1137 	mov	a,#0x02
   06B6 F2                 1138 	movx	@r0,a
   06B7                    1139 00102$:
                    018C   1140 	C$test_radio.c$191$3$3 ==.
                           1141 ;	src/test_radio/test_radio.c:191: if(isrCounter)
   06B7 E5 29              1142 	mov	a,_isrCounter
   06B9 60 3C              1143 	jz	00104$
                    0190   1144 	C$test_radio.c$193$4$5 ==.
                           1145 ;	src/test_radio/test_radio.c:193: accSample = (uint16) packet[++sampleIndex]
   06BB 05 28              1146 	inc	_sampleIndex
   06BD 78 00              1147 	mov	r0,#_packet
   06BF E2                 1148 	movx	a,@r0
   06C0 25 28              1149 	add	a,_sampleIndex
   06C2 F5 82              1150 	mov	dpl,a
   06C4 08                 1151 	inc	r0
   06C5 E2                 1152 	movx	a,@r0
   06C6 34 00              1153 	addc	a,#0x00
   06C8 F5 83              1154 	mov	dph,a
   06CA E0                 1155 	movx	a,@dptr
   06CB FA                 1156 	mov	r2,a
   06CC 7B 00              1157 	mov	r3,#0x00
                    01A3   1158 	C$test_radio.c$194$4$5 ==.
                           1159 ;	src/test_radio/test_radio.c:194: | ((uint16) (packet[++sampleIndex] & 0xF0)) << 4;
   06CE 05 28              1160 	inc	_sampleIndex
   06D0 78 00              1161 	mov	r0,#_packet
   06D2 E2                 1162 	movx	a,@r0
   06D3 25 28              1163 	add	a,_sampleIndex
   06D5 F5 82              1164 	mov	dpl,a
   06D7 08                 1165 	inc	r0
   06D8 E2                 1166 	movx	a,@r0
   06D9 34 00              1167 	addc	a,#0x00
   06DB F5 83              1168 	mov	dph,a
   06DD E0                 1169 	movx	a,@dptr
   06DE FC                 1170 	mov	r4,a
   06DF 53 1C F0           1171 	anl	ar4,#0xF0
   06E2 E4                 1172 	clr	a
   06E3 CC                 1173 	xch	a,r4
   06E4 C4                 1174 	swap	a
   06E5 CC                 1175 	xch	a,r4
   06E6 6C                 1176 	xrl	a,r4
   06E7 CC                 1177 	xch	a,r4
   06E8 54 F0              1178 	anl	a,#0xf0
   06EA CC                 1179 	xch	a,r4
   06EB 6C                 1180 	xrl	a,r4
   06EC FD                 1181 	mov	r5,a
   06ED EC                 1182 	mov	a,r4
   06EE 4A                 1183 	orl	a,r2
   06EF F5 26              1184 	mov	_accSample,a
   06F1 ED                 1185 	mov	a,r5
   06F2 4B                 1186 	orl	a,r3
   06F3 F5 27              1187 	mov	(_accSample + 1),a
   06F5 80 30              1188 	sjmp	00105$
   06F7                    1189 00104$:
                    01CC   1190 	C$test_radio.c$198$4$6 ==.
                           1191 ;	src/test_radio/test_radio.c:198: accSample = ((uint16) (packet[sampleIndex] & 0x0F)) << 8
   06F7 78 00              1192 	mov	r0,#_packet
   06F9 E2                 1193 	movx	a,@r0
   06FA 25 28              1194 	add	a,_sampleIndex
   06FC F5 82              1195 	mov	dpl,a
   06FE 08                 1196 	inc	r0
   06FF E2                 1197 	movx	a,@r0
   0700 34 00              1198 	addc	a,#0x00
   0702 F5 83              1199 	mov	dph,a
   0704 E0                 1200 	movx	a,@dptr
   0705 FA                 1201 	mov	r2,a
   0706 53 1A 0F           1202 	anl	ar2,#0x0F
   0709 8A 1B              1203 	mov	ar3,r2
   070B 7A 00              1204 	mov	r2,#0x00
                    01E2   1205 	C$test_radio.c$199$4$6 ==.
                           1206 ;	src/test_radio/test_radio.c:199: | (uint16) packet[++sampleIndex];
   070D 05 28              1207 	inc	_sampleIndex
   070F 78 00              1208 	mov	r0,#_packet
   0711 E2                 1209 	movx	a,@r0
   0712 25 28              1210 	add	a,_sampleIndex
   0714 F5 82              1211 	mov	dpl,a
   0716 08                 1212 	inc	r0
   0717 E2                 1213 	movx	a,@r0
   0718 34 00              1214 	addc	a,#0x00
   071A F5 83              1215 	mov	dph,a
   071C E0                 1216 	movx	a,@dptr
   071D FC                 1217 	mov	r4,a
   071E 7D 00              1218 	mov	r5,#0x00
   0720 4A                 1219 	orl	a,r2
   0721 F5 26              1220 	mov	_accSample,a
   0723 ED                 1221 	mov	a,r5
   0724 4B                 1222 	orl	a,r3
   0725 F5 27              1223 	mov	(_accSample + 1),a
   0727                    1224 00105$:
                    01FC   1225 	C$test_radio.c$203$3$3 ==.
                           1226 ;	src/test_radio/test_radio.c:203: if(dummySample == 2047)
   0727 78 03              1227 	mov	r0,#_dummySample
   0729 E2                 1228 	movx	a,@r0
   072A B4 FF 07           1229 	cjne	a,#0xFF,00148$
   072D 08                 1230 	inc	r0
   072E E2                 1231 	movx	a,@r0
   072F B4 07 02           1232 	cjne	a,#0x07,00148$
   0732 80 02              1233 	sjmp	00149$
   0734                    1234 00148$:
   0734 80 08              1235 	sjmp	00107$
   0736                    1236 00149$:
                    020B   1237 	C$test_radio.c$205$4$7 ==.
                           1238 ;	src/test_radio/test_radio.c:205: dummySample = 0;
   0736 78 03              1239 	mov	r0,#_dummySample
   0738 E4                 1240 	clr	a
   0739 F2                 1241 	movx	@r0,a
   073A 08                 1242 	inc	r0
   073B F2                 1243 	movx	@r0,a
   073C 80 0B              1244 	sjmp	00108$
   073E                    1245 00107$:
                    0213   1246 	C$test_radio.c$209$4$8 ==.
                           1247 ;	src/test_radio/test_radio.c:209: ++dummySample;
   073E 78 03              1248 	mov	r0,#_dummySample
   0740 E2                 1249 	movx	a,@r0
   0741 24 01              1250 	add	a,#0x01
   0743 F2                 1251 	movx	@r0,a
   0744 08                 1252 	inc	r0
   0745 E2                 1253 	movx	a,@r0
   0746 34 00              1254 	addc	a,#0x00
   0748 F2                 1255 	movx	@r0,a
   0749                    1256 00108$:
                    021E   1257 	C$test_radio.c$213$3$3 ==.
                           1258 ;	src/test_radio/test_radio.c:213: if(accSample != dummySample)
   0749 78 03              1259 	mov	r0,#_dummySample
   074B E2                 1260 	movx	a,@r0
   074C B5 26 07           1261 	cjne	a,_accSample,00150$
   074F 08                 1262 	inc	r0
   0750 E2                 1263 	movx	a,@r0
   0751 B5 27 02           1264 	cjne	a,(_accSample + 1),00150$
   0754 80 07              1265 	sjmp	00110$
   0756                    1266 00150$:
                    022B   1267 	C$test_radio.c$215$4$9 ==.
                           1268 ;	src/test_radio/test_radio.c:215: cause = SAMPLE_ERROR;
   0756 78 02              1269 	mov	r0,#_cause
   0758 74 03              1270 	mov	a,#0x03
   075A F2                 1271 	movx	@r0,a
                    0230   1272 	C$test_radio.c$216$4$9 ==.
                           1273 ;	src/test_radio/test_radio.c:216: lostSample = TRUE;
   075B D2 01              1274 	setb	_lostSample
   075D                    1275 00110$:
                    0232   1276 	C$test_radio.c$220$3$3 ==.
                           1277 ;	src/test_radio/test_radio.c:220: isrCounter ^= 1;
   075D 63 29 01           1278 	xrl	_isrCounter,#0x01
                    0235   1279 	C$test_radio.c$223$3$3 ==.
                           1280 ;	src/test_radio/test_radio.c:223: if(sampleIndex == RADIO_PAYLOAD_SIZE)
   0760 74 96              1281 	mov	a,#0x96
   0762 B5 28 59           1282 	cjne	a,_sampleIndex,00123$
                    023A   1283 	C$test_radio.c$226$4$10 ==.
                           1284 ;	src/test_radio/test_radio.c:226: if(packet[RADIO_PAYLOAD_SIZE + 1] != packetID)
   0765 78 00              1285 	mov	r0,#_packet
   0767 E2                 1286 	movx	a,@r0
   0768 24 97              1287 	add	a,#0x97
   076A F5 82              1288 	mov	dpl,a
   076C 08                 1289 	inc	r0
   076D E2                 1290 	movx	a,@r0
   076E 34 00              1291 	addc	a,#0x00
   0770 F5 83              1292 	mov	dph,a
   0772 E0                 1293 	movx	a,@dptr
   0773 FA                 1294 	mov	r2,a
   0774 78 05              1295 	mov	r0,#_packetID
   0776 E2                 1296 	movx	a,@r0
   0777 B5 1A 02           1297 	cjne	a,ar2,00153$
   077A 80 09              1298 	sjmp	00112$
   077C                    1299 00153$:
                    0251   1300 	C$test_radio.c$228$5$11 ==.
                           1301 ;	src/test_radio/test_radio.c:228: lostSample = TRUE;
   077C D2 01              1302 	setb	_lostSample
                    0253   1303 	C$test_radio.c$229$5$11 ==.
                           1304 ;	src/test_radio/test_radio.c:229: cause = PACKET_ID_ERROR;
   077E 78 02              1305 	mov	r0,#_cause
   0780 74 04              1306 	mov	a,#0x04
   0782 F2                 1307 	movx	@r0,a
   0783 80 06              1308 	sjmp	00113$
   0785                    1309 00112$:
                    025A   1310 	C$test_radio.c$233$5$12 ==.
                           1311 ;	src/test_radio/test_radio.c:233: ++packetID;
   0785 78 05              1312 	mov	r0,#_packetID
   0787 E2                 1313 	movx	a,@r0
   0788 24 01              1314 	add	a,#0x01
   078A F2                 1315 	movx	@r0,a
   078B                    1316 00113$:
                    0260   1317 	C$test_radio.c$236$4$10 ==.
                           1318 ;	src/test_radio/test_radio.c:236: radioRxDoneWithPacket(); // Release current packet
   078B 75 D0 00           1319 	mov	psw,#0x00
   078E 12 0A E8           1320 	lcall	_radioRxDoneWithPacket
                    0266   1321 	C$test_radio.c$237$4$10 ==.
                           1322 ;	src/test_radio/test_radio.c:237: packet = radioRxCurrentPacket(); // get next packet to process
   0791 75 D0 00           1323 	mov	psw,#0x00
   0794 12 0A A4           1324 	lcall	_radioRxCurrentPacket
   0797 75 D0 18           1325 	mov	psw,#0x18
   079A AA 82              1326 	mov	r2,dpl
   079C AB 83              1327 	mov	r3,dph
   079E 78 00              1328 	mov	r0,#_packet
   07A0 EA                 1329 	mov	a,r2
   07A1 F2                 1330 	movx	@r0,a
   07A2 08                 1331 	inc	r0
   07A3 EB                 1332 	mov	a,r3
   07A4 F2                 1333 	movx	@r0,a
                    027A   1334 	C$test_radio.c$238$4$10 ==.
                           1335 ;	src/test_radio/test_radio.c:238: sampleIndex = 0; // reset sampleIndex
   07A5 75 28 00           1336 	mov	_sampleIndex,#0x00
                    027D   1337 	C$test_radio.c$240$4$10 ==.
                           1338 ;	src/test_radio/test_radio.c:240: if(packet == 0)
   07A8 EA                 1339 	mov	a,r2
   07A9 4B                 1340 	orl	a,r3
   07AA 70 12              1341 	jnz	00123$
                    0281   1342 	C$test_radio.c$242$5$13 ==.
                           1343 ;	src/test_radio/test_radio.c:242: cause = PACKET_BUFFER_EMPTY_ERROR;
   07AC 78 02              1344 	mov	r0,#_cause
   07AE 74 01              1345 	mov	a,#0x01
   07B0 F2                 1346 	movx	@r0,a
   07B1 80 0B              1347 	sjmp	00123$
   07B3                    1348 00119$:
                    0288   1349 	C$test_radio.c$250$3$14 ==.
                           1350 ;	src/test_radio/test_radio.c:250: dacStop(); // DAC will hold at last sample sent to it;
   07B3 75 D0 00           1351 	mov	psw,#0x00
   07B6 12 11 93           1352 	lcall	_dacStop
   07B9 75 D0 18           1353 	mov	psw,#0x18
                    0291   1354 	C$test_radio.c$251$3$14 ==.
                           1355 ;	src/test_radio/test_radio.c:251: lostSample = TRUE;
   07BC D2 01              1356 	setb	_lostSample
   07BE                    1357 00123$:
                    0293   1358 	C$test_radio.c$255$1$1 ==.
                           1359 ;	src/test_radio/test_radio.c:255: if(!lostSample)
   07BE 20 01 04           1360 	jb	_lostSample,00126$
                    0296   1361 	C$test_radio.c$258$2$15 ==.
                           1362 ;	src/test_radio/test_radio.c:258: T3IE = 1;
   07C1 D2 BB              1363 	setb	_T3IE
   07C3 80 09              1364 	sjmp	00128$
   07C5                    1365 00126$:
                    029A   1366 	C$test_radio.c$262$2$16 ==.
                           1367 ;	src/test_radio/test_radio.c:262: reportResults();
   07C5 75 D0 00           1368 	mov	psw,#0x00
   07C8 12 05 2B           1369 	lcall	_reportResults
   07CB 75 D0 18           1370 	mov	psw,#0x18
   07CE                    1371 00128$:
   07CE D0 D0              1372 	pop	psw
   07D0 D0 01              1373 	pop	(0+1)
   07D2 D0 00              1374 	pop	(0+0)
   07D4 D0 07              1375 	pop	(0+7)
   07D6 D0 06              1376 	pop	(0+6)
   07D8 D0 05              1377 	pop	(0+5)
   07DA D0 04              1378 	pop	(0+4)
   07DC D0 03              1379 	pop	(0+3)
   07DE D0 02              1380 	pop	(0+2)
   07E0 D0 83              1381 	pop	dph
   07E2 D0 82              1382 	pop	dpl
   07E4 D0 F0              1383 	pop	b
   07E6 D0 E0              1384 	pop	acc
   07E8 D0 25              1385 	pop	bits
                    02BF   1386 	C$test_radio.c$264$1$1 ==.
                    02BF   1387 	XG$ISR_T3$0$0 ==.
   07EA 32                 1388 	reti
                           1389 ;------------------------------------------------------------
                           1390 ;Allocation info for local variables in function 'updateLeds'
                           1391 ;------------------------------------------------------------
                           1392 ;------------------------------------------------------------
                    02C0   1393 	Ftest_radio$updateLeds$0$0 ==.
                    02C0   1394 	C$test_radio.c$280$1$1 ==.
                           1395 ;	src/test_radio/test_radio.c:280: static void updateLeds()
                           1396 ;	-----------------------------------------
                           1397 ;	 function updateLeds
                           1398 ;	-----------------------------------------
   07EB                    1399 _updateLeds:
                    0002   1400 	ar2 = 0x02
                    0003   1401 	ar3 = 0x03
                    0004   1402 	ar4 = 0x04
                    0005   1403 	ar5 = 0x05
                    0006   1404 	ar6 = 0x06
                    0007   1405 	ar7 = 0x07
                    0000   1406 	ar0 = 0x00
                    0001   1407 	ar1 = 0x01
                    02C0   1408 	C$test_radio.c$282$1$1 ==.
                           1409 ;	src/test_radio/test_radio.c:282: usbShowStatusWithGreenLed(); // USB connected
   07EB 12 19 CF           1410 	lcall	_usbShowStatusWithGreenLed
                    02C3   1411 	C$test_radio.c$283$2$2 ==.
                           1412 ;	src/test_radio/test_radio.c:283: LED_YELLOW(vinPowerPresent());
   07EE 12 18 A4           1413 	lcall	_vinPowerPresent
   07F1 50 05              1414 	jnc	00107$
   07F3 43 FF 04           1415 	orl	_P2DIR,#0x04
   07F6 80 03              1416 	sjmp	00108$
   07F8                    1417 00107$:
   07F8 53 FF FB           1418 	anl	_P2DIR,#0xFB
   07FB                    1419 00108$:
                    02D0   1420 	C$test_radio.c$287$1$1 ==.
                           1421 ;	src/test_radio/test_radio.c:287: if((getMs() - operationalTimeStamp > 500) && sendReceiveComplete
   07FB 12 0E 4B           1422 	lcall	_getMs
   07FE AA 82              1423 	mov	r2,dpl
   0800 AB 83              1424 	mov	r3,dph
   0802 AC F0              1425 	mov	r4,b
   0804 FD                 1426 	mov	r5,a
   0805 EA                 1427 	mov	a,r2
   0806 C3                 1428 	clr	c
   0807 95 2A              1429 	subb	a,_operationalTimeStamp
   0809 FA                 1430 	mov	r2,a
   080A EB                 1431 	mov	a,r3
   080B 95 2B              1432 	subb	a,(_operationalTimeStamp + 1)
   080D FB                 1433 	mov	r3,a
   080E EC                 1434 	mov	a,r4
   080F 95 2C              1435 	subb	a,(_operationalTimeStamp + 2)
   0811 FC                 1436 	mov	r4,a
   0812 ED                 1437 	mov	a,r5
   0813 95 2D              1438 	subb	a,(_operationalTimeStamp + 3)
   0815 FD                 1439 	mov	r5,a
   0816 C3                 1440 	clr	c
   0817 74 F4              1441 	mov	a,#0xF4
   0819 9A                 1442 	subb	a,r2
   081A 74 01              1443 	mov	a,#0x01
   081C 9B                 1444 	subb	a,r3
   081D E4                 1445 	clr	a
   081E 9C                 1446 	subb	a,r4
   081F E4                 1447 	clr	a
   0820 9D                 1448 	subb	a,r5
   0821 50 19              1449 	jnc	00105$
   0823 30 07 16           1450 	jnb	_sendReceiveComplete,00105$
                    02FB   1451 	C$test_radio.c$288$1$1 ==.
                           1452 ;	src/test_radio/test_radio.c:288: && !lostSample)
   0826 20 01 13           1453 	jb	_lostSample,00105$
                    02FE   1454 	C$test_radio.c$291$3$4 ==.
                           1455 ;	src/test_radio/test_radio.c:291: LED_RED_TOGGLE();
   0829 63 FF 02           1456 	xrl	_P2DIR,#0x02
                    0301   1457 	C$test_radio.c$294$2$3 ==.
                           1458 ;	src/test_radio/test_radio.c:294: sendReceiveComplete = FALSE;
   082C C2 07              1459 	clr	_sendReceiveComplete
                    0303   1460 	C$test_radio.c$295$2$3 ==.
                           1461 ;	src/test_radio/test_radio.c:295: operationalTimeStamp = getMs();
   082E 12 0E 4B           1462 	lcall	_getMs
   0831 85 82 2A           1463 	mov	_operationalTimeStamp,dpl
   0834 85 83 2B           1464 	mov	(_operationalTimeStamp + 1),dph
   0837 85 F0 2C           1465 	mov	(_operationalTimeStamp + 2),b
   083A F5 2D              1466 	mov	(_operationalTimeStamp + 3),a
   083C                    1467 00105$:
                    0311   1468 	C$test_radio.c$297$2$1 ==.
                    0311   1469 	XFtest_radio$updateLeds$0$0 ==.
   083C 22                 1470 	ret
                           1471 ;------------------------------------------------------------
                           1472 ;Allocation info for local variables in function 'main'
                           1473 ;------------------------------------------------------------
                           1474 ;------------------------------------------------------------
                    0312   1475 	G$main$0$0 ==.
                    0312   1476 	C$test_radio.c$313$2$1 ==.
                           1477 ;	src/test_radio/test_radio.c:313: void main()
                           1478 ;	-----------------------------------------
                           1479 ;	 function main
                           1480 ;	-----------------------------------------
   083D                    1481 _main:
                    0312   1482 	C$test_radio.c$316$1$1 ==.
                           1483 ;	src/test_radio/test_radio.c:316: initComplete = FALSE;
   083D C2 03              1484 	clr	_initComplete
                    0314   1485 	C$test_radio.c$319$1$1 ==.
                           1486 ;	src/test_radio/test_radio.c:319: systemInit();
   083F 12 17 F2           1487 	lcall	_systemInit
                    0317   1488 	C$test_radio.c$320$1$1 ==.
                           1489 ;	src/test_radio/test_radio.c:320: usbInit();
   0842 12 11 BE           1490 	lcall	_usbInit
                    031A   1491 	C$test_radio.c$322$1$1 ==.
                           1492 ;	src/test_radio/test_radio.c:322: radioInit(RECEIVER);
   0845 C2 0E              1493 	clr	_radioInit_PARM_1
   0847 12 08 B2           1494 	lcall	_radioInit
                    031F   1495 	C$test_radio.c$323$1$1 ==.
                           1496 ;	src/test_radio/test_radio.c:323: isrTimerInit();
   084A 12 0E CF           1497 	lcall	_isrTimerInit
                    0322   1498 	C$test_radio.c$324$1$1 ==.
                           1499 ;	src/test_radio/test_radio.c:324: dacInit();
   084D 12 11 7F           1500 	lcall	_dacInit
                    0325   1501 	C$test_radio.c$327$1$1 ==.
                           1502 ;	src/test_radio/test_radio.c:327: sufficientRxBuffer = FALSE;
   0850 C2 00              1503 	clr	_sufficientRxBuffer
                    0327   1504 	C$test_radio.c$328$1$1 ==.
                           1505 ;	src/test_radio/test_radio.c:328: lostSample = FALSE;
   0852 C2 01              1506 	clr	_lostSample
                    0329   1507 	C$test_radio.c$329$1$1 ==.
                           1508 ;	src/test_radio/test_radio.c:329: dacNAKd = FALSE;
   0854 C2 02              1509 	clr	_dacNAKd
                    032B   1510 	C$test_radio.c$331$1$1 ==.
                           1511 ;	src/test_radio/test_radio.c:331: packet = 0;
   0856 78 00              1512 	mov	r0,#_packet
   0858 E4                 1513 	clr	a
   0859 F2                 1514 	movx	@r0,a
   085A 08                 1515 	inc	r0
   085B F2                 1516 	movx	@r0,a
                    0331   1517 	C$test_radio.c$332$1$1 ==.
                           1518 ;	src/test_radio/test_radio.c:332: sampleIndex = 0;
   085C 75 28 00           1519 	mov	_sampleIndex,#0x00
                    0334   1520 	C$test_radio.c$333$1$1 ==.
                           1521 ;	src/test_radio/test_radio.c:333: isrCounter = TRUE;
   085F 75 29 01           1522 	mov	_isrCounter,#0x01
                    0337   1523 	C$test_radio.c$334$1$1 ==.
                           1524 ;	src/test_radio/test_radio.c:334: accSample = 1;
   0862 75 26 01           1525 	mov	_accSample,#0x01
   0865 75 27 00           1526 	mov	(_accSample + 1),#0x00
                    033D   1527 	C$test_radio.c$336$1$1 ==.
                           1528 ;	src/test_radio/test_radio.c:336: operationalTimeStamp = getMs();
   0868 12 0E 4B           1529 	lcall	_getMs
   086B 85 82 2A           1530 	mov	_operationalTimeStamp,dpl
   086E 85 83 2B           1531 	mov	(_operationalTimeStamp + 1),dph
   0871 85 F0 2C           1532 	mov	(_operationalTimeStamp + 2),b
   0874 F5 2D              1533 	mov	(_operationalTimeStamp + 3),a
                    034B   1534 	C$test_radio.c$339$1$1 ==.
                           1535 ;	src/test_radio/test_radio.c:339: initComplete = TRUE;
   0876 D2 03              1536 	setb	_initComplete
                    034D   1537 	C$test_radio.c$342$1$1 ==.
                           1538 ;	src/test_radio/test_radio.c:342: while(TRUE)
   0878                    1539 00106$:
                    034D   1540 	C$test_radio.c$344$2$2 ==.
                           1541 ;	src/test_radio/test_radio.c:344: updateLeds(); // blinks red LED every 50ms if we are receiving packets
   0878 12 07 EB           1542 	lcall	_updateLeds
                    0350   1543 	C$test_radio.c$345$2$2 ==.
                           1544 ;	src/test_radio/test_radio.c:345: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
   087B 12 17 FE           1545 	lcall	_boardService
                    0353   1546 	C$test_radio.c$346$2$2 ==.
                           1547 ;	src/test_radio/test_radio.c:346: usbComService(); // so we can start bootloader from Wixel config GUI
   087E 12 10 2B           1548 	lcall	_usbComService
                    0356   1549 	C$test_radio.c$349$2$2 ==.
                           1550 ;	src/test_radio/test_radio.c:349: if(!sufficientRxBuffer)
   0881 20 00 F4           1551 	jb	_sufficientRxBuffer,00106$
                    0359   1552 	C$test_radio.c$353$3$3 ==.
                           1553 ;	src/test_radio/test_radio.c:353: if(radioRxCheckRxBuffer(PACKET_BUFFER_SIZE - 2))
   0884 75 82 12           1554 	mov	dpl,#0x12
   0887 12 0A C2           1555 	lcall	_radioRxCheckRxBuffer
   088A 50 EC              1556 	jnc	00106$
                    0361   1557 	C$test_radio.c$356$4$4 ==.
                           1558 ;	src/test_radio/test_radio.c:356: packet = radioRxCurrentPacket();
   088C 12 0A A4           1559 	lcall	_radioRxCurrentPacket
   088F E5 82              1560 	mov	a,dpl
   0891 85 83 F0           1561 	mov	b,dph
   0894 78 00              1562 	mov	r0,#_packet
   0896 F2                 1563 	movx	@r0,a
   0897 08                 1564 	inc	r0
   0898 E5 F0              1565 	mov	a,b
   089A F2                 1566 	movx	@r0,a
                    0370   1567 	C$test_radio.c$359$4$4 ==.
                           1568 ;	src/test_radio/test_radio.c:359: dacStart();
   089B 12 11 8E           1569 	lcall	_dacStart
                    0373   1570 	C$test_radio.c$360$4$4 ==.
                           1571 ;	src/test_radio/test_radio.c:360: dacNAKd |= dacSendByte(DAC_ADDRESS);
   089E 90 21 8E           1572 	mov	dptr,#_DAC_ADDRESS
   08A1 E4                 1573 	clr	a
   08A2 93                 1574 	movc	a,@a+dptr
   08A3 F5 82              1575 	mov	dpl,a
   08A5 12 11 98           1576 	lcall	_dacSendByte
   08A8 92 05              1577 	mov  _main_sloc0_1_0,c
   08AA 72 02              1578 	orl	c,_dacNAKd
   08AC 92 02              1579 	mov	_dacNAKd,c
                    0383   1580 	C$test_radio.c$363$4$4 ==.
                           1581 ;	src/test_radio/test_radio.c:363: sufficientRxBuffer = TRUE;
   08AE D2 00              1582 	setb	_sufficientRxBuffer
                    0385   1583 	C$test_radio.c$367$1$1 ==.
                    0385   1584 	XG$main$0$0 ==.
   08B0 80 C6              1585 	sjmp	00106$
                           1586 	.area CSEG    (CODE)
                           1587 	.area CONST   (CODE)
                    0000   1588 Ftest_radio$DAC_ADDRESS$0$0 == .
   218E                    1589 _DAC_ADDRESS:
   218E C0                 1590 	.db #0xC0	; 192
                    0001   1591 Ftest_radio$DAC_COMMAND$0$0 == .
   218F                    1592 _DAC_COMMAND:
   218F 00                 1593 	.db #0x00	; 0
                    0002   1594 Ftest_radio$_str_0$0$0 == .
   2190                    1595 __str_0:
   2190 50 61 63 6B 65 74  1596 	.ascii "Packet Buffer Empty"
        20 42 75 66 66 65
        72 20 45 6D 70 74
        79
   21A3 00                 1597 	.db 0x00
                    0016   1598 Ftest_radio$_str_1$0$0 == .
   21A4                    1599 __str_1:
   21A4 44 41 43 20 4E 41  1600 	.ascii "DAC NAK'd"
        4B 27 64
   21AD 00                 1601 	.db 0x00
                    0020   1602 Ftest_radio$_str_2$0$0 == .
   21AE                    1603 __str_2:
   21AE 53 61 6D 70 6C 65  1604 	.ascii "Sample Error"
        20 45 72 72 6F 72
   21BA 0D                 1605 	.db 0x0D
   21BB 0A                 1606 	.db 0x0A
   21BC 20 70 61 63 6B 65  1607 	.ascii " packet[%d]: %d"
        74 5B 25 64 5D 3A
        20 25 64
   21CB 0D                 1608 	.db 0x0D
   21CC 0A                 1609 	.db 0x0A
   21CD 20 65 78 70 65 63  1610 	.ascii " expected: %d"
        74 65 64 3A 20 25
        64
   21DA 00                 1611 	.db 0x00
                    004D   1612 Ftest_radio$_str_3$0$0 == .
   21DB                    1613 __str_3:
   21DB 50 61 63 6B 65 74  1614 	.ascii "Packet ID Error"
        20 49 44 20 45 72
        72 6F 72
   21EA 00                 1615 	.db 0x00
                    005D   1616 Ftest_radio$_str_4$0$0 == .
   21EB                    1617 __str_4:
   21EB 55 6E 6B 6E 6F 77  1618 	.ascii "Unknown Error"
        6E 20 45 72 72 6F
        72
   21F8 00                 1619 	.db 0x00
                           1620 	.area XINIT   (CODE)
                           1621 	.area CABS    (ABS,CODE)
