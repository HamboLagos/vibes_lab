                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 10 18:05:43 2012
                              5 ;--------------------------------------------------------
                              6 	.module vibes_lab_tx_5_1
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
                    0080     20 Fvibes_lab_tx_5_1$P0$0$0 == 0x0080
                    0080     21 _P0	=	0x0080
                    0081     22 Fvibes_lab_tx_5_1$SP$0$0 == 0x0081
                    0081     23 _SP	=	0x0081
                    0082     24 Fvibes_lab_tx_5_1$DPL0$0$0 == 0x0082
                    0082     25 _DPL0	=	0x0082
                    0083     26 Fvibes_lab_tx_5_1$DPH0$0$0 == 0x0083
                    0083     27 _DPH0	=	0x0083
                    0084     28 Fvibes_lab_tx_5_1$DPL1$0$0 == 0x0084
                    0084     29 _DPL1	=	0x0084
                    0085     30 Fvibes_lab_tx_5_1$DPH1$0$0 == 0x0085
                    0085     31 _DPH1	=	0x0085
                    0086     32 Fvibes_lab_tx_5_1$U0CSR$0$0 == 0x0086
                    0086     33 _U0CSR	=	0x0086
                    0087     34 Fvibes_lab_tx_5_1$PCON$0$0 == 0x0087
                    0087     35 _PCON	=	0x0087
                    0088     36 Fvibes_lab_tx_5_1$TCON$0$0 == 0x0088
                    0088     37 _TCON	=	0x0088
                    0089     38 Fvibes_lab_tx_5_1$P0IFG$0$0 == 0x0089
                    0089     39 _P0IFG	=	0x0089
                    008A     40 Fvibes_lab_tx_5_1$P1IFG$0$0 == 0x008a
                    008A     41 _P1IFG	=	0x008a
                    008B     42 Fvibes_lab_tx_5_1$P2IFG$0$0 == 0x008b
                    008B     43 _P2IFG	=	0x008b
                    008C     44 Fvibes_lab_tx_5_1$PICTL$0$0 == 0x008c
                    008C     45 _PICTL	=	0x008c
                    008D     46 Fvibes_lab_tx_5_1$P1IEN$0$0 == 0x008d
                    008D     47 _P1IEN	=	0x008d
                    008F     48 Fvibes_lab_tx_5_1$P0INP$0$0 == 0x008f
                    008F     49 _P0INP	=	0x008f
                    0090     50 Fvibes_lab_tx_5_1$P1$0$0 == 0x0090
                    0090     51 _P1	=	0x0090
                    0091     52 Fvibes_lab_tx_5_1$RFIM$0$0 == 0x0091
                    0091     53 _RFIM	=	0x0091
                    0092     54 Fvibes_lab_tx_5_1$DPS$0$0 == 0x0092
                    0092     55 _DPS	=	0x0092
                    0093     56 Fvibes_lab_tx_5_1$MPAGE$0$0 == 0x0093
                    0093     57 _MPAGE	=	0x0093
                    0095     58 Fvibes_lab_tx_5_1$ENDIAN$0$0 == 0x0095
                    0095     59 _ENDIAN	=	0x0095
                    0098     60 Fvibes_lab_tx_5_1$S0CON$0$0 == 0x0098
                    0098     61 _S0CON	=	0x0098
                    009A     62 Fvibes_lab_tx_5_1$IEN2$0$0 == 0x009a
                    009A     63 _IEN2	=	0x009a
                    009B     64 Fvibes_lab_tx_5_1$S1CON$0$0 == 0x009b
                    009B     65 _S1CON	=	0x009b
                    009C     66 Fvibes_lab_tx_5_1$T2CT$0$0 == 0x009c
                    009C     67 _T2CT	=	0x009c
                    009D     68 Fvibes_lab_tx_5_1$T2PR$0$0 == 0x009d
                    009D     69 _T2PR	=	0x009d
                    009E     70 Fvibes_lab_tx_5_1$T2CTL$0$0 == 0x009e
                    009E     71 _T2CTL	=	0x009e
                    00A0     72 Fvibes_lab_tx_5_1$P2$0$0 == 0x00a0
                    00A0     73 _P2	=	0x00a0
                    00A1     74 Fvibes_lab_tx_5_1$WORIRQ$0$0 == 0x00a1
                    00A1     75 _WORIRQ	=	0x00a1
                    00A2     76 Fvibes_lab_tx_5_1$WORCTRL$0$0 == 0x00a2
                    00A2     77 _WORCTRL	=	0x00a2
                    00A3     78 Fvibes_lab_tx_5_1$WOREVT0$0$0 == 0x00a3
                    00A3     79 _WOREVT0	=	0x00a3
                    00A4     80 Fvibes_lab_tx_5_1$WOREVT1$0$0 == 0x00a4
                    00A4     81 _WOREVT1	=	0x00a4
                    00A5     82 Fvibes_lab_tx_5_1$WORTIME0$0$0 == 0x00a5
                    00A5     83 _WORTIME0	=	0x00a5
                    00A6     84 Fvibes_lab_tx_5_1$WORTIME1$0$0 == 0x00a6
                    00A6     85 _WORTIME1	=	0x00a6
                    00A8     86 Fvibes_lab_tx_5_1$IEN0$0$0 == 0x00a8
                    00A8     87 _IEN0	=	0x00a8
                    00A9     88 Fvibes_lab_tx_5_1$IP0$0$0 == 0x00a9
                    00A9     89 _IP0	=	0x00a9
                    00AB     90 Fvibes_lab_tx_5_1$FWT$0$0 == 0x00ab
                    00AB     91 _FWT	=	0x00ab
                    00AC     92 Fvibes_lab_tx_5_1$FADDRL$0$0 == 0x00ac
                    00AC     93 _FADDRL	=	0x00ac
                    00AD     94 Fvibes_lab_tx_5_1$FADDRH$0$0 == 0x00ad
                    00AD     95 _FADDRH	=	0x00ad
                    00AE     96 Fvibes_lab_tx_5_1$FCTL$0$0 == 0x00ae
                    00AE     97 _FCTL	=	0x00ae
                    00AF     98 Fvibes_lab_tx_5_1$FWDATA$0$0 == 0x00af
                    00AF     99 _FWDATA	=	0x00af
                    00B1    100 Fvibes_lab_tx_5_1$ENCDI$0$0 == 0x00b1
                    00B1    101 _ENCDI	=	0x00b1
                    00B2    102 Fvibes_lab_tx_5_1$ENCDO$0$0 == 0x00b2
                    00B2    103 _ENCDO	=	0x00b2
                    00B3    104 Fvibes_lab_tx_5_1$ENCCS$0$0 == 0x00b3
                    00B3    105 _ENCCS	=	0x00b3
                    00B4    106 Fvibes_lab_tx_5_1$ADCCON1$0$0 == 0x00b4
                    00B4    107 _ADCCON1	=	0x00b4
                    00B5    108 Fvibes_lab_tx_5_1$ADCCON2$0$0 == 0x00b5
                    00B5    109 _ADCCON2	=	0x00b5
                    00B6    110 Fvibes_lab_tx_5_1$ADCCON3$0$0 == 0x00b6
                    00B6    111 _ADCCON3	=	0x00b6
                    00B8    112 Fvibes_lab_tx_5_1$IEN1$0$0 == 0x00b8
                    00B8    113 _IEN1	=	0x00b8
                    00B9    114 Fvibes_lab_tx_5_1$IP1$0$0 == 0x00b9
                    00B9    115 _IP1	=	0x00b9
                    00BA    116 Fvibes_lab_tx_5_1$ADCL$0$0 == 0x00ba
                    00BA    117 _ADCL	=	0x00ba
                    00BB    118 Fvibes_lab_tx_5_1$ADCH$0$0 == 0x00bb
                    00BB    119 _ADCH	=	0x00bb
                    00BC    120 Fvibes_lab_tx_5_1$RNDL$0$0 == 0x00bc
                    00BC    121 _RNDL	=	0x00bc
                    00BD    122 Fvibes_lab_tx_5_1$RNDH$0$0 == 0x00bd
                    00BD    123 _RNDH	=	0x00bd
                    00BE    124 Fvibes_lab_tx_5_1$SLEEP$0$0 == 0x00be
                    00BE    125 _SLEEP	=	0x00be
                    00C0    126 Fvibes_lab_tx_5_1$IRCON$0$0 == 0x00c0
                    00C0    127 _IRCON	=	0x00c0
                    00C1    128 Fvibes_lab_tx_5_1$U0DBUF$0$0 == 0x00c1
                    00C1    129 _U0DBUF	=	0x00c1
                    00C2    130 Fvibes_lab_tx_5_1$U0BAUD$0$0 == 0x00c2
                    00C2    131 _U0BAUD	=	0x00c2
                    00C4    132 Fvibes_lab_tx_5_1$U0UCR$0$0 == 0x00c4
                    00C4    133 _U0UCR	=	0x00c4
                    00C5    134 Fvibes_lab_tx_5_1$U0GCR$0$0 == 0x00c5
                    00C5    135 _U0GCR	=	0x00c5
                    00C6    136 Fvibes_lab_tx_5_1$CLKCON$0$0 == 0x00c6
                    00C6    137 _CLKCON	=	0x00c6
                    00C7    138 Fvibes_lab_tx_5_1$MEMCTR$0$0 == 0x00c7
                    00C7    139 _MEMCTR	=	0x00c7
                    00C9    140 Fvibes_lab_tx_5_1$WDCTL$0$0 == 0x00c9
                    00C9    141 _WDCTL	=	0x00c9
                    00CA    142 Fvibes_lab_tx_5_1$T3CNT$0$0 == 0x00ca
                    00CA    143 _T3CNT	=	0x00ca
                    00CB    144 Fvibes_lab_tx_5_1$T3CTL$0$0 == 0x00cb
                    00CB    145 _T3CTL	=	0x00cb
                    00CC    146 Fvibes_lab_tx_5_1$T3CCTL0$0$0 == 0x00cc
                    00CC    147 _T3CCTL0	=	0x00cc
                    00CD    148 Fvibes_lab_tx_5_1$T3CC0$0$0 == 0x00cd
                    00CD    149 _T3CC0	=	0x00cd
                    00CE    150 Fvibes_lab_tx_5_1$T3CCTL1$0$0 == 0x00ce
                    00CE    151 _T3CCTL1	=	0x00ce
                    00CF    152 Fvibes_lab_tx_5_1$T3CC1$0$0 == 0x00cf
                    00CF    153 _T3CC1	=	0x00cf
                    00D0    154 Fvibes_lab_tx_5_1$PSW$0$0 == 0x00d0
                    00D0    155 _PSW	=	0x00d0
                    00D1    156 Fvibes_lab_tx_5_1$DMAIRQ$0$0 == 0x00d1
                    00D1    157 _DMAIRQ	=	0x00d1
                    00D2    158 Fvibes_lab_tx_5_1$DMA1CFGL$0$0 == 0x00d2
                    00D2    159 _DMA1CFGL	=	0x00d2
                    00D3    160 Fvibes_lab_tx_5_1$DMA1CFGH$0$0 == 0x00d3
                    00D3    161 _DMA1CFGH	=	0x00d3
                    00D4    162 Fvibes_lab_tx_5_1$DMA0CFGL$0$0 == 0x00d4
                    00D4    163 _DMA0CFGL	=	0x00d4
                    00D5    164 Fvibes_lab_tx_5_1$DMA0CFGH$0$0 == 0x00d5
                    00D5    165 _DMA0CFGH	=	0x00d5
                    00D6    166 Fvibes_lab_tx_5_1$DMAARM$0$0 == 0x00d6
                    00D6    167 _DMAARM	=	0x00d6
                    00D7    168 Fvibes_lab_tx_5_1$DMAREQ$0$0 == 0x00d7
                    00D7    169 _DMAREQ	=	0x00d7
                    00D8    170 Fvibes_lab_tx_5_1$TIMIF$0$0 == 0x00d8
                    00D8    171 _TIMIF	=	0x00d8
                    00D9    172 Fvibes_lab_tx_5_1$RFD$0$0 == 0x00d9
                    00D9    173 _RFD	=	0x00d9
                    00DA    174 Fvibes_lab_tx_5_1$T1CC0L$0$0 == 0x00da
                    00DA    175 _T1CC0L	=	0x00da
                    00DB    176 Fvibes_lab_tx_5_1$T1CC0H$0$0 == 0x00db
                    00DB    177 _T1CC0H	=	0x00db
                    00DC    178 Fvibes_lab_tx_5_1$T1CC1L$0$0 == 0x00dc
                    00DC    179 _T1CC1L	=	0x00dc
                    00DD    180 Fvibes_lab_tx_5_1$T1CC1H$0$0 == 0x00dd
                    00DD    181 _T1CC1H	=	0x00dd
                    00DE    182 Fvibes_lab_tx_5_1$T1CC2L$0$0 == 0x00de
                    00DE    183 _T1CC2L	=	0x00de
                    00DF    184 Fvibes_lab_tx_5_1$T1CC2H$0$0 == 0x00df
                    00DF    185 _T1CC2H	=	0x00df
                    00E0    186 Fvibes_lab_tx_5_1$ACC$0$0 == 0x00e0
                    00E0    187 _ACC	=	0x00e0
                    00E1    188 Fvibes_lab_tx_5_1$RFST$0$0 == 0x00e1
                    00E1    189 _RFST	=	0x00e1
                    00E2    190 Fvibes_lab_tx_5_1$T1CNTL$0$0 == 0x00e2
                    00E2    191 _T1CNTL	=	0x00e2
                    00E3    192 Fvibes_lab_tx_5_1$T1CNTH$0$0 == 0x00e3
                    00E3    193 _T1CNTH	=	0x00e3
                    00E4    194 Fvibes_lab_tx_5_1$T1CTL$0$0 == 0x00e4
                    00E4    195 _T1CTL	=	0x00e4
                    00E5    196 Fvibes_lab_tx_5_1$T1CCTL0$0$0 == 0x00e5
                    00E5    197 _T1CCTL0	=	0x00e5
                    00E6    198 Fvibes_lab_tx_5_1$T1CCTL1$0$0 == 0x00e6
                    00E6    199 _T1CCTL1	=	0x00e6
                    00E7    200 Fvibes_lab_tx_5_1$T1CCTL2$0$0 == 0x00e7
                    00E7    201 _T1CCTL2	=	0x00e7
                    00E8    202 Fvibes_lab_tx_5_1$IRCON2$0$0 == 0x00e8
                    00E8    203 _IRCON2	=	0x00e8
                    00E9    204 Fvibes_lab_tx_5_1$RFIF$0$0 == 0x00e9
                    00E9    205 _RFIF	=	0x00e9
                    00EA    206 Fvibes_lab_tx_5_1$T4CNT$0$0 == 0x00ea
                    00EA    207 _T4CNT	=	0x00ea
                    00EB    208 Fvibes_lab_tx_5_1$T4CTL$0$0 == 0x00eb
                    00EB    209 _T4CTL	=	0x00eb
                    00EC    210 Fvibes_lab_tx_5_1$T4CCTL0$0$0 == 0x00ec
                    00EC    211 _T4CCTL0	=	0x00ec
                    00ED    212 Fvibes_lab_tx_5_1$T4CC0$0$0 == 0x00ed
                    00ED    213 _T4CC0	=	0x00ed
                    00EE    214 Fvibes_lab_tx_5_1$T4CCTL1$0$0 == 0x00ee
                    00EE    215 _T4CCTL1	=	0x00ee
                    00EF    216 Fvibes_lab_tx_5_1$T4CC1$0$0 == 0x00ef
                    00EF    217 _T4CC1	=	0x00ef
                    00F0    218 Fvibes_lab_tx_5_1$B$0$0 == 0x00f0
                    00F0    219 _B	=	0x00f0
                    00F1    220 Fvibes_lab_tx_5_1$PERCFG$0$0 == 0x00f1
                    00F1    221 _PERCFG	=	0x00f1
                    00F2    222 Fvibes_lab_tx_5_1$ADCCFG$0$0 == 0x00f2
                    00F2    223 _ADCCFG	=	0x00f2
                    00F3    224 Fvibes_lab_tx_5_1$P0SEL$0$0 == 0x00f3
                    00F3    225 _P0SEL	=	0x00f3
                    00F4    226 Fvibes_lab_tx_5_1$P1SEL$0$0 == 0x00f4
                    00F4    227 _P1SEL	=	0x00f4
                    00F5    228 Fvibes_lab_tx_5_1$P2SEL$0$0 == 0x00f5
                    00F5    229 _P2SEL	=	0x00f5
                    00F6    230 Fvibes_lab_tx_5_1$P1INP$0$0 == 0x00f6
                    00F6    231 _P1INP	=	0x00f6
                    00F7    232 Fvibes_lab_tx_5_1$P2INP$0$0 == 0x00f7
                    00F7    233 _P2INP	=	0x00f7
                    00F8    234 Fvibes_lab_tx_5_1$U1CSR$0$0 == 0x00f8
                    00F8    235 _U1CSR	=	0x00f8
                    00F9    236 Fvibes_lab_tx_5_1$U1DBUF$0$0 == 0x00f9
                    00F9    237 _U1DBUF	=	0x00f9
                    00FA    238 Fvibes_lab_tx_5_1$U1BAUD$0$0 == 0x00fa
                    00FA    239 _U1BAUD	=	0x00fa
                    00FB    240 Fvibes_lab_tx_5_1$U1UCR$0$0 == 0x00fb
                    00FB    241 _U1UCR	=	0x00fb
                    00FC    242 Fvibes_lab_tx_5_1$U1GCR$0$0 == 0x00fc
                    00FC    243 _U1GCR	=	0x00fc
                    00FD    244 Fvibes_lab_tx_5_1$P0DIR$0$0 == 0x00fd
                    00FD    245 _P0DIR	=	0x00fd
                    00FE    246 Fvibes_lab_tx_5_1$P1DIR$0$0 == 0x00fe
                    00FE    247 _P1DIR	=	0x00fe
                    00FF    248 Fvibes_lab_tx_5_1$P2DIR$0$0 == 0x00ff
                    00FF    249 _P2DIR	=	0x00ff
                    FFFFD5D4    250 Fvibes_lab_tx_5_1$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    251 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    252 Fvibes_lab_tx_5_1$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    253 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    254 Fvibes_lab_tx_5_1$FADDR$0$0 == 0xffffadac
                    FFFFADAC    255 _FADDR	=	0xffffadac
                    FFFFBBBA    256 Fvibes_lab_tx_5_1$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    257 _ADC	=	0xffffbbba
                            258 ;--------------------------------------------------------
                            259 ; special function bits
                            260 ;--------------------------------------------------------
                            261 	.area RSEG    (ABS,DATA)
   0000                     262 	.org 0x0000
                    0080    263 Fvibes_lab_tx_5_1$P0_0$0$0 == 0x0080
                    0080    264 _P0_0	=	0x0080
                    0081    265 Fvibes_lab_tx_5_1$P0_1$0$0 == 0x0081
                    0081    266 _P0_1	=	0x0081
                    0082    267 Fvibes_lab_tx_5_1$P0_2$0$0 == 0x0082
                    0082    268 _P0_2	=	0x0082
                    0083    269 Fvibes_lab_tx_5_1$P0_3$0$0 == 0x0083
                    0083    270 _P0_3	=	0x0083
                    0084    271 Fvibes_lab_tx_5_1$P0_4$0$0 == 0x0084
                    0084    272 _P0_4	=	0x0084
                    0085    273 Fvibes_lab_tx_5_1$P0_5$0$0 == 0x0085
                    0085    274 _P0_5	=	0x0085
                    0086    275 Fvibes_lab_tx_5_1$P0_6$0$0 == 0x0086
                    0086    276 _P0_6	=	0x0086
                    0087    277 Fvibes_lab_tx_5_1$P0_7$0$0 == 0x0087
                    0087    278 _P0_7	=	0x0087
                    0088    279 Fvibes_lab_tx_5_1$_TCON_0$0$0 == 0x0088
                    0088    280 __TCON_0	=	0x0088
                    0089    281 Fvibes_lab_tx_5_1$RFTXRXIF$0$0 == 0x0089
                    0089    282 _RFTXRXIF	=	0x0089
                    008A    283 Fvibes_lab_tx_5_1$_TCON_2$0$0 == 0x008a
                    008A    284 __TCON_2	=	0x008a
                    008B    285 Fvibes_lab_tx_5_1$URX0IF$0$0 == 0x008b
                    008B    286 _URX0IF	=	0x008b
                    008C    287 Fvibes_lab_tx_5_1$_TCON_4$0$0 == 0x008c
                    008C    288 __TCON_4	=	0x008c
                    008D    289 Fvibes_lab_tx_5_1$ADCIF$0$0 == 0x008d
                    008D    290 _ADCIF	=	0x008d
                    008E    291 Fvibes_lab_tx_5_1$_TCON_6$0$0 == 0x008e
                    008E    292 __TCON_6	=	0x008e
                    008F    293 Fvibes_lab_tx_5_1$URX1IF$0$0 == 0x008f
                    008F    294 _URX1IF	=	0x008f
                    0090    295 Fvibes_lab_tx_5_1$P1_0$0$0 == 0x0090
                    0090    296 _P1_0	=	0x0090
                    0091    297 Fvibes_lab_tx_5_1$P1_1$0$0 == 0x0091
                    0091    298 _P1_1	=	0x0091
                    0092    299 Fvibes_lab_tx_5_1$P1_2$0$0 == 0x0092
                    0092    300 _P1_2	=	0x0092
                    0093    301 Fvibes_lab_tx_5_1$P1_3$0$0 == 0x0093
                    0093    302 _P1_3	=	0x0093
                    0094    303 Fvibes_lab_tx_5_1$P1_4$0$0 == 0x0094
                    0094    304 _P1_4	=	0x0094
                    0095    305 Fvibes_lab_tx_5_1$P1_5$0$0 == 0x0095
                    0095    306 _P1_5	=	0x0095
                    0096    307 Fvibes_lab_tx_5_1$P1_6$0$0 == 0x0096
                    0096    308 _P1_6	=	0x0096
                    0097    309 Fvibes_lab_tx_5_1$P1_7$0$0 == 0x0097
                    0097    310 _P1_7	=	0x0097
                    0098    311 Fvibes_lab_tx_5_1$ENCIF_0$0$0 == 0x0098
                    0098    312 _ENCIF_0	=	0x0098
                    0099    313 Fvibes_lab_tx_5_1$ENCIF_1$0$0 == 0x0099
                    0099    314 _ENCIF_1	=	0x0099
                    009A    315 Fvibes_lab_tx_5_1$_SOCON2$0$0 == 0x009a
                    009A    316 __SOCON2	=	0x009a
                    009B    317 Fvibes_lab_tx_5_1$_SOCON3$0$0 == 0x009b
                    009B    318 __SOCON3	=	0x009b
                    009C    319 Fvibes_lab_tx_5_1$_SOCON4$0$0 == 0x009c
                    009C    320 __SOCON4	=	0x009c
                    009D    321 Fvibes_lab_tx_5_1$_SOCON5$0$0 == 0x009d
                    009D    322 __SOCON5	=	0x009d
                    009E    323 Fvibes_lab_tx_5_1$_SOCON6$0$0 == 0x009e
                    009E    324 __SOCON6	=	0x009e
                    009F    325 Fvibes_lab_tx_5_1$_SOCON7$0$0 == 0x009f
                    009F    326 __SOCON7	=	0x009f
                    00A0    327 Fvibes_lab_tx_5_1$P2_0$0$0 == 0x00a0
                    00A0    328 _P2_0	=	0x00a0
                    00A1    329 Fvibes_lab_tx_5_1$P2_1$0$0 == 0x00a1
                    00A1    330 _P2_1	=	0x00a1
                    00A2    331 Fvibes_lab_tx_5_1$P2_2$0$0 == 0x00a2
                    00A2    332 _P2_2	=	0x00a2
                    00A3    333 Fvibes_lab_tx_5_1$P2_3$0$0 == 0x00a3
                    00A3    334 _P2_3	=	0x00a3
                    00A4    335 Fvibes_lab_tx_5_1$P2_4$0$0 == 0x00a4
                    00A4    336 _P2_4	=	0x00a4
                    00A5    337 Fvibes_lab_tx_5_1$P2_5$0$0 == 0x00a5
                    00A5    338 _P2_5	=	0x00a5
                    00A6    339 Fvibes_lab_tx_5_1$P2_6$0$0 == 0x00a6
                    00A6    340 _P2_6	=	0x00a6
                    00A7    341 Fvibes_lab_tx_5_1$P2_7$0$0 == 0x00a7
                    00A7    342 _P2_7	=	0x00a7
                    00A8    343 Fvibes_lab_tx_5_1$RFTXRXIE$0$0 == 0x00a8
                    00A8    344 _RFTXRXIE	=	0x00a8
                    00A9    345 Fvibes_lab_tx_5_1$ADCIE$0$0 == 0x00a9
                    00A9    346 _ADCIE	=	0x00a9
                    00AA    347 Fvibes_lab_tx_5_1$URX0IE$0$0 == 0x00aa
                    00AA    348 _URX0IE	=	0x00aa
                    00AB    349 Fvibes_lab_tx_5_1$URX1IE$0$0 == 0x00ab
                    00AB    350 _URX1IE	=	0x00ab
                    00AC    351 Fvibes_lab_tx_5_1$ENCIE$0$0 == 0x00ac
                    00AC    352 _ENCIE	=	0x00ac
                    00AD    353 Fvibes_lab_tx_5_1$STIE$0$0 == 0x00ad
                    00AD    354 _STIE	=	0x00ad
                    00AE    355 Fvibes_lab_tx_5_1$_IEN06$0$0 == 0x00ae
                    00AE    356 __IEN06	=	0x00ae
                    00AF    357 Fvibes_lab_tx_5_1$EA$0$0 == 0x00af
                    00AF    358 _EA	=	0x00af
                    00B8    359 Fvibes_lab_tx_5_1$DMAIE$0$0 == 0x00b8
                    00B8    360 _DMAIE	=	0x00b8
                    00B9    361 Fvibes_lab_tx_5_1$T1IE$0$0 == 0x00b9
                    00B9    362 _T1IE	=	0x00b9
                    00BA    363 Fvibes_lab_tx_5_1$T2IE$0$0 == 0x00ba
                    00BA    364 _T2IE	=	0x00ba
                    00BB    365 Fvibes_lab_tx_5_1$T3IE$0$0 == 0x00bb
                    00BB    366 _T3IE	=	0x00bb
                    00BC    367 Fvibes_lab_tx_5_1$T4IE$0$0 == 0x00bc
                    00BC    368 _T4IE	=	0x00bc
                    00BD    369 Fvibes_lab_tx_5_1$P0IE$0$0 == 0x00bd
                    00BD    370 _P0IE	=	0x00bd
                    00BE    371 Fvibes_lab_tx_5_1$_IEN16$0$0 == 0x00be
                    00BE    372 __IEN16	=	0x00be
                    00BF    373 Fvibes_lab_tx_5_1$_IEN17$0$0 == 0x00bf
                    00BF    374 __IEN17	=	0x00bf
                    00C0    375 Fvibes_lab_tx_5_1$DMAIF$0$0 == 0x00c0
                    00C0    376 _DMAIF	=	0x00c0
                    00C1    377 Fvibes_lab_tx_5_1$T1IF$0$0 == 0x00c1
                    00C1    378 _T1IF	=	0x00c1
                    00C2    379 Fvibes_lab_tx_5_1$T2IF$0$0 == 0x00c2
                    00C2    380 _T2IF	=	0x00c2
                    00C3    381 Fvibes_lab_tx_5_1$T3IF$0$0 == 0x00c3
                    00C3    382 _T3IF	=	0x00c3
                    00C4    383 Fvibes_lab_tx_5_1$T4IF$0$0 == 0x00c4
                    00C4    384 _T4IF	=	0x00c4
                    00C5    385 Fvibes_lab_tx_5_1$P0IF$0$0 == 0x00c5
                    00C5    386 _P0IF	=	0x00c5
                    00C6    387 Fvibes_lab_tx_5_1$_IRCON6$0$0 == 0x00c6
                    00C6    388 __IRCON6	=	0x00c6
                    00C7    389 Fvibes_lab_tx_5_1$STIF$0$0 == 0x00c7
                    00C7    390 _STIF	=	0x00c7
                    00D0    391 Fvibes_lab_tx_5_1$P$0$0 == 0x00d0
                    00D0    392 _P	=	0x00d0
                    00D1    393 Fvibes_lab_tx_5_1$F1$0$0 == 0x00d1
                    00D1    394 _F1	=	0x00d1
                    00D2    395 Fvibes_lab_tx_5_1$OV$0$0 == 0x00d2
                    00D2    396 _OV	=	0x00d2
                    00D3    397 Fvibes_lab_tx_5_1$RS0$0$0 == 0x00d3
                    00D3    398 _RS0	=	0x00d3
                    00D4    399 Fvibes_lab_tx_5_1$RS1$0$0 == 0x00d4
                    00D4    400 _RS1	=	0x00d4
                    00D5    401 Fvibes_lab_tx_5_1$F0$0$0 == 0x00d5
                    00D5    402 _F0	=	0x00d5
                    00D6    403 Fvibes_lab_tx_5_1$AC$0$0 == 0x00d6
                    00D6    404 _AC	=	0x00d6
                    00D7    405 Fvibes_lab_tx_5_1$CY$0$0 == 0x00d7
                    00D7    406 _CY	=	0x00d7
                    00D8    407 Fvibes_lab_tx_5_1$T3OVFIF$0$0 == 0x00d8
                    00D8    408 _T3OVFIF	=	0x00d8
                    00D9    409 Fvibes_lab_tx_5_1$T3CH0IF$0$0 == 0x00d9
                    00D9    410 _T3CH0IF	=	0x00d9
                    00DA    411 Fvibes_lab_tx_5_1$T3CH1IF$0$0 == 0x00da
                    00DA    412 _T3CH1IF	=	0x00da
                    00DB    413 Fvibes_lab_tx_5_1$T4OVFIF$0$0 == 0x00db
                    00DB    414 _T4OVFIF	=	0x00db
                    00DC    415 Fvibes_lab_tx_5_1$T4CH0IF$0$0 == 0x00dc
                    00DC    416 _T4CH0IF	=	0x00dc
                    00DD    417 Fvibes_lab_tx_5_1$T4CH1IF$0$0 == 0x00dd
                    00DD    418 _T4CH1IF	=	0x00dd
                    00DE    419 Fvibes_lab_tx_5_1$OVFIM$0$0 == 0x00de
                    00DE    420 _OVFIM	=	0x00de
                    00DF    421 Fvibes_lab_tx_5_1$_TIMIF7$0$0 == 0x00df
                    00DF    422 __TIMIF7	=	0x00df
                    00E0    423 Fvibes_lab_tx_5_1$ACC_0$0$0 == 0x00e0
                    00E0    424 _ACC_0	=	0x00e0
                    00E1    425 Fvibes_lab_tx_5_1$ACC_1$0$0 == 0x00e1
                    00E1    426 _ACC_1	=	0x00e1
                    00E2    427 Fvibes_lab_tx_5_1$ACC_2$0$0 == 0x00e2
                    00E2    428 _ACC_2	=	0x00e2
                    00E3    429 Fvibes_lab_tx_5_1$ACC_3$0$0 == 0x00e3
                    00E3    430 _ACC_3	=	0x00e3
                    00E4    431 Fvibes_lab_tx_5_1$ACC_4$0$0 == 0x00e4
                    00E4    432 _ACC_4	=	0x00e4
                    00E5    433 Fvibes_lab_tx_5_1$ACC_5$0$0 == 0x00e5
                    00E5    434 _ACC_5	=	0x00e5
                    00E6    435 Fvibes_lab_tx_5_1$ACC_6$0$0 == 0x00e6
                    00E6    436 _ACC_6	=	0x00e6
                    00E7    437 Fvibes_lab_tx_5_1$ACC_7$0$0 == 0x00e7
                    00E7    438 _ACC_7	=	0x00e7
                    00E8    439 Fvibes_lab_tx_5_1$P2IF$0$0 == 0x00e8
                    00E8    440 _P2IF	=	0x00e8
                    00E9    441 Fvibes_lab_tx_5_1$UTX0IF$0$0 == 0x00e9
                    00E9    442 _UTX0IF	=	0x00e9
                    00EA    443 Fvibes_lab_tx_5_1$UTX1IF$0$0 == 0x00ea
                    00EA    444 _UTX1IF	=	0x00ea
                    00EB    445 Fvibes_lab_tx_5_1$P1IF$0$0 == 0x00eb
                    00EB    446 _P1IF	=	0x00eb
                    00EC    447 Fvibes_lab_tx_5_1$WDTIF$0$0 == 0x00ec
                    00EC    448 _WDTIF	=	0x00ec
                    00ED    449 Fvibes_lab_tx_5_1$_IRCON25$0$0 == 0x00ed
                    00ED    450 __IRCON25	=	0x00ed
                    00EE    451 Fvibes_lab_tx_5_1$_IRCON26$0$0 == 0x00ee
                    00EE    452 __IRCON26	=	0x00ee
                    00EF    453 Fvibes_lab_tx_5_1$_IRCON27$0$0 == 0x00ef
                    00EF    454 __IRCON27	=	0x00ef
                    00F0    455 Fvibes_lab_tx_5_1$B_0$0$0 == 0x00f0
                    00F0    456 _B_0	=	0x00f0
                    00F1    457 Fvibes_lab_tx_5_1$B_1$0$0 == 0x00f1
                    00F1    458 _B_1	=	0x00f1
                    00F2    459 Fvibes_lab_tx_5_1$B_2$0$0 == 0x00f2
                    00F2    460 _B_2	=	0x00f2
                    00F3    461 Fvibes_lab_tx_5_1$B_3$0$0 == 0x00f3
                    00F3    462 _B_3	=	0x00f3
                    00F4    463 Fvibes_lab_tx_5_1$B_4$0$0 == 0x00f4
                    00F4    464 _B_4	=	0x00f4
                    00F5    465 Fvibes_lab_tx_5_1$B_5$0$0 == 0x00f5
                    00F5    466 _B_5	=	0x00f5
                    00F6    467 Fvibes_lab_tx_5_1$B_6$0$0 == 0x00f6
                    00F6    468 _B_6	=	0x00f6
                    00F7    469 Fvibes_lab_tx_5_1$B_7$0$0 == 0x00f7
                    00F7    470 _B_7	=	0x00f7
                    00F8    471 Fvibes_lab_tx_5_1$U1ACTIVE$0$0 == 0x00f8
                    00F8    472 _U1ACTIVE	=	0x00f8
                    00F9    473 Fvibes_lab_tx_5_1$U1TX_BYTE$0$0 == 0x00f9
                    00F9    474 _U1TX_BYTE	=	0x00f9
                    00FA    475 Fvibes_lab_tx_5_1$U1RX_BYTE$0$0 == 0x00fa
                    00FA    476 _U1RX_BYTE	=	0x00fa
                    00FB    477 Fvibes_lab_tx_5_1$U1ERR$0$0 == 0x00fb
                    00FB    478 _U1ERR	=	0x00fb
                    00FC    479 Fvibes_lab_tx_5_1$U1FE$0$0 == 0x00fc
                    00FC    480 _U1FE	=	0x00fc
                    00FD    481 Fvibes_lab_tx_5_1$U1SLAVE$0$0 == 0x00fd
                    00FD    482 _U1SLAVE	=	0x00fd
                    00FE    483 Fvibes_lab_tx_5_1$U1RE$0$0 == 0x00fe
                    00FE    484 _U1RE	=	0x00fe
                    00FF    485 Fvibes_lab_tx_5_1$U1MODE$0$0 == 0x00ff
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
                            497 ; overlayable bit register bank
                            498 ;--------------------------------------------------------
                            499 	.area BIT_BANK	(REL,OVR,DATA)
   0024                     500 bits:
   0024                     501 	.ds 1
                    8000    502 	b0 = bits[0]
                    8100    503 	b1 = bits[1]
                    8200    504 	b2 = bits[2]
                    8300    505 	b3 = bits[3]
                    8400    506 	b4 = bits[4]
                    8500    507 	b5 = bits[5]
                    8600    508 	b6 = bits[6]
                    8700    509 	b7 = bits[7]
                            510 ;--------------------------------------------------------
                            511 ; internal ram data
                            512 ;--------------------------------------------------------
                            513 	.area DSEG    (DATA)
                    0000    514 Fvibes_lab_tx_5_1$accSample$0$0==.
   0025                     515 _accSample:
   0025                     516 	.ds 2
                    0002    517 Fvibes_lab_tx_5_1$sampleIndex$0$0==.
   0027                     518 _sampleIndex:
   0027                     519 	.ds 1
                    0003    520 Fvibes_lab_tx_5_1$transmissionsReady$0$0==.
   0028                     521 _transmissionsReady:
   0028                     522 	.ds 1
                    0004    523 Fvibes_lab_tx_5_1$operationalTimeStamp$0$0==.
   0029                     524 _operationalTimeStamp:
   0029                     525 	.ds 4
                            526 ;--------------------------------------------------------
                            527 ; overlayable items in internal ram 
                            528 ;--------------------------------------------------------
                            529 	.area OSEG    (OVR,DATA)
                            530 ;--------------------------------------------------------
                            531 ; Stack segment in internal ram 
                            532 ;--------------------------------------------------------
                            533 	.area	SSEG	(DATA)
   003A                     534 __start__stack:
   003A                     535 	.ds	1
                            536 
                            537 ;--------------------------------------------------------
                            538 ; indirectly addressable internal ram data
                            539 ;--------------------------------------------------------
                            540 	.area ISEG    (DATA)
                            541 ;--------------------------------------------------------
                            542 ; absolute internal ram data
                            543 ;--------------------------------------------------------
                            544 	.area IABS    (ABS,DATA)
                            545 	.area IABS    (ABS,DATA)
                            546 ;--------------------------------------------------------
                            547 ; bit data
                            548 ;--------------------------------------------------------
                            549 	.area BSEG    (BIT)
                    0000    550 Fvibes_lab_tx_5_1$isrCounter$0$0==.
   0000                     551 _isrCounter:
   0000                     552 	.ds 1
                    0001    553 Fvibes_lab_tx_5_1$lostSample$0$0==.
   0001                     554 _lostSample:
   0001                     555 	.ds 1
                    0002    556 Fvibes_lab_tx_5_1$initComplete$0$0==.
   0002                     557 _initComplete:
   0002                     558 	.ds 1
                            559 ;--------------------------------------------------------
                            560 ; paged external ram data
                            561 ;--------------------------------------------------------
                            562 	.area PSEG    (PAG,XDATA)
                    0000    563 Fvibes_lab_tx_5_1$packet$0$0==.
   F000                     564 _packet:
   F000                     565 	.ds 2
                            566 ;--------------------------------------------------------
                            567 ; external ram data
                            568 ;--------------------------------------------------------
                            569 	.area XSEG    (XDATA)
                    DF00    570 Fvibes_lab_tx_5_1$SYNC1$0$0 == 0xdf00
                    DF00    571 _SYNC1	=	0xdf00
                    DF01    572 Fvibes_lab_tx_5_1$SYNC0$0$0 == 0xdf01
                    DF01    573 _SYNC0	=	0xdf01
                    DF02    574 Fvibes_lab_tx_5_1$PKTLEN$0$0 == 0xdf02
                    DF02    575 _PKTLEN	=	0xdf02
                    DF03    576 Fvibes_lab_tx_5_1$PKTCTRL1$0$0 == 0xdf03
                    DF03    577 _PKTCTRL1	=	0xdf03
                    DF04    578 Fvibes_lab_tx_5_1$PKTCTRL0$0$0 == 0xdf04
                    DF04    579 _PKTCTRL0	=	0xdf04
                    DF05    580 Fvibes_lab_tx_5_1$ADDR$0$0 == 0xdf05
                    DF05    581 _ADDR	=	0xdf05
                    DF06    582 Fvibes_lab_tx_5_1$CHANNR$0$0 == 0xdf06
                    DF06    583 _CHANNR	=	0xdf06
                    DF07    584 Fvibes_lab_tx_5_1$FSCTRL1$0$0 == 0xdf07
                    DF07    585 _FSCTRL1	=	0xdf07
                    DF08    586 Fvibes_lab_tx_5_1$FSCTRL0$0$0 == 0xdf08
                    DF08    587 _FSCTRL0	=	0xdf08
                    DF09    588 Fvibes_lab_tx_5_1$FREQ2$0$0 == 0xdf09
                    DF09    589 _FREQ2	=	0xdf09
                    DF0A    590 Fvibes_lab_tx_5_1$FREQ1$0$0 == 0xdf0a
                    DF0A    591 _FREQ1	=	0xdf0a
                    DF0B    592 Fvibes_lab_tx_5_1$FREQ0$0$0 == 0xdf0b
                    DF0B    593 _FREQ0	=	0xdf0b
                    DF0C    594 Fvibes_lab_tx_5_1$MDMCFG4$0$0 == 0xdf0c
                    DF0C    595 _MDMCFG4	=	0xdf0c
                    DF0D    596 Fvibes_lab_tx_5_1$MDMCFG3$0$0 == 0xdf0d
                    DF0D    597 _MDMCFG3	=	0xdf0d
                    DF0E    598 Fvibes_lab_tx_5_1$MDMCFG2$0$0 == 0xdf0e
                    DF0E    599 _MDMCFG2	=	0xdf0e
                    DF0F    600 Fvibes_lab_tx_5_1$MDMCFG1$0$0 == 0xdf0f
                    DF0F    601 _MDMCFG1	=	0xdf0f
                    DF10    602 Fvibes_lab_tx_5_1$MDMCFG0$0$0 == 0xdf10
                    DF10    603 _MDMCFG0	=	0xdf10
                    DF11    604 Fvibes_lab_tx_5_1$DEVIATN$0$0 == 0xdf11
                    DF11    605 _DEVIATN	=	0xdf11
                    DF12    606 Fvibes_lab_tx_5_1$MCSM2$0$0 == 0xdf12
                    DF12    607 _MCSM2	=	0xdf12
                    DF13    608 Fvibes_lab_tx_5_1$MCSM1$0$0 == 0xdf13
                    DF13    609 _MCSM1	=	0xdf13
                    DF14    610 Fvibes_lab_tx_5_1$MCSM0$0$0 == 0xdf14
                    DF14    611 _MCSM0	=	0xdf14
                    DF15    612 Fvibes_lab_tx_5_1$FOCCFG$0$0 == 0xdf15
                    DF15    613 _FOCCFG	=	0xdf15
                    DF16    614 Fvibes_lab_tx_5_1$BSCFG$0$0 == 0xdf16
                    DF16    615 _BSCFG	=	0xdf16
                    DF17    616 Fvibes_lab_tx_5_1$AGCCTRL2$0$0 == 0xdf17
                    DF17    617 _AGCCTRL2	=	0xdf17
                    DF18    618 Fvibes_lab_tx_5_1$AGCCTRL1$0$0 == 0xdf18
                    DF18    619 _AGCCTRL1	=	0xdf18
                    DF19    620 Fvibes_lab_tx_5_1$AGCCTRL0$0$0 == 0xdf19
                    DF19    621 _AGCCTRL0	=	0xdf19
                    DF1A    622 Fvibes_lab_tx_5_1$FREND1$0$0 == 0xdf1a
                    DF1A    623 _FREND1	=	0xdf1a
                    DF1B    624 Fvibes_lab_tx_5_1$FREND0$0$0 == 0xdf1b
                    DF1B    625 _FREND0	=	0xdf1b
                    DF1C    626 Fvibes_lab_tx_5_1$FSCAL3$0$0 == 0xdf1c
                    DF1C    627 _FSCAL3	=	0xdf1c
                    DF1D    628 Fvibes_lab_tx_5_1$FSCAL2$0$0 == 0xdf1d
                    DF1D    629 _FSCAL2	=	0xdf1d
                    DF1E    630 Fvibes_lab_tx_5_1$FSCAL1$0$0 == 0xdf1e
                    DF1E    631 _FSCAL1	=	0xdf1e
                    DF1F    632 Fvibes_lab_tx_5_1$FSCAL0$0$0 == 0xdf1f
                    DF1F    633 _FSCAL0	=	0xdf1f
                    DF23    634 Fvibes_lab_tx_5_1$TEST2$0$0 == 0xdf23
                    DF23    635 _TEST2	=	0xdf23
                    DF24    636 Fvibes_lab_tx_5_1$TEST1$0$0 == 0xdf24
                    DF24    637 _TEST1	=	0xdf24
                    DF25    638 Fvibes_lab_tx_5_1$TEST0$0$0 == 0xdf25
                    DF25    639 _TEST0	=	0xdf25
                    DF2E    640 Fvibes_lab_tx_5_1$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    641 _PA_TABLE0	=	0xdf2e
                    DF2F    642 Fvibes_lab_tx_5_1$IOCFG2$0$0 == 0xdf2f
                    DF2F    643 _IOCFG2	=	0xdf2f
                    DF30    644 Fvibes_lab_tx_5_1$IOCFG1$0$0 == 0xdf30
                    DF30    645 _IOCFG1	=	0xdf30
                    DF31    646 Fvibes_lab_tx_5_1$IOCFG0$0$0 == 0xdf31
                    DF31    647 _IOCFG0	=	0xdf31
                    DF36    648 Fvibes_lab_tx_5_1$PARTNUM$0$0 == 0xdf36
                    DF36    649 _PARTNUM	=	0xdf36
                    DF37    650 Fvibes_lab_tx_5_1$VERSION$0$0 == 0xdf37
                    DF37    651 _VERSION	=	0xdf37
                    DF38    652 Fvibes_lab_tx_5_1$FREQEST$0$0 == 0xdf38
                    DF38    653 _FREQEST	=	0xdf38
                    DF39    654 Fvibes_lab_tx_5_1$LQI$0$0 == 0xdf39
                    DF39    655 _LQI	=	0xdf39
                    DF3A    656 Fvibes_lab_tx_5_1$RSSI$0$0 == 0xdf3a
                    DF3A    657 _RSSI	=	0xdf3a
                    DF3B    658 Fvibes_lab_tx_5_1$MARCSTATE$0$0 == 0xdf3b
                    DF3B    659 _MARCSTATE	=	0xdf3b
                    DF3C    660 Fvibes_lab_tx_5_1$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    661 _PKTSTATUS	=	0xdf3c
                    DF3D    662 Fvibes_lab_tx_5_1$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    663 _VCO_VC_DAC	=	0xdf3d
                    DF40    664 Fvibes_lab_tx_5_1$I2SCFG0$0$0 == 0xdf40
                    DF40    665 _I2SCFG0	=	0xdf40
                    DF41    666 Fvibes_lab_tx_5_1$I2SCFG1$0$0 == 0xdf41
                    DF41    667 _I2SCFG1	=	0xdf41
                    DF42    668 Fvibes_lab_tx_5_1$I2SDATL$0$0 == 0xdf42
                    DF42    669 _I2SDATL	=	0xdf42
                    DF43    670 Fvibes_lab_tx_5_1$I2SDATH$0$0 == 0xdf43
                    DF43    671 _I2SDATH	=	0xdf43
                    DF44    672 Fvibes_lab_tx_5_1$I2SWCNT$0$0 == 0xdf44
                    DF44    673 _I2SWCNT	=	0xdf44
                    DF45    674 Fvibes_lab_tx_5_1$I2SSTAT$0$0 == 0xdf45
                    DF45    675 _I2SSTAT	=	0xdf45
                    DF46    676 Fvibes_lab_tx_5_1$I2SCLKF0$0$0 == 0xdf46
                    DF46    677 _I2SCLKF0	=	0xdf46
                    DF47    678 Fvibes_lab_tx_5_1$I2SCLKF1$0$0 == 0xdf47
                    DF47    679 _I2SCLKF1	=	0xdf47
                    DF48    680 Fvibes_lab_tx_5_1$I2SCLKF2$0$0 == 0xdf48
                    DF48    681 _I2SCLKF2	=	0xdf48
                    DE00    682 Fvibes_lab_tx_5_1$USBADDR$0$0 == 0xde00
                    DE00    683 _USBADDR	=	0xde00
                    DE01    684 Fvibes_lab_tx_5_1$USBPOW$0$0 == 0xde01
                    DE01    685 _USBPOW	=	0xde01
                    DE02    686 Fvibes_lab_tx_5_1$USBIIF$0$0 == 0xde02
                    DE02    687 _USBIIF	=	0xde02
                    DE04    688 Fvibes_lab_tx_5_1$USBOIF$0$0 == 0xde04
                    DE04    689 _USBOIF	=	0xde04
                    DE06    690 Fvibes_lab_tx_5_1$USBCIF$0$0 == 0xde06
                    DE06    691 _USBCIF	=	0xde06
                    DE07    692 Fvibes_lab_tx_5_1$USBIIE$0$0 == 0xde07
                    DE07    693 _USBIIE	=	0xde07
                    DE09    694 Fvibes_lab_tx_5_1$USBOIE$0$0 == 0xde09
                    DE09    695 _USBOIE	=	0xde09
                    DE0B    696 Fvibes_lab_tx_5_1$USBCIE$0$0 == 0xde0b
                    DE0B    697 _USBCIE	=	0xde0b
                    DE0C    698 Fvibes_lab_tx_5_1$USBFRML$0$0 == 0xde0c
                    DE0C    699 _USBFRML	=	0xde0c
                    DE0D    700 Fvibes_lab_tx_5_1$USBFRMH$0$0 == 0xde0d
                    DE0D    701 _USBFRMH	=	0xde0d
                    DE0E    702 Fvibes_lab_tx_5_1$USBINDEX$0$0 == 0xde0e
                    DE0E    703 _USBINDEX	=	0xde0e
                    DE10    704 Fvibes_lab_tx_5_1$USBMAXI$0$0 == 0xde10
                    DE10    705 _USBMAXI	=	0xde10
                    DE11    706 Fvibes_lab_tx_5_1$USBCSIL$0$0 == 0xde11
                    DE11    707 _USBCSIL	=	0xde11
                    DE12    708 Fvibes_lab_tx_5_1$USBCSIH$0$0 == 0xde12
                    DE12    709 _USBCSIH	=	0xde12
                    DE13    710 Fvibes_lab_tx_5_1$USBMAXO$0$0 == 0xde13
                    DE13    711 _USBMAXO	=	0xde13
                    DE14    712 Fvibes_lab_tx_5_1$USBCSOL$0$0 == 0xde14
                    DE14    713 _USBCSOL	=	0xde14
                    DE15    714 Fvibes_lab_tx_5_1$USBCSOH$0$0 == 0xde15
                    DE15    715 _USBCSOH	=	0xde15
                    DE16    716 Fvibes_lab_tx_5_1$USBCNTL$0$0 == 0xde16
                    DE16    717 _USBCNTL	=	0xde16
                    DE17    718 Fvibes_lab_tx_5_1$USBCNTH$0$0 == 0xde17
                    DE17    719 _USBCNTH	=	0xde17
                    DE20    720 Fvibes_lab_tx_5_1$USBF0$0$0 == 0xde20
                    DE20    721 _USBF0	=	0xde20
                    DE22    722 Fvibes_lab_tx_5_1$USBF1$0$0 == 0xde22
                    DE22    723 _USBF1	=	0xde22
                    DE24    724 Fvibes_lab_tx_5_1$USBF2$0$0 == 0xde24
                    DE24    725 _USBF2	=	0xde24
                    DE26    726 Fvibes_lab_tx_5_1$USBF3$0$0 == 0xde26
                    DE26    727 _USBF3	=	0xde26
                    DE28    728 Fvibes_lab_tx_5_1$USBF4$0$0 == 0xde28
                    DE28    729 _USBF4	=	0xde28
                    DE2A    730 Fvibes_lab_tx_5_1$USBF5$0$0 == 0xde2a
                    DE2A    731 _USBF5	=	0xde2a
                    0000    732 LreportResults$buffer$2$2==.
   F043                     733 _reportResults_buffer_2_2:
   F043                     734 	.ds 16
                            735 ;--------------------------------------------------------
                            736 ; absolute external ram data
                            737 ;--------------------------------------------------------
                            738 	.area XABS    (ABS,XDATA)
                            739 ;--------------------------------------------------------
                            740 ; external initialized ram data
                            741 ;--------------------------------------------------------
                            742 	.area XISEG   (XDATA)
                            743 	.area HOME    (CODE)
                            744 	.area GSINIT0 (CODE)
                            745 	.area GSINIT1 (CODE)
                            746 	.area GSINIT2 (CODE)
                            747 	.area GSINIT3 (CODE)
                            748 	.area GSINIT4 (CODE)
                            749 	.area GSINIT5 (CODE)
                            750 	.area GSINIT  (CODE)
                            751 	.area GSFINAL (CODE)
                            752 	.area CSEG    (CODE)
                            753 ;--------------------------------------------------------
                            754 ; interrupt vector 
                            755 ;--------------------------------------------------------
                            756 	.area HOME    (CODE)
   0400                     757 __interrupt_vect:
   0400 02 04 8D            758 	ljmp	__sdcc_gsinit_startup
   0403 32                  759 	reti
   0404                     760 	.ds	7
   040B 02 05 2F            761 	ljmp	_ISR_ADC
   040E                     762 	.ds	5
   0413 32                  763 	reti
   0414                     764 	.ds	7
   041B 32                  765 	reti
   041C                     766 	.ds	7
   0423 32                  767 	reti
   0424                     768 	.ds	7
   042B 32                  769 	reti
   042C                     770 	.ds	7
   0433 32                  771 	reti
   0434                     772 	.ds	7
   043B 32                  773 	reti
   043C                     774 	.ds	7
   0443 32                  775 	reti
   0444                     776 	.ds	7
   044B 32                  777 	reti
   044C                     778 	.ds	7
   0453 32                  779 	reti
   0454                     780 	.ds	7
   045B 02 05 1D            781 	ljmp	_ISR_T3
   045E                     782 	.ds	5
   0463 02 0D 36            783 	ljmp	_ISR_T4
   0466                     784 	.ds	5
   046B 32                  785 	reti
   046C                     786 	.ds	7
   0473 32                  787 	reti
   0474                     788 	.ds	7
   047B 32                  789 	reti
   047C                     790 	.ds	7
   0483 02 0A EA            791 	ljmp	_ISR_RF
                            792 ;--------------------------------------------------------
                            793 ; global & static initialisations
                            794 ;--------------------------------------------------------
                            795 	.area HOME    (CODE)
                            796 	.area GSINIT  (CODE)
                            797 	.area GSFINAL (CODE)
                            798 	.area GSINIT  (CODE)
                            799 	.globl __sdcc_gsinit_startup
                            800 	.globl __sdcc_program_startup
                            801 	.globl __start__stack
                            802 	.globl __mcs51_genXINIT
                            803 	.globl __mcs51_genXRAMCLEAR
                            804 	.globl __mcs51_genRAMCLEAR
                            805 	.area GSFINAL (CODE)
   051A 02 04 86            806 	ljmp	__sdcc_program_startup
                            807 ;--------------------------------------------------------
                            808 ; Home
                            809 ;--------------------------------------------------------
                            810 	.area HOME    (CODE)
                            811 	.area HOME    (CODE)
   0486                     812 __sdcc_program_startup:
   0486 12 07 1F            813 	lcall	_main
                            814 ;	return from main will lock up
   0489 80 FE               815 	sjmp .
                            816 ;--------------------------------------------------------
                            817 ; code
                            818 ;--------------------------------------------------------
                            819 	.area CSEG    (CODE)
                            820 ;------------------------------------------------------------
                            821 ;Allocation info for local variables in function 'ISR_T3'
                            822 ;------------------------------------------------------------
                            823 ;------------------------------------------------------------
                    0000    824 	G$ISR_T3$0$0 ==.
                    0000    825 	C$vibes_lab_tx_5.1.c$342$0$0 ==.
                            826 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:342: ISR(T3, 3) {
                            827 ;	-----------------------------------------
                            828 ;	 function ISR_T3
                            829 ;	-----------------------------------------
   051D                     830 _ISR_T3:
                    001A    831 	ar2 = 0x1a
                    001B    832 	ar3 = 0x1b
                    001C    833 	ar4 = 0x1c
                    001D    834 	ar5 = 0x1d
                    001E    835 	ar6 = 0x1e
                    001F    836 	ar7 = 0x1f
                    0018    837 	ar0 = 0x18
                    0019    838 	ar1 = 0x19
   051D C0 D0               839 	push	psw
   051F 75 D0 18            840 	mov	psw,#0x18
                    0005    841 	C$vibes_lab_tx_5.1.c$346$1$1 ==.
                            842 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:346: T3IE = 0;
   0522 C2 BB               843 	clr	_T3IE
                    0007    844 	C$vibes_lab_tx_5.1.c$348$1$1 ==.
                            845 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:348: if(initComplete) {
   0524 30 02 03            846 	jnb	_initComplete,00102$
                    000A    847 	C$vibes_lab_tx_5.1.c$352$2$2 ==.
                            848 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:352: ADCCON3 = 0b10100001;
   0527 75 B6 A1            849 	mov	_ADCCON3,#0xA1
   052A                     850 00102$:
                    000D    851 	C$vibes_lab_tx_5.1.c$356$1$1 ==.
                            852 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:356: T3IE = 1;
   052A D2 BB               853 	setb	_T3IE
   052C D0 D0               854 	pop	psw
                    0011    855 	C$vibes_lab_tx_5.1.c$357$1$1 ==.
                    0011    856 	XG$ISR_T3$0$0 ==.
   052E 32                  857 	reti
                            858 ;	eliminated unneeded push/pop dpl
                            859 ;	eliminated unneeded push/pop dph
                            860 ;	eliminated unneeded push/pop b
                            861 ;	eliminated unneeded push/pop acc
                            862 ;------------------------------------------------------------
                            863 ;Allocation info for local variables in function 'ISR_ADC'
                            864 ;------------------------------------------------------------
                            865 ;------------------------------------------------------------
                    0012    866 	G$ISR_ADC$0$0 ==.
                    0012    867 	C$vibes_lab_tx_5.1.c$375$1$1 ==.
                            868 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:375: ISR(ADC, 2)
                            869 ;	-----------------------------------------
                            870 ;	 function ISR_ADC
                            871 ;	-----------------------------------------
   052F                     872 _ISR_ADC:
                    0012    873 	ar2 = 0x12
                    0013    874 	ar3 = 0x13
                    0014    875 	ar4 = 0x14
                    0015    876 	ar5 = 0x15
                    0016    877 	ar6 = 0x16
                    0017    878 	ar7 = 0x17
                    0010    879 	ar0 = 0x10
                    0011    880 	ar1 = 0x11
   052F C0 24               881 	push	bits
   0531 C0 E0               882 	push	acc
   0533 C0 F0               883 	push	b
   0535 C0 82               884 	push	dpl
   0537 C0 83               885 	push	dph
   0539 C0 02               886 	push	(0+2)
   053B C0 03               887 	push	(0+3)
   053D C0 04               888 	push	(0+4)
   053F C0 05               889 	push	(0+5)
   0541 C0 06               890 	push	(0+6)
   0543 C0 07               891 	push	(0+7)
   0545 C0 00               892 	push	(0+0)
   0547 C0 01               893 	push	(0+1)
   0549 C0 D0               894 	push	psw
   054B 75 D0 10            895 	mov	psw,#0x10
                    0031    896 	C$vibes_lab_tx_5.1.c$379$1$1 ==.
                            897 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:379: ADCIE = 0;
   054E C2 A9               898 	clr	_ADCIE
                    0033    899 	C$vibes_lab_tx_5.1.c$382$1$1 ==.
                            900 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:382: if(initComplete)
   0550 20 02 03            901 	jb	_initComplete,00117$
   0553 02 06 4C            902 	ljmp	00110$
   0556                     903 00117$:
                    0039    904 	C$vibes_lab_tx_5.1.c$385$2$2 ==.
                            905 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:385: accSample = ADC >> 5;   // [3:0] of ADC are unreliable, we throw them away
   0556 85 BA 25            906 	mov	_accSample,_ADC
   0559 E5 BB               907 	mov	a,(_ADC >> 8)
   055B C4                  908 	swap	a
   055C 03                  909 	rr	a
   055D C5 25               910 	xch	a,_accSample
   055F C4                  911 	swap	a
   0560 03                  912 	rr	a
   0561 54 07               913 	anl	a,#0x07
   0563 65 25               914 	xrl	a,_accSample
   0565 C5 25               915 	xch	a,_accSample
   0567 54 07               916 	anl	a,#0x07
   0569 C5 25               917 	xch	a,_accSample
   056B 65 25               918 	xrl	a,_accSample
   056D C5 25               919 	xch	a,_accSample
   056F F5 26               920 	mov	(_accSample + 1),a
                    0054    921 	C$vibes_lab_tx_5.1.c$392$2$2 ==.
                            922 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:392: accSample <<= 2;
   0571 E5 26               923 	mov	a,(_accSample + 1)
   0573 C5 25               924 	xch	a,_accSample
   0575 25 E0               925 	add	a,acc
   0577 C5 25               926 	xch	a,_accSample
   0579 33                  927 	rlc	a
   057A C5 25               928 	xch	a,_accSample
   057C 25 E0               929 	add	a,acc
   057E C5 25               930 	xch	a,_accSample
   0580 33                  931 	rlc	a
   0581 F5 26               932 	mov	(_accSample + 1),a
                    0066    933 	C$vibes_lab_tx_5.1.c$395$2$2 ==.
                            934 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:395: if(packet)
   0583 78 00               935 	mov	r0,#_packet
   0585 E2                  936 	movx	a,@r0
   0586 F5 F0               937 	mov	b,a
   0588 08                  938 	inc	r0
   0589 E2                  939 	movx	a,@r0
   058A 45 F0               940 	orl	a,b
   058C 70 03               941 	jnz	00118$
   058E 02 06 4A            942 	ljmp	00107$
   0591                     943 00118$:
                    0074    944 	C$vibes_lab_tx_5.1.c$398$3$3 ==.
                            945 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:398: if(isrCounter)
   0591 30 00 3D            946 	jnb	_isrCounter,00102$
                    0077    947 	C$vibes_lab_tx_5.1.c$400$4$4 ==.
                            948 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:400: packet[++sampleIndex] = (uint8) (accSample & 0xFF);
   0594 05 27               949 	inc	_sampleIndex
   0596 78 00               950 	mov	r0,#_packet
   0598 E2                  951 	movx	a,@r0
   0599 25 27               952 	add	a,_sampleIndex
   059B F5 82               953 	mov	dpl,a
   059D 08                  954 	inc	r0
   059E E2                  955 	movx	a,@r0
   059F 34 00               956 	addc	a,#0x00
   05A1 F5 83               957 	mov	dph,a
   05A3 AA 25               958 	mov	r2,_accSample
   05A5 E5 26               959 	mov	a,(_accSample + 1)
   05A7 EA                  960 	mov	a,r2
   05A8 F0                  961 	movx	@dptr,a
                    008C    962 	C$vibes_lab_tx_5.1.c$401$4$4 ==.
                            963 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:401: packet[++sampleIndex] = (uint8) ((accSample & 0xF00) >> 4);
   05A9 05 27               964 	inc	_sampleIndex
   05AB 78 00               965 	mov	r0,#_packet
   05AD E2                  966 	movx	a,@r0
   05AE 25 27               967 	add	a,_sampleIndex
   05B0 F5 82               968 	mov	dpl,a
   05B2 08                  969 	inc	r0
   05B3 E2                  970 	movx	a,@r0
   05B4 34 00               971 	addc	a,#0x00
   05B6 F5 83               972 	mov	dph,a
   05B8 E5 25               973 	mov	a,_accSample
   05BA 7A 00               974 	mov	r2,#0x00
   05BC 74 0F               975 	mov	a,#0x0F
   05BE 55 26               976 	anl	a,(_accSample + 1)
   05C0 C4                  977 	swap	a
   05C1 CA                  978 	xch	a,r2
   05C2 C4                  979 	swap	a
   05C3 54 0F               980 	anl	a,#0x0f
   05C5 6A                  981 	xrl	a,r2
   05C6 CA                  982 	xch	a,r2
   05C7 54 0F               983 	anl	a,#0x0f
   05C9 CA                  984 	xch	a,r2
   05CA 6A                  985 	xrl	a,r2
   05CB CA                  986 	xch	a,r2
   05CC FB                  987 	mov	r3,a
   05CD EA                  988 	mov	a,r2
   05CE F0                  989 	movx	@dptr,a
   05CF 80 42               990 	sjmp	00103$
   05D1                     991 00102$:
                    00B4    992 	C$vibes_lab_tx_5.1.c$405$4$5 ==.
                            993 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:405: packet[sampleIndex] |= (uint8) ((accSample & 0xF00) >> 8);
   05D1 78 00               994 	mov	r0,#_packet
   05D3 E2                  995 	movx	a,@r0
   05D4 25 27               996 	add	a,_sampleIndex
   05D6 FA                  997 	mov	r2,a
   05D7 08                  998 	inc	r0
   05D8 E2                  999 	movx	a,@r0
   05D9 34 00              1000 	addc	a,#0x00
   05DB FB                 1001 	mov	r3,a
   05DC 78 00              1002 	mov	r0,#_packet
   05DE E2                 1003 	movx	a,@r0
   05DF 25 27              1004 	add	a,_sampleIndex
   05E1 F5 82              1005 	mov	dpl,a
   05E3 08                 1006 	inc	r0
   05E4 E2                 1007 	movx	a,@r0
   05E5 34 00              1008 	addc	a,#0x00
   05E7 F5 83              1009 	mov	dph,a
   05E9 E0                 1010 	movx	a,@dptr
   05EA FC                 1011 	mov	r4,a
   05EB E5 25              1012 	mov	a,_accSample
   05ED 74 0F              1013 	mov	a,#0x0F
   05EF 55 26              1014 	anl	a,(_accSample + 1)
   05F1 FE                 1015 	mov	r6,a
   05F2 FD                 1016 	mov	r5,a
   05F3 ED                 1017 	mov	a,r5
   05F4 42 14              1018 	orl	ar4,a
   05F6 8A 82              1019 	mov	dpl,r2
   05F8 8B 83              1020 	mov	dph,r3
   05FA EC                 1021 	mov	a,r4
   05FB F0                 1022 	movx	@dptr,a
                    00DF   1023 	C$vibes_lab_tx_5.1.c$406$4$5 ==.
                           1024 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:406: packet[++sampleIndex] = (uint8) (accSample & 0xFF);
   05FC 05 27              1025 	inc	_sampleIndex
   05FE 78 00              1026 	mov	r0,#_packet
   0600 E2                 1027 	movx	a,@r0
   0601 25 27              1028 	add	a,_sampleIndex
   0603 F5 82              1029 	mov	dpl,a
   0605 08                 1030 	inc	r0
   0606 E2                 1031 	movx	a,@r0
   0607 34 00              1032 	addc	a,#0x00
   0609 F5 83              1033 	mov	dph,a
   060B AA 25              1034 	mov	r2,_accSample
   060D E5 26              1035 	mov	a,(_accSample + 1)
   060F 7B 00              1036 	mov	r3,#0x00
   0611 EA                 1037 	mov	a,r2
   0612 F0                 1038 	movx	@dptr,a
   0613                    1039 00103$:
                    00F6   1040 	C$vibes_lab_tx_5.1.c$410$3$3 ==.
                           1041 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:410: isrCounter ^= 1;
   0613 B2 00              1042 	cpl	_isrCounter
                    00F8   1043 	C$vibes_lab_tx_5.1.c$413$3$3 ==.
                           1044 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:413: if(sampleIndex == RADIO_PAYLOAD_SIZE)
   0615 74 96              1045 	mov	a,#0x96
   0617 B5 27 32           1046 	cjne	a,_sampleIndex,00110$
                    00FD   1047 	C$vibes_lab_tx_5.1.c$416$4$6 ==.
                           1048 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:416: packet[0] = RADIO_PAYLOAD_SIZE;
   061A 78 00              1049 	mov	r0,#_packet
   061C E2                 1050 	movx	a,@r0
   061D F5 82              1051 	mov	dpl,a
   061F 08                 1052 	inc	r0
   0620 E2                 1053 	movx	a,@r0
   0621 F5 83              1054 	mov	dph,a
   0623 74 96              1055 	mov	a,#0x96
   0625 F0                 1056 	movx	@dptr,a
                    0109   1057 	C$vibes_lab_tx_5.1.c$419$4$6 ==.
                           1058 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:419: radioTxDoneWithPacket();
   0626 75 D0 00           1059 	mov	psw,#0x00
   0629 12 09 5C           1060 	lcall	_radioTxDoneWithPacket
                    010F   1061 	C$vibes_lab_tx_5.1.c$420$4$6 ==.
                           1062 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:420: packet = radioTxCurrentPacket();
   062C 75 D0 00           1063 	mov	psw,#0x00
   062F 12 08 95           1064 	lcall	_radioTxCurrentPacket
   0632 75 D0 10           1065 	mov	psw,#0x10
   0635 E5 82              1066 	mov	a,dpl
   0637 85 83 F0           1067 	mov	b,dph
   063A 78 00              1068 	mov	r0,#_packet
   063C F2                 1069 	movx	@r0,a
   063D 08                 1070 	inc	r0
   063E E5 F0              1071 	mov	a,b
   0640 F2                 1072 	movx	@r0,a
                    0124   1073 	C$vibes_lab_tx_5.1.c$421$4$6 ==.
                           1074 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:421: sampleIndex = 0;
   0641 75 27 00           1075 	mov	_sampleIndex,#0x00
                    0127   1076 	C$vibes_lab_tx_5.1.c$422$4$6 ==.
                           1077 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:422: isrCounter = (BIT) 0;
   0644 C2 00              1078 	clr	_isrCounter
                    0129   1079 	C$vibes_lab_tx_5.1.c$425$4$6 ==.
                           1080 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:425: ++transmissionsReady;
   0646 05 28              1081 	inc	_transmissionsReady
   0648 80 02              1082 	sjmp	00110$
   064A                    1083 00107$:
                    012D   1084 	C$vibes_lab_tx_5.1.c$432$3$7 ==.
                           1085 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:432: lostSample = TRUE;
   064A D2 01              1086 	setb	_lostSample
   064C                    1087 00110$:
                    012F   1088 	C$vibes_lab_tx_5.1.c$437$1$1 ==.
                           1089 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:437: ADCIE = 1;
   064C D2 A9              1090 	setb	_ADCIE
   064E D0 D0              1091 	pop	psw
   0650 D0 01              1092 	pop	(0+1)
   0652 D0 00              1093 	pop	(0+0)
   0654 D0 07              1094 	pop	(0+7)
   0656 D0 06              1095 	pop	(0+6)
   0658 D0 05              1096 	pop	(0+5)
   065A D0 04              1097 	pop	(0+4)
   065C D0 03              1098 	pop	(0+3)
   065E D0 02              1099 	pop	(0+2)
   0660 D0 83              1100 	pop	dph
   0662 D0 82              1101 	pop	dpl
   0664 D0 F0              1102 	pop	b
   0666 D0 E0              1103 	pop	acc
   0668 D0 24              1104 	pop	bits
                    014D   1105 	C$vibes_lab_tx_5.1.c$438$1$1 ==.
                    014D   1106 	XG$ISR_ADC$0$0 ==.
   066A 32                 1107 	reti
                           1108 ;------------------------------------------------------------
                           1109 ;Allocation info for local variables in function 'updateLeds'
                           1110 ;------------------------------------------------------------
                           1111 ;------------------------------------------------------------
                    014E   1112 	Fvibes_lab_tx_5_1$updateLeds$0$0 ==.
                    014E   1113 	C$vibes_lab_tx_5.1.c$459$1$1 ==.
                           1114 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:459: static void updateLeds()
                           1115 ;	-----------------------------------------
                           1116 ;	 function updateLeds
                           1117 ;	-----------------------------------------
   066B                    1118 _updateLeds:
                    0002   1119 	ar2 = 0x02
                    0003   1120 	ar3 = 0x03
                    0004   1121 	ar4 = 0x04
                    0005   1122 	ar5 = 0x05
                    0006   1123 	ar6 = 0x06
                    0007   1124 	ar7 = 0x07
                    0000   1125 	ar0 = 0x00
                    0001   1126 	ar1 = 0x01
                    014E   1127 	C$vibes_lab_tx_5.1.c$461$1$1 ==.
                           1128 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:461: usbShowStatusWithGreenLed(); // USB connected
   066B 12 18 93           1129 	lcall	_usbShowStatusWithGreenLed
                    0151   1130 	C$vibes_lab_tx_5.1.c$462$2$2 ==.
                           1131 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:462: LED_YELLOW(vinPowerPresent());
   066E 12 17 2F           1132 	lcall	_vinPowerPresent
   0671 50 05              1133 	jnc	00107$
   0673 43 FF 04           1134 	orl	_P2DIR,#0x04
   0676 80 03              1135 	sjmp	00108$
   0678                    1136 00107$:
   0678 53 FF FB           1137 	anl	_P2DIR,#0xFB
   067B                    1138 00108$:
                    015E   1139 	C$vibes_lab_tx_5.1.c$466$1$1 ==.
                           1140 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:466: if((getMs() - operationalTimeStamp > 500) //&& sendReceiveComplete
   067B 12 0D 15           1141 	lcall	_getMs
   067E AA 82              1142 	mov	r2,dpl
   0680 AB 83              1143 	mov	r3,dph
   0682 AC F0              1144 	mov	r4,b
   0684 FD                 1145 	mov	r5,a
   0685 EA                 1146 	mov	a,r2
   0686 C3                 1147 	clr	c
   0687 95 29              1148 	subb	a,_operationalTimeStamp
   0689 FA                 1149 	mov	r2,a
   068A EB                 1150 	mov	a,r3
   068B 95 2A              1151 	subb	a,(_operationalTimeStamp + 1)
   068D FB                 1152 	mov	r3,a
   068E EC                 1153 	mov	a,r4
   068F 95 2B              1154 	subb	a,(_operationalTimeStamp + 2)
   0691 FC                 1155 	mov	r4,a
   0692 ED                 1156 	mov	a,r5
   0693 95 2C              1157 	subb	a,(_operationalTimeStamp + 3)
   0695 FD                 1158 	mov	r5,a
   0696 C3                 1159 	clr	c
   0697 74 F4              1160 	mov	a,#0xF4
   0699 9A                 1161 	subb	a,r2
   069A 74 01              1162 	mov	a,#0x01
   069C 9B                 1163 	subb	a,r3
   069D E4                 1164 	clr	a
   069E 9C                 1165 	subb	a,r4
   069F E4                 1166 	clr	a
   06A0 9D                 1167 	subb	a,r5
   06A1 50 17              1168 	jnc	00102$
                    0186   1169 	C$vibes_lab_tx_5.1.c$467$1$1 ==.
                           1170 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:467: && !lostSample)
   06A3 20 01 14           1171 	jb	_lostSample,00102$
                    0189   1172 	C$vibes_lab_tx_5.1.c$470$3$4 ==.
                           1173 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:470: LED_RED_TOGGLE();
   06A6 63 FF 02           1174 	xrl	_P2DIR,#0x02
                    018C   1175 	C$vibes_lab_tx_5.1.c$473$2$3 ==.
                           1176 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:473: sendReceiveComplete = FALSE;
   06A9 C2 04              1177 	clr	_sendReceiveComplete
                    018E   1178 	C$vibes_lab_tx_5.1.c$474$2$3 ==.
                           1179 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:474: operationalTimeStamp = getMs();
   06AB 12 0D 15           1180 	lcall	_getMs
   06AE 85 82 29           1181 	mov	_operationalTimeStamp,dpl
   06B1 85 83 2A           1182 	mov	(_operationalTimeStamp + 1),dph
   06B4 85 F0 2B           1183 	mov	(_operationalTimeStamp + 2),b
   06B7 F5 2C              1184 	mov	(_operationalTimeStamp + 3),a
   06B9 22                 1185 	ret
   06BA                    1186 00102$:
                    019D   1187 	C$vibes_lab_tx_5.1.c$476$3$6 ==.
                           1188 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:476: LED_RED(TRUE);
   06BA 43 FF 02           1189 	orl	_P2DIR,#0x02
                    01A0   1190 	C$vibes_lab_tx_5.1.c$478$2$5 ==.
                           1191 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:478: operationalTimeStamp = getMs() + 3000;
   06BD 12 0D 15           1192 	lcall	_getMs
   06C0 AA 82              1193 	mov	r2,dpl
   06C2 AB 83              1194 	mov	r3,dph
   06C4 AC F0              1195 	mov	r4,b
   06C6 FD                 1196 	mov	r5,a
   06C7 74 B8              1197 	mov	a,#0xB8
   06C9 2A                 1198 	add	a,r2
   06CA F5 29              1199 	mov	_operationalTimeStamp,a
   06CC 74 0B              1200 	mov	a,#0x0B
   06CE 3B                 1201 	addc	a,r3
   06CF F5 2A              1202 	mov	(_operationalTimeStamp + 1),a
   06D1 E4                 1203 	clr	a
   06D2 3C                 1204 	addc	a,r4
   06D3 F5 2B              1205 	mov	(_operationalTimeStamp + 2),a
   06D5 E4                 1206 	clr	a
   06D6 3D                 1207 	addc	a,r5
   06D7 F5 2C              1208 	mov	(_operationalTimeStamp + 3),a
                    01BC   1209 	C$vibes_lab_tx_5.1.c$479$2$5 ==.
                           1210 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:479: sendReceiveComplete = FALSE;
   06D9 C2 04              1211 	clr	_sendReceiveComplete
                    01BE   1212 	C$vibes_lab_tx_5.1.c$480$2$5 ==.
                           1213 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:480: lostSample = FALSE;
   06DB C2 01              1214 	clr	_lostSample
                    01C0   1215 	C$vibes_lab_tx_5.1.c$482$1$1 ==.
                    01C0   1216 	XFvibes_lab_tx_5_1$updateLeds$0$0 ==.
   06DD 22                 1217 	ret
                           1218 ;------------------------------------------------------------
                           1219 ;Allocation info for local variables in function 'reportResults'
                           1220 ;------------------------------------------------------------
                           1221 ;buffer                    Allocated with name '_reportResults_buffer_2_2'
                           1222 ;------------------------------------------------------------
                    01C1   1223 	Fvibes_lab_tx_5_1$reportResults$0$0 ==.
                    01C1   1224 	C$vibes_lab_tx_5.1.c$485$1$1 ==.
                           1225 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:485: static void reportResults()
                           1226 ;	-----------------------------------------
                           1227 ;	 function reportResults
                           1228 ;	-----------------------------------------
   06DE                    1229 _reportResults:
                    01C1   1230 	C$vibes_lab_tx_5.1.c$487$1$1 ==.
                           1231 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:487: if(usbComTxAvailable() > 16)
   06DE 12 0F 8E           1232 	lcall	_usbComTxAvailable
   06E1 AA 82              1233 	mov	r2,dpl
   06E3 74 10              1234 	mov	a,#0x10
   06E5 B5 02 00           1235 	cjne	a,ar2,00106$
   06E8                    1236 00106$:
   06E8 50 34              1237 	jnc	00103$
                    01CD   1238 	C$vibes_lab_tx_5.1.c$493$2$2 ==.
                           1239 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:493: bufferLength = sprintf(buffer, "Trans Ready: %d\r\n", transmissionsReady);
   06EA AA 28              1240 	mov	r2,_transmissionsReady
   06EC 7B 00              1241 	mov	r3,#0x00
   06EE C0 02              1242 	push	ar2
   06F0 C0 03              1243 	push	ar3
   06F2 74 52              1244 	mov	a,#__str_0
   06F4 C0 E0              1245 	push	acc
   06F6 74 20              1246 	mov	a,#(__str_0 >> 8)
   06F8 C0 E0              1247 	push	acc
   06FA 74 80              1248 	mov	a,#0x80
   06FC C0 E0              1249 	push	acc
   06FE 74 43              1250 	mov	a,#_reportResults_buffer_2_2
   0700 C0 E0              1251 	push	acc
   0702 74 F0              1252 	mov	a,#(_reportResults_buffer_2_2 >> 8)
   0704 C0 E0              1253 	push	acc
   0706 E4                 1254 	clr	a
   0707 C0 E0              1255 	push	acc
   0709 12 18 3E           1256 	lcall	_sprintf
   070C AA 82              1257 	mov	r2,dpl
   070E E5 81              1258 	mov	a,sp
   0710 24 F8              1259 	add	a,#0xf8
   0712 F5 81              1260 	mov	sp,a
   0714 78 0D              1261 	mov	r0,#_usbComTxSend_PARM_2
   0716 EA                 1262 	mov	a,r2
   0717 F2                 1263 	movx	@r0,a
                    01FB   1264 	C$vibes_lab_tx_5.1.c$495$2$2 ==.
                           1265 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:495: usbComTxSend(buffer, bufferLength);
   0718 90 F0 43           1266 	mov	dptr,#_reportResults_buffer_2_2
                    01FE   1267 	C$vibes_lab_tx_5.1.c$497$2$1 ==.
                    01FE   1268 	XFvibes_lab_tx_5_1$reportResults$0$0 ==.
   071B 02 0F C2           1269 	ljmp	_usbComTxSend
   071E                    1270 00103$:
   071E 22                 1271 	ret
                           1272 ;------------------------------------------------------------
                           1273 ;Allocation info for local variables in function 'main'
                           1274 ;------------------------------------------------------------
                           1275 ;------------------------------------------------------------
                    0202   1276 	G$main$0$0 ==.
                    0202   1277 	C$vibes_lab_tx_5.1.c$521$2$1 ==.
                           1278 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:521: void main()
                           1279 ;	-----------------------------------------
                           1280 ;	 function main
                           1281 ;	-----------------------------------------
   071F                    1282 _main:
                    0202   1283 	C$vibes_lab_tx_5.1.c$524$1$1 ==.
                           1284 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:524: initComplete = FALSE;
   071F C2 02              1285 	clr	_initComplete
                    0204   1286 	C$vibes_lab_tx_5.1.c$527$1$1 ==.
                           1287 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:527: systemInit();     // configures getMs() function, among others
   0721 12 16 7D           1288 	lcall	_systemInit
                    0207   1289 	C$vibes_lab_tx_5.1.c$528$1$1 ==.
                           1290 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:528: usbInit();        // Allows bootloader to be entered by USB command
   0724 12 10 49           1291 	lcall	_usbInit
                    020A   1292 	C$vibes_lab_tx_5.1.c$530$1$1 ==.
                           1293 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:530: radioInit(TRANSMITTER);    // Initializes radio for use in lab
   0727 D2 0B              1294 	setb	_radioInit_PARM_1
   0729 12 07 7C           1295 	lcall	_radioInit
                    020F   1296 	C$vibes_lab_tx_5.1.c$531$1$1 ==.
                           1297 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:531: isrTimerInit();            // Initializes T3 timer for 10KHz sampling freq.
   072C 12 0D 99           1298 	lcall	_isrTimerInit
                    0212   1299 	C$vibes_lab_tx_5.1.c$532$1$1 ==.
                           1300 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:532: adcInit();                 // Initializes P0_0 as analog input
   072F 12 17 53           1301 	lcall	_adcInit
                    0215   1302 	C$vibes_lab_tx_5.1.c$535$1$1 ==.
                           1303 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:535: lostSample = FALSE;
   0732 C2 01              1304 	clr	_lostSample
                    0217   1305 	C$vibes_lab_tx_5.1.c$537$1$1 ==.
                           1306 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:537: packet = radioTxCurrentPacket();
   0734 12 08 95           1307 	lcall	_radioTxCurrentPacket
   0737 E5 82              1308 	mov	a,dpl
   0739 85 83 F0           1309 	mov	b,dph
   073C 78 00              1310 	mov	r0,#_packet
   073E F2                 1311 	movx	@r0,a
   073F 08                 1312 	inc	r0
   0740 E5 F0              1313 	mov	a,b
   0742 F2                 1314 	movx	@r0,a
                    0226   1315 	C$vibes_lab_tx_5.1.c$538$1$1 ==.
                           1316 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:538: sampleIndex = 0;
   0743 75 27 00           1317 	mov	_sampleIndex,#0x00
                    0229   1318 	C$vibes_lab_tx_5.1.c$539$1$1 ==.
                           1319 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:539: isrCounter = (BIT) 1;
   0746 D2 00              1320 	setb	_isrCounter
                    022B   1321 	C$vibes_lab_tx_5.1.c$540$1$1 ==.
                           1322 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:540: accSample = 0;
   0748 E4                 1323 	clr	a
   0749 F5 25              1324 	mov	_accSample,a
   074B F5 26              1325 	mov	(_accSample + 1),a
                    0230   1326 	C$vibes_lab_tx_5.1.c$541$1$1 ==.
                           1327 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:541: transmissionsReady = 0;
   074D 75 28 00           1328 	mov	_transmissionsReady,#0x00
                    0233   1329 	C$vibes_lab_tx_5.1.c$543$1$1 ==.
                           1330 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:543: operationalTimeStamp = getMs();
   0750 12 0D 15           1331 	lcall	_getMs
   0753 85 82 29           1332 	mov	_operationalTimeStamp,dpl
   0756 85 83 2A           1333 	mov	(_operationalTimeStamp + 1),dph
   0759 85 F0 2B           1334 	mov	(_operationalTimeStamp + 2),b
   075C F5 2C              1335 	mov	(_operationalTimeStamp + 3),a
                    0241   1336 	C$vibes_lab_tx_5.1.c$546$1$1 ==.
                           1337 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:546: initComplete = TRUE;
   075E D2 02              1338 	setb	_initComplete
                    0243   1339 	C$vibes_lab_tx_5.1.c$549$1$1 ==.
                           1340 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:549: while(TRUE)
   0760                    1341 00107$:
                    0243   1342 	C$vibes_lab_tx_5.1.c$551$2$2 ==.
                           1343 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:551: updateLeds();     // blinks red LED every 50ms if we are receiving packets
   0760 12 06 6B           1344 	lcall	_updateLeds
                    0246   1345 	C$vibes_lab_tx_5.1.c$552$2$2 ==.
                           1346 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:552: boardService();   // so we can start bootloader by shorting P2_2 to 3V3
   0763 12 16 89           1347 	lcall	_boardService
                    0249   1348 	C$vibes_lab_tx_5.1.c$553$2$2 ==.
                           1349 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:553: usbComService();  // so we can start bootloader from Wixel config GUI
   0766 12 0E F5           1350 	lcall	_usbComService
                    024C   1351 	C$vibes_lab_tx_5.1.c$556$2$2 ==.
                           1352 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:556: while(transmissionsReady)
   0769                    1353 00103$:
   0769 E5 28              1354 	mov	a,_transmissionsReady
   076B 60 F3              1355 	jz	00107$
                    0250   1356 	C$vibes_lab_tx_5.1.c$559$3$3 ==.
                           1357 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:559: if(radioTxAvailable())
   076D 12 08 8C           1358 	lcall	_radioTxAvailable
   0770 50 F7              1359 	jnc	00103$
                    0255   1360 	C$vibes_lab_tx_5.1.c$562$4$4 ==.
                           1361 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:562: radioTxSendPacket();
   0772 12 08 B2           1362 	lcall	_radioTxSendPacket
                    0258   1363 	C$vibes_lab_tx_5.1.c$563$4$4 ==.
                           1364 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:563: --transmissionsReady;
   0775 15 28              1365 	dec	_transmissionsReady
                    025A   1366 	C$vibes_lab_tx_5.1.c$565$4$4 ==.
                           1367 ;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:565: reportResults();
   0777 12 06 DE           1368 	lcall	_reportResults
                    025D   1369 	C$vibes_lab_tx_5.1.c$569$1$1 ==.
                    025D   1370 	XG$main$0$0 ==.
   077A 80 ED              1371 	sjmp	00103$
                           1372 	.area CSEG    (CODE)
                           1373 	.area CONST   (CODE)
                    0000   1374 Fvibes_lab_tx_5_1$_str_0$0$0 == .
   2052                    1375 __str_0:
   2052 54 72 61 6E 73 20  1376 	.ascii "Trans Ready: %d"
        52 65 61 64 79 3A
        20 25 64
   2061 0D                 1377 	.db 0x0D
   2062 0A                 1378 	.db 0x0A
   2063 00                 1379 	.db 0x00
                           1380 	.area XINIT   (CODE)
                           1381 	.area CABS    (ABS,CODE)
