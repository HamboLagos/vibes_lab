                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 10 17:38:14 2012
                              5 ;--------------------------------------------------------
                              6 	.module vibes_lab_tx_5_0
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _ISR_T3
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 	.area RSEG    (ABS,DATA)
   0000                      18 	.org 0x0000
                    0080     19 Fvibes_lab_tx_5_0$P0$0$0 == 0x0080
                    0080     20 _P0	=	0x0080
                    0081     21 Fvibes_lab_tx_5_0$SP$0$0 == 0x0081
                    0081     22 _SP	=	0x0081
                    0082     23 Fvibes_lab_tx_5_0$DPL0$0$0 == 0x0082
                    0082     24 _DPL0	=	0x0082
                    0083     25 Fvibes_lab_tx_5_0$DPH0$0$0 == 0x0083
                    0083     26 _DPH0	=	0x0083
                    0084     27 Fvibes_lab_tx_5_0$DPL1$0$0 == 0x0084
                    0084     28 _DPL1	=	0x0084
                    0085     29 Fvibes_lab_tx_5_0$DPH1$0$0 == 0x0085
                    0085     30 _DPH1	=	0x0085
                    0086     31 Fvibes_lab_tx_5_0$U0CSR$0$0 == 0x0086
                    0086     32 _U0CSR	=	0x0086
                    0087     33 Fvibes_lab_tx_5_0$PCON$0$0 == 0x0087
                    0087     34 _PCON	=	0x0087
                    0088     35 Fvibes_lab_tx_5_0$TCON$0$0 == 0x0088
                    0088     36 _TCON	=	0x0088
                    0089     37 Fvibes_lab_tx_5_0$P0IFG$0$0 == 0x0089
                    0089     38 _P0IFG	=	0x0089
                    008A     39 Fvibes_lab_tx_5_0$P1IFG$0$0 == 0x008a
                    008A     40 _P1IFG	=	0x008a
                    008B     41 Fvibes_lab_tx_5_0$P2IFG$0$0 == 0x008b
                    008B     42 _P2IFG	=	0x008b
                    008C     43 Fvibes_lab_tx_5_0$PICTL$0$0 == 0x008c
                    008C     44 _PICTL	=	0x008c
                    008D     45 Fvibes_lab_tx_5_0$P1IEN$0$0 == 0x008d
                    008D     46 _P1IEN	=	0x008d
                    008F     47 Fvibes_lab_tx_5_0$P0INP$0$0 == 0x008f
                    008F     48 _P0INP	=	0x008f
                    0090     49 Fvibes_lab_tx_5_0$P1$0$0 == 0x0090
                    0090     50 _P1	=	0x0090
                    0091     51 Fvibes_lab_tx_5_0$RFIM$0$0 == 0x0091
                    0091     52 _RFIM	=	0x0091
                    0092     53 Fvibes_lab_tx_5_0$DPS$0$0 == 0x0092
                    0092     54 _DPS	=	0x0092
                    0093     55 Fvibes_lab_tx_5_0$MPAGE$0$0 == 0x0093
                    0093     56 _MPAGE	=	0x0093
                    0095     57 Fvibes_lab_tx_5_0$ENDIAN$0$0 == 0x0095
                    0095     58 _ENDIAN	=	0x0095
                    0098     59 Fvibes_lab_tx_5_0$S0CON$0$0 == 0x0098
                    0098     60 _S0CON	=	0x0098
                    009A     61 Fvibes_lab_tx_5_0$IEN2$0$0 == 0x009a
                    009A     62 _IEN2	=	0x009a
                    009B     63 Fvibes_lab_tx_5_0$S1CON$0$0 == 0x009b
                    009B     64 _S1CON	=	0x009b
                    009C     65 Fvibes_lab_tx_5_0$T2CT$0$0 == 0x009c
                    009C     66 _T2CT	=	0x009c
                    009D     67 Fvibes_lab_tx_5_0$T2PR$0$0 == 0x009d
                    009D     68 _T2PR	=	0x009d
                    009E     69 Fvibes_lab_tx_5_0$T2CTL$0$0 == 0x009e
                    009E     70 _T2CTL	=	0x009e
                    00A0     71 Fvibes_lab_tx_5_0$P2$0$0 == 0x00a0
                    00A0     72 _P2	=	0x00a0
                    00A1     73 Fvibes_lab_tx_5_0$WORIRQ$0$0 == 0x00a1
                    00A1     74 _WORIRQ	=	0x00a1
                    00A2     75 Fvibes_lab_tx_5_0$WORCTRL$0$0 == 0x00a2
                    00A2     76 _WORCTRL	=	0x00a2
                    00A3     77 Fvibes_lab_tx_5_0$WOREVT0$0$0 == 0x00a3
                    00A3     78 _WOREVT0	=	0x00a3
                    00A4     79 Fvibes_lab_tx_5_0$WOREVT1$0$0 == 0x00a4
                    00A4     80 _WOREVT1	=	0x00a4
                    00A5     81 Fvibes_lab_tx_5_0$WORTIME0$0$0 == 0x00a5
                    00A5     82 _WORTIME0	=	0x00a5
                    00A6     83 Fvibes_lab_tx_5_0$WORTIME1$0$0 == 0x00a6
                    00A6     84 _WORTIME1	=	0x00a6
                    00A8     85 Fvibes_lab_tx_5_0$IEN0$0$0 == 0x00a8
                    00A8     86 _IEN0	=	0x00a8
                    00A9     87 Fvibes_lab_tx_5_0$IP0$0$0 == 0x00a9
                    00A9     88 _IP0	=	0x00a9
                    00AB     89 Fvibes_lab_tx_5_0$FWT$0$0 == 0x00ab
                    00AB     90 _FWT	=	0x00ab
                    00AC     91 Fvibes_lab_tx_5_0$FADDRL$0$0 == 0x00ac
                    00AC     92 _FADDRL	=	0x00ac
                    00AD     93 Fvibes_lab_tx_5_0$FADDRH$0$0 == 0x00ad
                    00AD     94 _FADDRH	=	0x00ad
                    00AE     95 Fvibes_lab_tx_5_0$FCTL$0$0 == 0x00ae
                    00AE     96 _FCTL	=	0x00ae
                    00AF     97 Fvibes_lab_tx_5_0$FWDATA$0$0 == 0x00af
                    00AF     98 _FWDATA	=	0x00af
                    00B1     99 Fvibes_lab_tx_5_0$ENCDI$0$0 == 0x00b1
                    00B1    100 _ENCDI	=	0x00b1
                    00B2    101 Fvibes_lab_tx_5_0$ENCDO$0$0 == 0x00b2
                    00B2    102 _ENCDO	=	0x00b2
                    00B3    103 Fvibes_lab_tx_5_0$ENCCS$0$0 == 0x00b3
                    00B3    104 _ENCCS	=	0x00b3
                    00B4    105 Fvibes_lab_tx_5_0$ADCCON1$0$0 == 0x00b4
                    00B4    106 _ADCCON1	=	0x00b4
                    00B5    107 Fvibes_lab_tx_5_0$ADCCON2$0$0 == 0x00b5
                    00B5    108 _ADCCON2	=	0x00b5
                    00B6    109 Fvibes_lab_tx_5_0$ADCCON3$0$0 == 0x00b6
                    00B6    110 _ADCCON3	=	0x00b6
                    00B8    111 Fvibes_lab_tx_5_0$IEN1$0$0 == 0x00b8
                    00B8    112 _IEN1	=	0x00b8
                    00B9    113 Fvibes_lab_tx_5_0$IP1$0$0 == 0x00b9
                    00B9    114 _IP1	=	0x00b9
                    00BA    115 Fvibes_lab_tx_5_0$ADCL$0$0 == 0x00ba
                    00BA    116 _ADCL	=	0x00ba
                    00BB    117 Fvibes_lab_tx_5_0$ADCH$0$0 == 0x00bb
                    00BB    118 _ADCH	=	0x00bb
                    00BC    119 Fvibes_lab_tx_5_0$RNDL$0$0 == 0x00bc
                    00BC    120 _RNDL	=	0x00bc
                    00BD    121 Fvibes_lab_tx_5_0$RNDH$0$0 == 0x00bd
                    00BD    122 _RNDH	=	0x00bd
                    00BE    123 Fvibes_lab_tx_5_0$SLEEP$0$0 == 0x00be
                    00BE    124 _SLEEP	=	0x00be
                    00C0    125 Fvibes_lab_tx_5_0$IRCON$0$0 == 0x00c0
                    00C0    126 _IRCON	=	0x00c0
                    00C1    127 Fvibes_lab_tx_5_0$U0DBUF$0$0 == 0x00c1
                    00C1    128 _U0DBUF	=	0x00c1
                    00C2    129 Fvibes_lab_tx_5_0$U0BAUD$0$0 == 0x00c2
                    00C2    130 _U0BAUD	=	0x00c2
                    00C4    131 Fvibes_lab_tx_5_0$U0UCR$0$0 == 0x00c4
                    00C4    132 _U0UCR	=	0x00c4
                    00C5    133 Fvibes_lab_tx_5_0$U0GCR$0$0 == 0x00c5
                    00C5    134 _U0GCR	=	0x00c5
                    00C6    135 Fvibes_lab_tx_5_0$CLKCON$0$0 == 0x00c6
                    00C6    136 _CLKCON	=	0x00c6
                    00C7    137 Fvibes_lab_tx_5_0$MEMCTR$0$0 == 0x00c7
                    00C7    138 _MEMCTR	=	0x00c7
                    00C9    139 Fvibes_lab_tx_5_0$WDCTL$0$0 == 0x00c9
                    00C9    140 _WDCTL	=	0x00c9
                    00CA    141 Fvibes_lab_tx_5_0$T3CNT$0$0 == 0x00ca
                    00CA    142 _T3CNT	=	0x00ca
                    00CB    143 Fvibes_lab_tx_5_0$T3CTL$0$0 == 0x00cb
                    00CB    144 _T3CTL	=	0x00cb
                    00CC    145 Fvibes_lab_tx_5_0$T3CCTL0$0$0 == 0x00cc
                    00CC    146 _T3CCTL0	=	0x00cc
                    00CD    147 Fvibes_lab_tx_5_0$T3CC0$0$0 == 0x00cd
                    00CD    148 _T3CC0	=	0x00cd
                    00CE    149 Fvibes_lab_tx_5_0$T3CCTL1$0$0 == 0x00ce
                    00CE    150 _T3CCTL1	=	0x00ce
                    00CF    151 Fvibes_lab_tx_5_0$T3CC1$0$0 == 0x00cf
                    00CF    152 _T3CC1	=	0x00cf
                    00D0    153 Fvibes_lab_tx_5_0$PSW$0$0 == 0x00d0
                    00D0    154 _PSW	=	0x00d0
                    00D1    155 Fvibes_lab_tx_5_0$DMAIRQ$0$0 == 0x00d1
                    00D1    156 _DMAIRQ	=	0x00d1
                    00D2    157 Fvibes_lab_tx_5_0$DMA1CFGL$0$0 == 0x00d2
                    00D2    158 _DMA1CFGL	=	0x00d2
                    00D3    159 Fvibes_lab_tx_5_0$DMA1CFGH$0$0 == 0x00d3
                    00D3    160 _DMA1CFGH	=	0x00d3
                    00D4    161 Fvibes_lab_tx_5_0$DMA0CFGL$0$0 == 0x00d4
                    00D4    162 _DMA0CFGL	=	0x00d4
                    00D5    163 Fvibes_lab_tx_5_0$DMA0CFGH$0$0 == 0x00d5
                    00D5    164 _DMA0CFGH	=	0x00d5
                    00D6    165 Fvibes_lab_tx_5_0$DMAARM$0$0 == 0x00d6
                    00D6    166 _DMAARM	=	0x00d6
                    00D7    167 Fvibes_lab_tx_5_0$DMAREQ$0$0 == 0x00d7
                    00D7    168 _DMAREQ	=	0x00d7
                    00D8    169 Fvibes_lab_tx_5_0$TIMIF$0$0 == 0x00d8
                    00D8    170 _TIMIF	=	0x00d8
                    00D9    171 Fvibes_lab_tx_5_0$RFD$0$0 == 0x00d9
                    00D9    172 _RFD	=	0x00d9
                    00DA    173 Fvibes_lab_tx_5_0$T1CC0L$0$0 == 0x00da
                    00DA    174 _T1CC0L	=	0x00da
                    00DB    175 Fvibes_lab_tx_5_0$T1CC0H$0$0 == 0x00db
                    00DB    176 _T1CC0H	=	0x00db
                    00DC    177 Fvibes_lab_tx_5_0$T1CC1L$0$0 == 0x00dc
                    00DC    178 _T1CC1L	=	0x00dc
                    00DD    179 Fvibes_lab_tx_5_0$T1CC1H$0$0 == 0x00dd
                    00DD    180 _T1CC1H	=	0x00dd
                    00DE    181 Fvibes_lab_tx_5_0$T1CC2L$0$0 == 0x00de
                    00DE    182 _T1CC2L	=	0x00de
                    00DF    183 Fvibes_lab_tx_5_0$T1CC2H$0$0 == 0x00df
                    00DF    184 _T1CC2H	=	0x00df
                    00E0    185 Fvibes_lab_tx_5_0$ACC$0$0 == 0x00e0
                    00E0    186 _ACC	=	0x00e0
                    00E1    187 Fvibes_lab_tx_5_0$RFST$0$0 == 0x00e1
                    00E1    188 _RFST	=	0x00e1
                    00E2    189 Fvibes_lab_tx_5_0$T1CNTL$0$0 == 0x00e2
                    00E2    190 _T1CNTL	=	0x00e2
                    00E3    191 Fvibes_lab_tx_5_0$T1CNTH$0$0 == 0x00e3
                    00E3    192 _T1CNTH	=	0x00e3
                    00E4    193 Fvibes_lab_tx_5_0$T1CTL$0$0 == 0x00e4
                    00E4    194 _T1CTL	=	0x00e4
                    00E5    195 Fvibes_lab_tx_5_0$T1CCTL0$0$0 == 0x00e5
                    00E5    196 _T1CCTL0	=	0x00e5
                    00E6    197 Fvibes_lab_tx_5_0$T1CCTL1$0$0 == 0x00e6
                    00E6    198 _T1CCTL1	=	0x00e6
                    00E7    199 Fvibes_lab_tx_5_0$T1CCTL2$0$0 == 0x00e7
                    00E7    200 _T1CCTL2	=	0x00e7
                    00E8    201 Fvibes_lab_tx_5_0$IRCON2$0$0 == 0x00e8
                    00E8    202 _IRCON2	=	0x00e8
                    00E9    203 Fvibes_lab_tx_5_0$RFIF$0$0 == 0x00e9
                    00E9    204 _RFIF	=	0x00e9
                    00EA    205 Fvibes_lab_tx_5_0$T4CNT$0$0 == 0x00ea
                    00EA    206 _T4CNT	=	0x00ea
                    00EB    207 Fvibes_lab_tx_5_0$T4CTL$0$0 == 0x00eb
                    00EB    208 _T4CTL	=	0x00eb
                    00EC    209 Fvibes_lab_tx_5_0$T4CCTL0$0$0 == 0x00ec
                    00EC    210 _T4CCTL0	=	0x00ec
                    00ED    211 Fvibes_lab_tx_5_0$T4CC0$0$0 == 0x00ed
                    00ED    212 _T4CC0	=	0x00ed
                    00EE    213 Fvibes_lab_tx_5_0$T4CCTL1$0$0 == 0x00ee
                    00EE    214 _T4CCTL1	=	0x00ee
                    00EF    215 Fvibes_lab_tx_5_0$T4CC1$0$0 == 0x00ef
                    00EF    216 _T4CC1	=	0x00ef
                    00F0    217 Fvibes_lab_tx_5_0$B$0$0 == 0x00f0
                    00F0    218 _B	=	0x00f0
                    00F1    219 Fvibes_lab_tx_5_0$PERCFG$0$0 == 0x00f1
                    00F1    220 _PERCFG	=	0x00f1
                    00F2    221 Fvibes_lab_tx_5_0$ADCCFG$0$0 == 0x00f2
                    00F2    222 _ADCCFG	=	0x00f2
                    00F3    223 Fvibes_lab_tx_5_0$P0SEL$0$0 == 0x00f3
                    00F3    224 _P0SEL	=	0x00f3
                    00F4    225 Fvibes_lab_tx_5_0$P1SEL$0$0 == 0x00f4
                    00F4    226 _P1SEL	=	0x00f4
                    00F5    227 Fvibes_lab_tx_5_0$P2SEL$0$0 == 0x00f5
                    00F5    228 _P2SEL	=	0x00f5
                    00F6    229 Fvibes_lab_tx_5_0$P1INP$0$0 == 0x00f6
                    00F6    230 _P1INP	=	0x00f6
                    00F7    231 Fvibes_lab_tx_5_0$P2INP$0$0 == 0x00f7
                    00F7    232 _P2INP	=	0x00f7
                    00F8    233 Fvibes_lab_tx_5_0$U1CSR$0$0 == 0x00f8
                    00F8    234 _U1CSR	=	0x00f8
                    00F9    235 Fvibes_lab_tx_5_0$U1DBUF$0$0 == 0x00f9
                    00F9    236 _U1DBUF	=	0x00f9
                    00FA    237 Fvibes_lab_tx_5_0$U1BAUD$0$0 == 0x00fa
                    00FA    238 _U1BAUD	=	0x00fa
                    00FB    239 Fvibes_lab_tx_5_0$U1UCR$0$0 == 0x00fb
                    00FB    240 _U1UCR	=	0x00fb
                    00FC    241 Fvibes_lab_tx_5_0$U1GCR$0$0 == 0x00fc
                    00FC    242 _U1GCR	=	0x00fc
                    00FD    243 Fvibes_lab_tx_5_0$P0DIR$0$0 == 0x00fd
                    00FD    244 _P0DIR	=	0x00fd
                    00FE    245 Fvibes_lab_tx_5_0$P1DIR$0$0 == 0x00fe
                    00FE    246 _P1DIR	=	0x00fe
                    00FF    247 Fvibes_lab_tx_5_0$P2DIR$0$0 == 0x00ff
                    00FF    248 _P2DIR	=	0x00ff
                    FFFFD5D4    249 Fvibes_lab_tx_5_0$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    250 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    251 Fvibes_lab_tx_5_0$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    252 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    253 Fvibes_lab_tx_5_0$FADDR$0$0 == 0xffffadac
                    FFFFADAC    254 _FADDR	=	0xffffadac
                    FFFFBBBA    255 Fvibes_lab_tx_5_0$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    256 _ADC	=	0xffffbbba
                            257 ;--------------------------------------------------------
                            258 ; special function bits
                            259 ;--------------------------------------------------------
                            260 	.area RSEG    (ABS,DATA)
   0000                     261 	.org 0x0000
                    0080    262 Fvibes_lab_tx_5_0$P0_0$0$0 == 0x0080
                    0080    263 _P0_0	=	0x0080
                    0081    264 Fvibes_lab_tx_5_0$P0_1$0$0 == 0x0081
                    0081    265 _P0_1	=	0x0081
                    0082    266 Fvibes_lab_tx_5_0$P0_2$0$0 == 0x0082
                    0082    267 _P0_2	=	0x0082
                    0083    268 Fvibes_lab_tx_5_0$P0_3$0$0 == 0x0083
                    0083    269 _P0_3	=	0x0083
                    0084    270 Fvibes_lab_tx_5_0$P0_4$0$0 == 0x0084
                    0084    271 _P0_4	=	0x0084
                    0085    272 Fvibes_lab_tx_5_0$P0_5$0$0 == 0x0085
                    0085    273 _P0_5	=	0x0085
                    0086    274 Fvibes_lab_tx_5_0$P0_6$0$0 == 0x0086
                    0086    275 _P0_6	=	0x0086
                    0087    276 Fvibes_lab_tx_5_0$P0_7$0$0 == 0x0087
                    0087    277 _P0_7	=	0x0087
                    0088    278 Fvibes_lab_tx_5_0$_TCON_0$0$0 == 0x0088
                    0088    279 __TCON_0	=	0x0088
                    0089    280 Fvibes_lab_tx_5_0$RFTXRXIF$0$0 == 0x0089
                    0089    281 _RFTXRXIF	=	0x0089
                    008A    282 Fvibes_lab_tx_5_0$_TCON_2$0$0 == 0x008a
                    008A    283 __TCON_2	=	0x008a
                    008B    284 Fvibes_lab_tx_5_0$URX0IF$0$0 == 0x008b
                    008B    285 _URX0IF	=	0x008b
                    008C    286 Fvibes_lab_tx_5_0$_TCON_4$0$0 == 0x008c
                    008C    287 __TCON_4	=	0x008c
                    008D    288 Fvibes_lab_tx_5_0$ADCIF$0$0 == 0x008d
                    008D    289 _ADCIF	=	0x008d
                    008E    290 Fvibes_lab_tx_5_0$_TCON_6$0$0 == 0x008e
                    008E    291 __TCON_6	=	0x008e
                    008F    292 Fvibes_lab_tx_5_0$URX1IF$0$0 == 0x008f
                    008F    293 _URX1IF	=	0x008f
                    0090    294 Fvibes_lab_tx_5_0$P1_0$0$0 == 0x0090
                    0090    295 _P1_0	=	0x0090
                    0091    296 Fvibes_lab_tx_5_0$P1_1$0$0 == 0x0091
                    0091    297 _P1_1	=	0x0091
                    0092    298 Fvibes_lab_tx_5_0$P1_2$0$0 == 0x0092
                    0092    299 _P1_2	=	0x0092
                    0093    300 Fvibes_lab_tx_5_0$P1_3$0$0 == 0x0093
                    0093    301 _P1_3	=	0x0093
                    0094    302 Fvibes_lab_tx_5_0$P1_4$0$0 == 0x0094
                    0094    303 _P1_4	=	0x0094
                    0095    304 Fvibes_lab_tx_5_0$P1_5$0$0 == 0x0095
                    0095    305 _P1_5	=	0x0095
                    0096    306 Fvibes_lab_tx_5_0$P1_6$0$0 == 0x0096
                    0096    307 _P1_6	=	0x0096
                    0097    308 Fvibes_lab_tx_5_0$P1_7$0$0 == 0x0097
                    0097    309 _P1_7	=	0x0097
                    0098    310 Fvibes_lab_tx_5_0$ENCIF_0$0$0 == 0x0098
                    0098    311 _ENCIF_0	=	0x0098
                    0099    312 Fvibes_lab_tx_5_0$ENCIF_1$0$0 == 0x0099
                    0099    313 _ENCIF_1	=	0x0099
                    009A    314 Fvibes_lab_tx_5_0$_SOCON2$0$0 == 0x009a
                    009A    315 __SOCON2	=	0x009a
                    009B    316 Fvibes_lab_tx_5_0$_SOCON3$0$0 == 0x009b
                    009B    317 __SOCON3	=	0x009b
                    009C    318 Fvibes_lab_tx_5_0$_SOCON4$0$0 == 0x009c
                    009C    319 __SOCON4	=	0x009c
                    009D    320 Fvibes_lab_tx_5_0$_SOCON5$0$0 == 0x009d
                    009D    321 __SOCON5	=	0x009d
                    009E    322 Fvibes_lab_tx_5_0$_SOCON6$0$0 == 0x009e
                    009E    323 __SOCON6	=	0x009e
                    009F    324 Fvibes_lab_tx_5_0$_SOCON7$0$0 == 0x009f
                    009F    325 __SOCON7	=	0x009f
                    00A0    326 Fvibes_lab_tx_5_0$P2_0$0$0 == 0x00a0
                    00A0    327 _P2_0	=	0x00a0
                    00A1    328 Fvibes_lab_tx_5_0$P2_1$0$0 == 0x00a1
                    00A1    329 _P2_1	=	0x00a1
                    00A2    330 Fvibes_lab_tx_5_0$P2_2$0$0 == 0x00a2
                    00A2    331 _P2_2	=	0x00a2
                    00A3    332 Fvibes_lab_tx_5_0$P2_3$0$0 == 0x00a3
                    00A3    333 _P2_3	=	0x00a3
                    00A4    334 Fvibes_lab_tx_5_0$P2_4$0$0 == 0x00a4
                    00A4    335 _P2_4	=	0x00a4
                    00A5    336 Fvibes_lab_tx_5_0$P2_5$0$0 == 0x00a5
                    00A5    337 _P2_5	=	0x00a5
                    00A6    338 Fvibes_lab_tx_5_0$P2_6$0$0 == 0x00a6
                    00A6    339 _P2_6	=	0x00a6
                    00A7    340 Fvibes_lab_tx_5_0$P2_7$0$0 == 0x00a7
                    00A7    341 _P2_7	=	0x00a7
                    00A8    342 Fvibes_lab_tx_5_0$RFTXRXIE$0$0 == 0x00a8
                    00A8    343 _RFTXRXIE	=	0x00a8
                    00A9    344 Fvibes_lab_tx_5_0$ADCIE$0$0 == 0x00a9
                    00A9    345 _ADCIE	=	0x00a9
                    00AA    346 Fvibes_lab_tx_5_0$URX0IE$0$0 == 0x00aa
                    00AA    347 _URX0IE	=	0x00aa
                    00AB    348 Fvibes_lab_tx_5_0$URX1IE$0$0 == 0x00ab
                    00AB    349 _URX1IE	=	0x00ab
                    00AC    350 Fvibes_lab_tx_5_0$ENCIE$0$0 == 0x00ac
                    00AC    351 _ENCIE	=	0x00ac
                    00AD    352 Fvibes_lab_tx_5_0$STIE$0$0 == 0x00ad
                    00AD    353 _STIE	=	0x00ad
                    00AE    354 Fvibes_lab_tx_5_0$_IEN06$0$0 == 0x00ae
                    00AE    355 __IEN06	=	0x00ae
                    00AF    356 Fvibes_lab_tx_5_0$EA$0$0 == 0x00af
                    00AF    357 _EA	=	0x00af
                    00B8    358 Fvibes_lab_tx_5_0$DMAIE$0$0 == 0x00b8
                    00B8    359 _DMAIE	=	0x00b8
                    00B9    360 Fvibes_lab_tx_5_0$T1IE$0$0 == 0x00b9
                    00B9    361 _T1IE	=	0x00b9
                    00BA    362 Fvibes_lab_tx_5_0$T2IE$0$0 == 0x00ba
                    00BA    363 _T2IE	=	0x00ba
                    00BB    364 Fvibes_lab_tx_5_0$T3IE$0$0 == 0x00bb
                    00BB    365 _T3IE	=	0x00bb
                    00BC    366 Fvibes_lab_tx_5_0$T4IE$0$0 == 0x00bc
                    00BC    367 _T4IE	=	0x00bc
                    00BD    368 Fvibes_lab_tx_5_0$P0IE$0$0 == 0x00bd
                    00BD    369 _P0IE	=	0x00bd
                    00BE    370 Fvibes_lab_tx_5_0$_IEN16$0$0 == 0x00be
                    00BE    371 __IEN16	=	0x00be
                    00BF    372 Fvibes_lab_tx_5_0$_IEN17$0$0 == 0x00bf
                    00BF    373 __IEN17	=	0x00bf
                    00C0    374 Fvibes_lab_tx_5_0$DMAIF$0$0 == 0x00c0
                    00C0    375 _DMAIF	=	0x00c0
                    00C1    376 Fvibes_lab_tx_5_0$T1IF$0$0 == 0x00c1
                    00C1    377 _T1IF	=	0x00c1
                    00C2    378 Fvibes_lab_tx_5_0$T2IF$0$0 == 0x00c2
                    00C2    379 _T2IF	=	0x00c2
                    00C3    380 Fvibes_lab_tx_5_0$T3IF$0$0 == 0x00c3
                    00C3    381 _T3IF	=	0x00c3
                    00C4    382 Fvibes_lab_tx_5_0$T4IF$0$0 == 0x00c4
                    00C4    383 _T4IF	=	0x00c4
                    00C5    384 Fvibes_lab_tx_5_0$P0IF$0$0 == 0x00c5
                    00C5    385 _P0IF	=	0x00c5
                    00C6    386 Fvibes_lab_tx_5_0$_IRCON6$0$0 == 0x00c6
                    00C6    387 __IRCON6	=	0x00c6
                    00C7    388 Fvibes_lab_tx_5_0$STIF$0$0 == 0x00c7
                    00C7    389 _STIF	=	0x00c7
                    00D0    390 Fvibes_lab_tx_5_0$P$0$0 == 0x00d0
                    00D0    391 _P	=	0x00d0
                    00D1    392 Fvibes_lab_tx_5_0$F1$0$0 == 0x00d1
                    00D1    393 _F1	=	0x00d1
                    00D2    394 Fvibes_lab_tx_5_0$OV$0$0 == 0x00d2
                    00D2    395 _OV	=	0x00d2
                    00D3    396 Fvibes_lab_tx_5_0$RS0$0$0 == 0x00d3
                    00D3    397 _RS0	=	0x00d3
                    00D4    398 Fvibes_lab_tx_5_0$RS1$0$0 == 0x00d4
                    00D4    399 _RS1	=	0x00d4
                    00D5    400 Fvibes_lab_tx_5_0$F0$0$0 == 0x00d5
                    00D5    401 _F0	=	0x00d5
                    00D6    402 Fvibes_lab_tx_5_0$AC$0$0 == 0x00d6
                    00D6    403 _AC	=	0x00d6
                    00D7    404 Fvibes_lab_tx_5_0$CY$0$0 == 0x00d7
                    00D7    405 _CY	=	0x00d7
                    00D8    406 Fvibes_lab_tx_5_0$T3OVFIF$0$0 == 0x00d8
                    00D8    407 _T3OVFIF	=	0x00d8
                    00D9    408 Fvibes_lab_tx_5_0$T3CH0IF$0$0 == 0x00d9
                    00D9    409 _T3CH0IF	=	0x00d9
                    00DA    410 Fvibes_lab_tx_5_0$T3CH1IF$0$0 == 0x00da
                    00DA    411 _T3CH1IF	=	0x00da
                    00DB    412 Fvibes_lab_tx_5_0$T4OVFIF$0$0 == 0x00db
                    00DB    413 _T4OVFIF	=	0x00db
                    00DC    414 Fvibes_lab_tx_5_0$T4CH0IF$0$0 == 0x00dc
                    00DC    415 _T4CH0IF	=	0x00dc
                    00DD    416 Fvibes_lab_tx_5_0$T4CH1IF$0$0 == 0x00dd
                    00DD    417 _T4CH1IF	=	0x00dd
                    00DE    418 Fvibes_lab_tx_5_0$OVFIM$0$0 == 0x00de
                    00DE    419 _OVFIM	=	0x00de
                    00DF    420 Fvibes_lab_tx_5_0$_TIMIF7$0$0 == 0x00df
                    00DF    421 __TIMIF7	=	0x00df
                    00E0    422 Fvibes_lab_tx_5_0$ACC_0$0$0 == 0x00e0
                    00E0    423 _ACC_0	=	0x00e0
                    00E1    424 Fvibes_lab_tx_5_0$ACC_1$0$0 == 0x00e1
                    00E1    425 _ACC_1	=	0x00e1
                    00E2    426 Fvibes_lab_tx_5_0$ACC_2$0$0 == 0x00e2
                    00E2    427 _ACC_2	=	0x00e2
                    00E3    428 Fvibes_lab_tx_5_0$ACC_3$0$0 == 0x00e3
                    00E3    429 _ACC_3	=	0x00e3
                    00E4    430 Fvibes_lab_tx_5_0$ACC_4$0$0 == 0x00e4
                    00E4    431 _ACC_4	=	0x00e4
                    00E5    432 Fvibes_lab_tx_5_0$ACC_5$0$0 == 0x00e5
                    00E5    433 _ACC_5	=	0x00e5
                    00E6    434 Fvibes_lab_tx_5_0$ACC_6$0$0 == 0x00e6
                    00E6    435 _ACC_6	=	0x00e6
                    00E7    436 Fvibes_lab_tx_5_0$ACC_7$0$0 == 0x00e7
                    00E7    437 _ACC_7	=	0x00e7
                    00E8    438 Fvibes_lab_tx_5_0$P2IF$0$0 == 0x00e8
                    00E8    439 _P2IF	=	0x00e8
                    00E9    440 Fvibes_lab_tx_5_0$UTX0IF$0$0 == 0x00e9
                    00E9    441 _UTX0IF	=	0x00e9
                    00EA    442 Fvibes_lab_tx_5_0$UTX1IF$0$0 == 0x00ea
                    00EA    443 _UTX1IF	=	0x00ea
                    00EB    444 Fvibes_lab_tx_5_0$P1IF$0$0 == 0x00eb
                    00EB    445 _P1IF	=	0x00eb
                    00EC    446 Fvibes_lab_tx_5_0$WDTIF$0$0 == 0x00ec
                    00EC    447 _WDTIF	=	0x00ec
                    00ED    448 Fvibes_lab_tx_5_0$_IRCON25$0$0 == 0x00ed
                    00ED    449 __IRCON25	=	0x00ed
                    00EE    450 Fvibes_lab_tx_5_0$_IRCON26$0$0 == 0x00ee
                    00EE    451 __IRCON26	=	0x00ee
                    00EF    452 Fvibes_lab_tx_5_0$_IRCON27$0$0 == 0x00ef
                    00EF    453 __IRCON27	=	0x00ef
                    00F0    454 Fvibes_lab_tx_5_0$B_0$0$0 == 0x00f0
                    00F0    455 _B_0	=	0x00f0
                    00F1    456 Fvibes_lab_tx_5_0$B_1$0$0 == 0x00f1
                    00F1    457 _B_1	=	0x00f1
                    00F2    458 Fvibes_lab_tx_5_0$B_2$0$0 == 0x00f2
                    00F2    459 _B_2	=	0x00f2
                    00F3    460 Fvibes_lab_tx_5_0$B_3$0$0 == 0x00f3
                    00F3    461 _B_3	=	0x00f3
                    00F4    462 Fvibes_lab_tx_5_0$B_4$0$0 == 0x00f4
                    00F4    463 _B_4	=	0x00f4
                    00F5    464 Fvibes_lab_tx_5_0$B_5$0$0 == 0x00f5
                    00F5    465 _B_5	=	0x00f5
                    00F6    466 Fvibes_lab_tx_5_0$B_6$0$0 == 0x00f6
                    00F6    467 _B_6	=	0x00f6
                    00F7    468 Fvibes_lab_tx_5_0$B_7$0$0 == 0x00f7
                    00F7    469 _B_7	=	0x00f7
                    00F8    470 Fvibes_lab_tx_5_0$U1ACTIVE$0$0 == 0x00f8
                    00F8    471 _U1ACTIVE	=	0x00f8
                    00F9    472 Fvibes_lab_tx_5_0$U1TX_BYTE$0$0 == 0x00f9
                    00F9    473 _U1TX_BYTE	=	0x00f9
                    00FA    474 Fvibes_lab_tx_5_0$U1RX_BYTE$0$0 == 0x00fa
                    00FA    475 _U1RX_BYTE	=	0x00fa
                    00FB    476 Fvibes_lab_tx_5_0$U1ERR$0$0 == 0x00fb
                    00FB    477 _U1ERR	=	0x00fb
                    00FC    478 Fvibes_lab_tx_5_0$U1FE$0$0 == 0x00fc
                    00FC    479 _U1FE	=	0x00fc
                    00FD    480 Fvibes_lab_tx_5_0$U1SLAVE$0$0 == 0x00fd
                    00FD    481 _U1SLAVE	=	0x00fd
                    00FE    482 Fvibes_lab_tx_5_0$U1RE$0$0 == 0x00fe
                    00FE    483 _U1RE	=	0x00fe
                    00FF    484 Fvibes_lab_tx_5_0$U1MODE$0$0 == 0x00ff
                    00FF    485 _U1MODE	=	0x00ff
                            486 ;--------------------------------------------------------
                            487 ; overlayable register banks
                            488 ;--------------------------------------------------------
                            489 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     490 	.ds 8
                            491 	.area REG_BANK_3	(REL,OVR,DATA)
   0018                     492 	.ds 8
                            493 ;--------------------------------------------------------
                            494 ; overlayable bit register bank
                            495 ;--------------------------------------------------------
                            496 	.area BIT_BANK	(REL,OVR,DATA)
   0023                     497 bits:
   0023                     498 	.ds 1
                    8000    499 	b0 = bits[0]
                    8100    500 	b1 = bits[1]
                    8200    501 	b2 = bits[2]
                    8300    502 	b3 = bits[3]
                    8400    503 	b4 = bits[4]
                    8500    504 	b5 = bits[5]
                    8600    505 	b6 = bits[6]
                    8700    506 	b7 = bits[7]
                            507 ;--------------------------------------------------------
                            508 ; internal ram data
                            509 ;--------------------------------------------------------
                            510 	.area DSEG    (DATA)
                    0000    511 Fvibes_lab_tx_5_0$accSample$0$0==.
   0024                     512 _accSample:
   0024                     513 	.ds 2
                    0002    514 Fvibes_lab_tx_5_0$sampleIndex$0$0==.
   0026                     515 _sampleIndex:
   0026                     516 	.ds 1
                    0003    517 Fvibes_lab_tx_5_0$transmissionsReady$0$0==.
   0027                     518 _transmissionsReady:
   0027                     519 	.ds 1
                    0004    520 Fvibes_lab_tx_5_0$operationalTimeStamp$0$0==.
   0028                     521 _operationalTimeStamp:
   0028                     522 	.ds 4
                            523 ;--------------------------------------------------------
                            524 ; overlayable items in internal ram 
                            525 ;--------------------------------------------------------
                            526 	.area OSEG    (OVR,DATA)
                            527 ;--------------------------------------------------------
                            528 ; Stack segment in internal ram 
                            529 ;--------------------------------------------------------
                            530 	.area	SSEG	(DATA)
   0030                     531 __start__stack:
   0030                     532 	.ds	1
                            533 
                            534 ;--------------------------------------------------------
                            535 ; indirectly addressable internal ram data
                            536 ;--------------------------------------------------------
                            537 	.area ISEG    (DATA)
                            538 ;--------------------------------------------------------
                            539 ; absolute internal ram data
                            540 ;--------------------------------------------------------
                            541 	.area IABS    (ABS,DATA)
                            542 	.area IABS    (ABS,DATA)
                            543 ;--------------------------------------------------------
                            544 ; bit data
                            545 ;--------------------------------------------------------
                            546 	.area BSEG    (BIT)
                    0000    547 Fvibes_lab_tx_5_0$isrCounter$0$0==.
   0000                     548 _isrCounter:
   0000                     549 	.ds 1
                    0001    550 Fvibes_lab_tx_5_0$lostSample$0$0==.
   0001                     551 _lostSample:
   0001                     552 	.ds 1
                    0002    553 Fvibes_lab_tx_5_0$initComplete$0$0==.
   0002                     554 _initComplete:
   0002                     555 	.ds 1
                            556 ;--------------------------------------------------------
                            557 ; paged external ram data
                            558 ;--------------------------------------------------------
                            559 	.area PSEG    (PAG,XDATA)
                    0000    560 Fvibes_lab_tx_5_0$packet$0$0==.
   F000                     561 _packet:
   F000                     562 	.ds 2
                            563 ;--------------------------------------------------------
                            564 ; external ram data
                            565 ;--------------------------------------------------------
                            566 	.area XSEG    (XDATA)
                    DF00    567 Fvibes_lab_tx_5_0$SYNC1$0$0 == 0xdf00
                    DF00    568 _SYNC1	=	0xdf00
                    DF01    569 Fvibes_lab_tx_5_0$SYNC0$0$0 == 0xdf01
                    DF01    570 _SYNC0	=	0xdf01
                    DF02    571 Fvibes_lab_tx_5_0$PKTLEN$0$0 == 0xdf02
                    DF02    572 _PKTLEN	=	0xdf02
                    DF03    573 Fvibes_lab_tx_5_0$PKTCTRL1$0$0 == 0xdf03
                    DF03    574 _PKTCTRL1	=	0xdf03
                    DF04    575 Fvibes_lab_tx_5_0$PKTCTRL0$0$0 == 0xdf04
                    DF04    576 _PKTCTRL0	=	0xdf04
                    DF05    577 Fvibes_lab_tx_5_0$ADDR$0$0 == 0xdf05
                    DF05    578 _ADDR	=	0xdf05
                    DF06    579 Fvibes_lab_tx_5_0$CHANNR$0$0 == 0xdf06
                    DF06    580 _CHANNR	=	0xdf06
                    DF07    581 Fvibes_lab_tx_5_0$FSCTRL1$0$0 == 0xdf07
                    DF07    582 _FSCTRL1	=	0xdf07
                    DF08    583 Fvibes_lab_tx_5_0$FSCTRL0$0$0 == 0xdf08
                    DF08    584 _FSCTRL0	=	0xdf08
                    DF09    585 Fvibes_lab_tx_5_0$FREQ2$0$0 == 0xdf09
                    DF09    586 _FREQ2	=	0xdf09
                    DF0A    587 Fvibes_lab_tx_5_0$FREQ1$0$0 == 0xdf0a
                    DF0A    588 _FREQ1	=	0xdf0a
                    DF0B    589 Fvibes_lab_tx_5_0$FREQ0$0$0 == 0xdf0b
                    DF0B    590 _FREQ0	=	0xdf0b
                    DF0C    591 Fvibes_lab_tx_5_0$MDMCFG4$0$0 == 0xdf0c
                    DF0C    592 _MDMCFG4	=	0xdf0c
                    DF0D    593 Fvibes_lab_tx_5_0$MDMCFG3$0$0 == 0xdf0d
                    DF0D    594 _MDMCFG3	=	0xdf0d
                    DF0E    595 Fvibes_lab_tx_5_0$MDMCFG2$0$0 == 0xdf0e
                    DF0E    596 _MDMCFG2	=	0xdf0e
                    DF0F    597 Fvibes_lab_tx_5_0$MDMCFG1$0$0 == 0xdf0f
                    DF0F    598 _MDMCFG1	=	0xdf0f
                    DF10    599 Fvibes_lab_tx_5_0$MDMCFG0$0$0 == 0xdf10
                    DF10    600 _MDMCFG0	=	0xdf10
                    DF11    601 Fvibes_lab_tx_5_0$DEVIATN$0$0 == 0xdf11
                    DF11    602 _DEVIATN	=	0xdf11
                    DF12    603 Fvibes_lab_tx_5_0$MCSM2$0$0 == 0xdf12
                    DF12    604 _MCSM2	=	0xdf12
                    DF13    605 Fvibes_lab_tx_5_0$MCSM1$0$0 == 0xdf13
                    DF13    606 _MCSM1	=	0xdf13
                    DF14    607 Fvibes_lab_tx_5_0$MCSM0$0$0 == 0xdf14
                    DF14    608 _MCSM0	=	0xdf14
                    DF15    609 Fvibes_lab_tx_5_0$FOCCFG$0$0 == 0xdf15
                    DF15    610 _FOCCFG	=	0xdf15
                    DF16    611 Fvibes_lab_tx_5_0$BSCFG$0$0 == 0xdf16
                    DF16    612 _BSCFG	=	0xdf16
                    DF17    613 Fvibes_lab_tx_5_0$AGCCTRL2$0$0 == 0xdf17
                    DF17    614 _AGCCTRL2	=	0xdf17
                    DF18    615 Fvibes_lab_tx_5_0$AGCCTRL1$0$0 == 0xdf18
                    DF18    616 _AGCCTRL1	=	0xdf18
                    DF19    617 Fvibes_lab_tx_5_0$AGCCTRL0$0$0 == 0xdf19
                    DF19    618 _AGCCTRL0	=	0xdf19
                    DF1A    619 Fvibes_lab_tx_5_0$FREND1$0$0 == 0xdf1a
                    DF1A    620 _FREND1	=	0xdf1a
                    DF1B    621 Fvibes_lab_tx_5_0$FREND0$0$0 == 0xdf1b
                    DF1B    622 _FREND0	=	0xdf1b
                    DF1C    623 Fvibes_lab_tx_5_0$FSCAL3$0$0 == 0xdf1c
                    DF1C    624 _FSCAL3	=	0xdf1c
                    DF1D    625 Fvibes_lab_tx_5_0$FSCAL2$0$0 == 0xdf1d
                    DF1D    626 _FSCAL2	=	0xdf1d
                    DF1E    627 Fvibes_lab_tx_5_0$FSCAL1$0$0 == 0xdf1e
                    DF1E    628 _FSCAL1	=	0xdf1e
                    DF1F    629 Fvibes_lab_tx_5_0$FSCAL0$0$0 == 0xdf1f
                    DF1F    630 _FSCAL0	=	0xdf1f
                    DF23    631 Fvibes_lab_tx_5_0$TEST2$0$0 == 0xdf23
                    DF23    632 _TEST2	=	0xdf23
                    DF24    633 Fvibes_lab_tx_5_0$TEST1$0$0 == 0xdf24
                    DF24    634 _TEST1	=	0xdf24
                    DF25    635 Fvibes_lab_tx_5_0$TEST0$0$0 == 0xdf25
                    DF25    636 _TEST0	=	0xdf25
                    DF2E    637 Fvibes_lab_tx_5_0$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    638 _PA_TABLE0	=	0xdf2e
                    DF2F    639 Fvibes_lab_tx_5_0$IOCFG2$0$0 == 0xdf2f
                    DF2F    640 _IOCFG2	=	0xdf2f
                    DF30    641 Fvibes_lab_tx_5_0$IOCFG1$0$0 == 0xdf30
                    DF30    642 _IOCFG1	=	0xdf30
                    DF31    643 Fvibes_lab_tx_5_0$IOCFG0$0$0 == 0xdf31
                    DF31    644 _IOCFG0	=	0xdf31
                    DF36    645 Fvibes_lab_tx_5_0$PARTNUM$0$0 == 0xdf36
                    DF36    646 _PARTNUM	=	0xdf36
                    DF37    647 Fvibes_lab_tx_5_0$VERSION$0$0 == 0xdf37
                    DF37    648 _VERSION	=	0xdf37
                    DF38    649 Fvibes_lab_tx_5_0$FREQEST$0$0 == 0xdf38
                    DF38    650 _FREQEST	=	0xdf38
                    DF39    651 Fvibes_lab_tx_5_0$LQI$0$0 == 0xdf39
                    DF39    652 _LQI	=	0xdf39
                    DF3A    653 Fvibes_lab_tx_5_0$RSSI$0$0 == 0xdf3a
                    DF3A    654 _RSSI	=	0xdf3a
                    DF3B    655 Fvibes_lab_tx_5_0$MARCSTATE$0$0 == 0xdf3b
                    DF3B    656 _MARCSTATE	=	0xdf3b
                    DF3C    657 Fvibes_lab_tx_5_0$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    658 _PKTSTATUS	=	0xdf3c
                    DF3D    659 Fvibes_lab_tx_5_0$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    660 _VCO_VC_DAC	=	0xdf3d
                    DF40    661 Fvibes_lab_tx_5_0$I2SCFG0$0$0 == 0xdf40
                    DF40    662 _I2SCFG0	=	0xdf40
                    DF41    663 Fvibes_lab_tx_5_0$I2SCFG1$0$0 == 0xdf41
                    DF41    664 _I2SCFG1	=	0xdf41
                    DF42    665 Fvibes_lab_tx_5_0$I2SDATL$0$0 == 0xdf42
                    DF42    666 _I2SDATL	=	0xdf42
                    DF43    667 Fvibes_lab_tx_5_0$I2SDATH$0$0 == 0xdf43
                    DF43    668 _I2SDATH	=	0xdf43
                    DF44    669 Fvibes_lab_tx_5_0$I2SWCNT$0$0 == 0xdf44
                    DF44    670 _I2SWCNT	=	0xdf44
                    DF45    671 Fvibes_lab_tx_5_0$I2SSTAT$0$0 == 0xdf45
                    DF45    672 _I2SSTAT	=	0xdf45
                    DF46    673 Fvibes_lab_tx_5_0$I2SCLKF0$0$0 == 0xdf46
                    DF46    674 _I2SCLKF0	=	0xdf46
                    DF47    675 Fvibes_lab_tx_5_0$I2SCLKF1$0$0 == 0xdf47
                    DF47    676 _I2SCLKF1	=	0xdf47
                    DF48    677 Fvibes_lab_tx_5_0$I2SCLKF2$0$0 == 0xdf48
                    DF48    678 _I2SCLKF2	=	0xdf48
                    DE00    679 Fvibes_lab_tx_5_0$USBADDR$0$0 == 0xde00
                    DE00    680 _USBADDR	=	0xde00
                    DE01    681 Fvibes_lab_tx_5_0$USBPOW$0$0 == 0xde01
                    DE01    682 _USBPOW	=	0xde01
                    DE02    683 Fvibes_lab_tx_5_0$USBIIF$0$0 == 0xde02
                    DE02    684 _USBIIF	=	0xde02
                    DE04    685 Fvibes_lab_tx_5_0$USBOIF$0$0 == 0xde04
                    DE04    686 _USBOIF	=	0xde04
                    DE06    687 Fvibes_lab_tx_5_0$USBCIF$0$0 == 0xde06
                    DE06    688 _USBCIF	=	0xde06
                    DE07    689 Fvibes_lab_tx_5_0$USBIIE$0$0 == 0xde07
                    DE07    690 _USBIIE	=	0xde07
                    DE09    691 Fvibes_lab_tx_5_0$USBOIE$0$0 == 0xde09
                    DE09    692 _USBOIE	=	0xde09
                    DE0B    693 Fvibes_lab_tx_5_0$USBCIE$0$0 == 0xde0b
                    DE0B    694 _USBCIE	=	0xde0b
                    DE0C    695 Fvibes_lab_tx_5_0$USBFRML$0$0 == 0xde0c
                    DE0C    696 _USBFRML	=	0xde0c
                    DE0D    697 Fvibes_lab_tx_5_0$USBFRMH$0$0 == 0xde0d
                    DE0D    698 _USBFRMH	=	0xde0d
                    DE0E    699 Fvibes_lab_tx_5_0$USBINDEX$0$0 == 0xde0e
                    DE0E    700 _USBINDEX	=	0xde0e
                    DE10    701 Fvibes_lab_tx_5_0$USBMAXI$0$0 == 0xde10
                    DE10    702 _USBMAXI	=	0xde10
                    DE11    703 Fvibes_lab_tx_5_0$USBCSIL$0$0 == 0xde11
                    DE11    704 _USBCSIL	=	0xde11
                    DE12    705 Fvibes_lab_tx_5_0$USBCSIH$0$0 == 0xde12
                    DE12    706 _USBCSIH	=	0xde12
                    DE13    707 Fvibes_lab_tx_5_0$USBMAXO$0$0 == 0xde13
                    DE13    708 _USBMAXO	=	0xde13
                    DE14    709 Fvibes_lab_tx_5_0$USBCSOL$0$0 == 0xde14
                    DE14    710 _USBCSOL	=	0xde14
                    DE15    711 Fvibes_lab_tx_5_0$USBCSOH$0$0 == 0xde15
                    DE15    712 _USBCSOH	=	0xde15
                    DE16    713 Fvibes_lab_tx_5_0$USBCNTL$0$0 == 0xde16
                    DE16    714 _USBCNTL	=	0xde16
                    DE17    715 Fvibes_lab_tx_5_0$USBCNTH$0$0 == 0xde17
                    DE17    716 _USBCNTH	=	0xde17
                    DE20    717 Fvibes_lab_tx_5_0$USBF0$0$0 == 0xde20
                    DE20    718 _USBF0	=	0xde20
                    DE22    719 Fvibes_lab_tx_5_0$USBF1$0$0 == 0xde22
                    DE22    720 _USBF1	=	0xde22
                    DE24    721 Fvibes_lab_tx_5_0$USBF2$0$0 == 0xde24
                    DE24    722 _USBF2	=	0xde24
                    DE26    723 Fvibes_lab_tx_5_0$USBF3$0$0 == 0xde26
                    DE26    724 _USBF3	=	0xde26
                    DE28    725 Fvibes_lab_tx_5_0$USBF4$0$0 == 0xde28
                    DE28    726 _USBF4	=	0xde28
                    DE2A    727 Fvibes_lab_tx_5_0$USBF5$0$0 == 0xde2a
                    DE2A    728 _USBF5	=	0xde2a
                            729 ;--------------------------------------------------------
                            730 ; absolute external ram data
                            731 ;--------------------------------------------------------
                            732 	.area XABS    (ABS,XDATA)
                            733 ;--------------------------------------------------------
                            734 ; external initialized ram data
                            735 ;--------------------------------------------------------
                            736 	.area XISEG   (XDATA)
                            737 	.area HOME    (CODE)
                            738 	.area GSINIT0 (CODE)
                            739 	.area GSINIT1 (CODE)
                            740 	.area GSINIT2 (CODE)
                            741 	.area GSINIT3 (CODE)
                            742 	.area GSINIT4 (CODE)
                            743 	.area GSINIT5 (CODE)
                            744 	.area GSINIT  (CODE)
                            745 	.area GSFINAL (CODE)
                            746 	.area CSEG    (CODE)
                            747 ;--------------------------------------------------------
                            748 ; interrupt vector 
                            749 ;--------------------------------------------------------
                            750 	.area HOME    (CODE)
   0400                     751 __interrupt_vect:
   0400 02 04 8D            752 	ljmp	__sdcc_gsinit_startup
   0403 32                  753 	reti
   0404                     754 	.ds	7
   040B 32                  755 	reti
   040C                     756 	.ds	7
   0413 32                  757 	reti
   0414                     758 	.ds	7
   041B 32                  759 	reti
   041C                     760 	.ds	7
   0423 32                  761 	reti
   0424                     762 	.ds	7
   042B 32                  763 	reti
   042C                     764 	.ds	7
   0433 32                  765 	reti
   0434                     766 	.ds	7
   043B 32                  767 	reti
   043C                     768 	.ds	7
   0443 32                  769 	reti
   0444                     770 	.ds	7
   044B 32                  771 	reti
   044C                     772 	.ds	7
   0453 32                  773 	reti
   0454                     774 	.ds	7
   045B 02 05 1D            775 	ljmp	_ISR_T3
   045E                     776 	.ds	5
   0463 02 0C CA            777 	ljmp	_ISR_T4
   0466                     778 	.ds	5
   046B 32                  779 	reti
   046C                     780 	.ds	7
   0473 32                  781 	reti
   0474                     782 	.ds	7
   047B 32                  783 	reti
   047C                     784 	.ds	7
   0483 02 0A 7E            785 	ljmp	_ISR_RF
                            786 ;--------------------------------------------------------
                            787 ; global & static initialisations
                            788 ;--------------------------------------------------------
                            789 	.area HOME    (CODE)
                            790 	.area GSINIT  (CODE)
                            791 	.area GSFINAL (CODE)
                            792 	.area GSINIT  (CODE)
                            793 	.globl __sdcc_gsinit_startup
                            794 	.globl __sdcc_program_startup
                            795 	.globl __start__stack
                            796 	.globl __mcs51_genXINIT
                            797 	.globl __mcs51_genXRAMCLEAR
                            798 	.globl __mcs51_genRAMCLEAR
                            799 	.area GSFINAL (CODE)
   051A 02 04 86            800 	ljmp	__sdcc_program_startup
                            801 ;--------------------------------------------------------
                            802 ; Home
                            803 ;--------------------------------------------------------
                            804 	.area HOME    (CODE)
                            805 	.area HOME    (CODE)
   0486                     806 __sdcc_program_startup:
   0486 12 06 A1            807 	lcall	_main
                            808 ;	return from main will lock up
   0489 80 FE               809 	sjmp .
                            810 ;--------------------------------------------------------
                            811 ; code
                            812 ;--------------------------------------------------------
                            813 	.area CSEG    (CODE)
                            814 ;------------------------------------------------------------
                            815 ;Allocation info for local variables in function 'ISR_T3'
                            816 ;------------------------------------------------------------
                            817 ;------------------------------------------------------------
                    0000    818 	G$ISR_T3$0$0 ==.
                    0000    819 	C$vibes_lab_tx_5.0.c$323$0$0 ==.
                            820 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:323: */ISR(T3, 3)
                            821 ;	-----------------------------------------
                            822 ;	 function ISR_T3
                            823 ;	-----------------------------------------
   051D                     824 _ISR_T3:
                    001A    825 	ar2 = 0x1a
                    001B    826 	ar3 = 0x1b
                    001C    827 	ar4 = 0x1c
                    001D    828 	ar5 = 0x1d
                    001E    829 	ar6 = 0x1e
                    001F    830 	ar7 = 0x1f
                    0018    831 	ar0 = 0x18
                    0019    832 	ar1 = 0x19
   051D C0 23               833 	push	bits
   051F C0 E0               834 	push	acc
   0521 C0 F0               835 	push	b
   0523 C0 82               836 	push	dpl
   0525 C0 83               837 	push	dph
   0527 C0 02               838 	push	(0+2)
   0529 C0 03               839 	push	(0+3)
   052B C0 04               840 	push	(0+4)
   052D C0 05               841 	push	(0+5)
   052F C0 06               842 	push	(0+6)
   0531 C0 07               843 	push	(0+7)
   0533 C0 00               844 	push	(0+0)
   0535 C0 01               845 	push	(0+1)
   0537 C0 D0               846 	push	psw
   0539 75 D0 18            847 	mov	psw,#0x18
                    001F    848 	C$vibes_lab_tx_5.0.c$327$1$1 ==.
                            849 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:327: T3IE = 0;
   053C C2 BB               850 	clr	_T3IE
                    0021    851 	C$vibes_lab_tx_5.0.c$330$1$1 ==.
                            852 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:330: if(initComplete)
   053E 20 02 03            853 	jb	_initComplete,00117$
   0541 02 06 30            854 	ljmp	00110$
   0544                     855 00117$:
                    0027    856 	C$vibes_lab_tx_5.0.c$334$2$2 ==.
                            857 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:334: accSample = adcRead(INPUT_CHANNEL | ADC_BITS_10);
   0544 90 1A 9A            858 	mov	dptr,#_INPUT_CHANNEL
   0547 E4                  859 	clr	a
   0548 93                  860 	movc	a,@a+dptr
   0549 FA                  861 	mov	r2,a
   054A 74 10               862 	mov	a,#0x10
   054C 4A                  863 	orl	a,r2
   054D F5 82               864 	mov	dpl,a
   054F 75 D0 00            865 	mov	psw,#0x00
   0552 12 0D 46            866 	lcall	_adcRead
   0555 75 D0 18            867 	mov	psw,#0x18
   0558 85 82 24            868 	mov	_accSample,dpl
   055B 85 83 25            869 	mov	(_accSample + 1),dph
                    0041    870 	C$vibes_lab_tx_5.0.c$339$2$2 ==.
                            871 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:339: accSample <<= 1;
   055E E5 25               872 	mov	a,(_accSample + 1)
   0560 C5 24               873 	xch	a,_accSample
   0562 25 E0               874 	add	a,acc
   0564 C5 24               875 	xch	a,_accSample
   0566 33                  876 	rlc	a
   0567 F5 25               877 	mov	(_accSample + 1),a
                    004C    878 	C$vibes_lab_tx_5.0.c$342$2$2 ==.
                            879 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:342: if(packet)
   0569 78 00               880 	mov	r0,#_packet
   056B E2                  881 	movx	a,@r0
   056C F5 F0               882 	mov	b,a
   056E 08                  883 	inc	r0
   056F E2                  884 	movx	a,@r0
   0570 45 F0               885 	orl	a,b
   0572 70 03               886 	jnz	00118$
   0574 02 06 2E            887 	ljmp	00107$
   0577                     888 00118$:
                    005A    889 	C$vibes_lab_tx_5.0.c$345$3$3 ==.
                            890 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:345: if(isrCounter)
   0577 30 00 3D            891 	jnb	_isrCounter,00102$
                    005D    892 	C$vibes_lab_tx_5.0.c$347$4$4 ==.
                            893 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:347: packet[++sampleIndex] = (uint8) (accSample & 0xFF);
   057A 05 26               894 	inc	_sampleIndex
   057C 78 00               895 	mov	r0,#_packet
   057E E2                  896 	movx	a,@r0
   057F 25 26               897 	add	a,_sampleIndex
   0581 F5 82               898 	mov	dpl,a
   0583 08                  899 	inc	r0
   0584 E2                  900 	movx	a,@r0
   0585 34 00               901 	addc	a,#0x00
   0587 F5 83               902 	mov	dph,a
   0589 AA 24               903 	mov	r2,_accSample
   058B E5 25               904 	mov	a,(_accSample + 1)
   058D EA                  905 	mov	a,r2
   058E F0                  906 	movx	@dptr,a
                    0072    907 	C$vibes_lab_tx_5.0.c$348$4$4 ==.
                            908 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:348: packet[++sampleIndex] = (uint8) ((accSample & 0xF00) >> 4);
   058F 05 26               909 	inc	_sampleIndex
   0591 78 00               910 	mov	r0,#_packet
   0593 E2                  911 	movx	a,@r0
   0594 25 26               912 	add	a,_sampleIndex
   0596 F5 82               913 	mov	dpl,a
   0598 08                  914 	inc	r0
   0599 E2                  915 	movx	a,@r0
   059A 34 00               916 	addc	a,#0x00
   059C F5 83               917 	mov	dph,a
   059E E5 24               918 	mov	a,_accSample
   05A0 7A 00               919 	mov	r2,#0x00
   05A2 74 0F               920 	mov	a,#0x0F
   05A4 55 25               921 	anl	a,(_accSample + 1)
   05A6 C4                  922 	swap	a
   05A7 CA                  923 	xch	a,r2
   05A8 C4                  924 	swap	a
   05A9 54 0F               925 	anl	a,#0x0f
   05AB 6A                  926 	xrl	a,r2
   05AC CA                  927 	xch	a,r2
   05AD 54 0F               928 	anl	a,#0x0f
   05AF CA                  929 	xch	a,r2
   05B0 6A                  930 	xrl	a,r2
   05B1 CA                  931 	xch	a,r2
   05B2 FB                  932 	mov	r3,a
   05B3 EA                  933 	mov	a,r2
   05B4 F0                  934 	movx	@dptr,a
   05B5 80 42               935 	sjmp	00103$
   05B7                     936 00102$:
                    009A    937 	C$vibes_lab_tx_5.0.c$352$4$5 ==.
                            938 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:352: packet[sampleIndex] |= (uint8) ((accSample & 0xF00) >> 8);
   05B7 78 00               939 	mov	r0,#_packet
   05B9 E2                  940 	movx	a,@r0
   05BA 25 26               941 	add	a,_sampleIndex
   05BC FA                  942 	mov	r2,a
   05BD 08                  943 	inc	r0
   05BE E2                  944 	movx	a,@r0
   05BF 34 00               945 	addc	a,#0x00
   05C1 FB                  946 	mov	r3,a
   05C2 78 00               947 	mov	r0,#_packet
   05C4 E2                  948 	movx	a,@r0
   05C5 25 26               949 	add	a,_sampleIndex
   05C7 F5 82               950 	mov	dpl,a
   05C9 08                  951 	inc	r0
   05CA E2                  952 	movx	a,@r0
   05CB 34 00               953 	addc	a,#0x00
   05CD F5 83               954 	mov	dph,a
   05CF E0                  955 	movx	a,@dptr
   05D0 FC                  956 	mov	r4,a
   05D1 E5 24               957 	mov	a,_accSample
   05D3 74 0F               958 	mov	a,#0x0F
   05D5 55 25               959 	anl	a,(_accSample + 1)
   05D7 FE                  960 	mov	r6,a
   05D8 FD                  961 	mov	r5,a
   05D9 ED                  962 	mov	a,r5
   05DA 42 1C               963 	orl	ar4,a
   05DC 8A 82               964 	mov	dpl,r2
   05DE 8B 83               965 	mov	dph,r3
   05E0 EC                  966 	mov	a,r4
   05E1 F0                  967 	movx	@dptr,a
                    00C5    968 	C$vibes_lab_tx_5.0.c$353$4$5 ==.
                            969 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:353: packet[++sampleIndex] = (uint8) (accSample & 0xFF);
   05E2 05 26               970 	inc	_sampleIndex
   05E4 78 00               971 	mov	r0,#_packet
   05E6 E2                  972 	movx	a,@r0
   05E7 25 26               973 	add	a,_sampleIndex
   05E9 F5 82               974 	mov	dpl,a
   05EB 08                  975 	inc	r0
   05EC E2                  976 	movx	a,@r0
   05ED 34 00               977 	addc	a,#0x00
   05EF F5 83               978 	mov	dph,a
   05F1 AA 24               979 	mov	r2,_accSample
   05F3 E5 25               980 	mov	a,(_accSample + 1)
   05F5 7B 00               981 	mov	r3,#0x00
   05F7 EA                  982 	mov	a,r2
   05F8 F0                  983 	movx	@dptr,a
   05F9                     984 00103$:
                    00DC    985 	C$vibes_lab_tx_5.0.c$357$3$3 ==.
                            986 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:357: isrCounter ^= 1;
   05F9 B2 00               987 	cpl	_isrCounter
                    00DE    988 	C$vibes_lab_tx_5.0.c$360$3$3 ==.
                            989 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:360: if(sampleIndex == RADIO_PAYLOAD_SIZE)
   05FB 74 96               990 	mov	a,#0x96
   05FD B5 26 30            991 	cjne	a,_sampleIndex,00110$
                    00E3    992 	C$vibes_lab_tx_5.0.c$363$4$6 ==.
                            993 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:363: packet[0] = RADIO_PAYLOAD_SIZE;
   0600 78 00               994 	mov	r0,#_packet
   0602 E2                  995 	movx	a,@r0
   0603 F5 82               996 	mov	dpl,a
   0605 08                  997 	inc	r0
   0606 E2                  998 	movx	a,@r0
   0607 F5 83               999 	mov	dph,a
   0609 74 96              1000 	mov	a,#0x96
   060B F0                 1001 	movx	@dptr,a
                    00EF   1002 	C$vibes_lab_tx_5.0.c$366$4$6 ==.
                           1003 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:366: radioTxDoneWithPacket();
   060C 75 D0 00           1004 	mov	psw,#0x00
   060F 12 08 F0           1005 	lcall	_radioTxDoneWithPacket
                    00F5   1006 	C$vibes_lab_tx_5.0.c$367$4$6 ==.
                           1007 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:367: packet = radioTxCurrentPacket();
   0612 75 D0 00           1008 	mov	psw,#0x00
   0615 12 08 29           1009 	lcall	_radioTxCurrentPacket
   0618 75 D0 18           1010 	mov	psw,#0x18
   061B E5 82              1011 	mov	a,dpl
   061D 85 83 F0           1012 	mov	b,dph
   0620 78 00              1013 	mov	r0,#_packet
   0622 F2                 1014 	movx	@r0,a
   0623 08                 1015 	inc	r0
   0624 E5 F0              1016 	mov	a,b
   0626 F2                 1017 	movx	@r0,a
                    010A   1018 	C$vibes_lab_tx_5.0.c$368$4$6 ==.
                           1019 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:368: sampleIndex = 0;
   0627 75 26 00           1020 	mov	_sampleIndex,#0x00
                    010D   1021 	C$vibes_lab_tx_5.0.c$371$4$6 ==.
                           1022 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:371: ++transmissionsReady;
   062A 05 27              1023 	inc	_transmissionsReady
   062C 80 02              1024 	sjmp	00110$
   062E                    1025 00107$:
                    0111   1026 	C$vibes_lab_tx_5.0.c$378$3$7 ==.
                           1027 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:378: lostSample = TRUE;
   062E D2 01              1028 	setb	_lostSample
   0630                    1029 00110$:
                    0113   1030 	C$vibes_lab_tx_5.0.c$383$1$1 ==.
                           1031 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:383: T3IE = 1;
   0630 D2 BB              1032 	setb	_T3IE
   0632 D0 D0              1033 	pop	psw
   0634 D0 01              1034 	pop	(0+1)
   0636 D0 00              1035 	pop	(0+0)
   0638 D0 07              1036 	pop	(0+7)
   063A D0 06              1037 	pop	(0+6)
   063C D0 05              1038 	pop	(0+5)
   063E D0 04              1039 	pop	(0+4)
   0640 D0 03              1040 	pop	(0+3)
   0642 D0 02              1041 	pop	(0+2)
   0644 D0 83              1042 	pop	dph
   0646 D0 82              1043 	pop	dpl
   0648 D0 F0              1044 	pop	b
   064A D0 E0              1045 	pop	acc
   064C D0 23              1046 	pop	bits
                    0131   1047 	C$vibes_lab_tx_5.0.c$384$1$1 ==.
                    0131   1048 	XG$ISR_T3$0$0 ==.
   064E 32                 1049 	reti
                           1050 ;------------------------------------------------------------
                           1051 ;Allocation info for local variables in function 'updateLeds'
                           1052 ;------------------------------------------------------------
                           1053 ;------------------------------------------------------------
                    0132   1054 	Fvibes_lab_tx_5_0$updateLeds$0$0 ==.
                    0132   1055 	C$vibes_lab_tx_5.0.c$398$1$1 ==.
                           1056 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:398: static void updateLeds()
                           1057 ;	-----------------------------------------
                           1058 ;	 function updateLeds
                           1059 ;	-----------------------------------------
   064F                    1060 _updateLeds:
                    0002   1061 	ar2 = 0x02
                    0003   1062 	ar3 = 0x03
                    0004   1063 	ar4 = 0x04
                    0005   1064 	ar5 = 0x05
                    0006   1065 	ar6 = 0x06
                    0007   1066 	ar7 = 0x07
                    0000   1067 	ar0 = 0x00
                    0001   1068 	ar1 = 0x01
                    0132   1069 	C$vibes_lab_tx_5.0.c$400$1$1 ==.
                           1070 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:400: usbShowStatusWithGreenLed(); // USB connected
   064F 12 17 27           1071 	lcall	_usbShowStatusWithGreenLed
                    0135   1072 	C$vibes_lab_tx_5.0.c$401$2$2 ==.
                           1073 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:401: LED_YELLOW(vinPowerPresent());
   0652 12 0E 3E           1074 	lcall	_vinPowerPresent
   0655 50 05              1075 	jnc	00107$
   0657 43 FF 04           1076 	orl	_P2DIR,#0x04
   065A 80 03              1077 	sjmp	00108$
   065C                    1078 00107$:
   065C 53 FF FB           1079 	anl	_P2DIR,#0xFB
   065F                    1080 00108$:
                    0142   1081 	C$vibes_lab_tx_5.0.c$405$1$1 ==.
                           1082 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:405: if((getMs() - operationalTimeStamp > 500) && sendReceiveComplete
   065F 12 0C A9           1083 	lcall	_getMs
   0662 AA 82              1084 	mov	r2,dpl
   0664 AB 83              1085 	mov	r3,dph
   0666 AC F0              1086 	mov	r4,b
   0668 FD                 1087 	mov	r5,a
   0669 EA                 1088 	mov	a,r2
   066A C3                 1089 	clr	c
   066B 95 28              1090 	subb	a,_operationalTimeStamp
   066D FA                 1091 	mov	r2,a
   066E EB                 1092 	mov	a,r3
   066F 95 29              1093 	subb	a,(_operationalTimeStamp + 1)
   0671 FB                 1094 	mov	r3,a
   0672 EC                 1095 	mov	a,r4
   0673 95 2A              1096 	subb	a,(_operationalTimeStamp + 2)
   0675 FC                 1097 	mov	r4,a
   0676 ED                 1098 	mov	a,r5
   0677 95 2B              1099 	subb	a,(_operationalTimeStamp + 3)
   0679 FD                 1100 	mov	r5,a
   067A C3                 1101 	clr	c
   067B 74 F4              1102 	mov	a,#0xF4
   067D 9A                 1103 	subb	a,r2
   067E 74 01              1104 	mov	a,#0x01
   0680 9B                 1105 	subb	a,r3
   0681 E4                 1106 	clr	a
   0682 9C                 1107 	subb	a,r4
   0683 E4                 1108 	clr	a
   0684 9D                 1109 	subb	a,r5
   0685 50 19              1110 	jnc	00105$
   0687 30 04 16           1111 	jnb	_sendReceiveComplete,00105$
                    016D   1112 	C$vibes_lab_tx_5.0.c$406$1$1 ==.
                           1113 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:406: && !lostSample)
   068A 20 01 13           1114 	jb	_lostSample,00105$
                    0170   1115 	C$vibes_lab_tx_5.0.c$409$3$4 ==.
                           1116 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:409: LED_RED_TOGGLE();
   068D 63 FF 02           1117 	xrl	_P2DIR,#0x02
                    0173   1118 	C$vibes_lab_tx_5.0.c$412$2$3 ==.
                           1119 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:412: sendReceiveComplete = FALSE;
   0690 C2 04              1120 	clr	_sendReceiveComplete
                    0175   1121 	C$vibes_lab_tx_5.0.c$413$2$3 ==.
                           1122 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:413: operationalTimeStamp = getMs();
   0692 12 0C A9           1123 	lcall	_getMs
   0695 85 82 28           1124 	mov	_operationalTimeStamp,dpl
   0698 85 83 29           1125 	mov	(_operationalTimeStamp + 1),dph
   069B 85 F0 2A           1126 	mov	(_operationalTimeStamp + 2),b
   069E F5 2B              1127 	mov	(_operationalTimeStamp + 3),a
   06A0                    1128 00105$:
                    0183   1129 	C$vibes_lab_tx_5.0.c$415$2$1 ==.
                    0183   1130 	XFvibes_lab_tx_5_0$updateLeds$0$0 ==.
   06A0 22                 1131 	ret
                           1132 ;------------------------------------------------------------
                           1133 ;Allocation info for local variables in function 'main'
                           1134 ;------------------------------------------------------------
                           1135 ;------------------------------------------------------------
                    0184   1136 	G$main$0$0 ==.
                    0184   1137 	C$vibes_lab_tx_5.0.c$437$2$1 ==.
                           1138 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:437: void main()
                           1139 ;	-----------------------------------------
                           1140 ;	 function main
                           1141 ;	-----------------------------------------
   06A1                    1142 _main:
                    0184   1143 	C$vibes_lab_tx_5.0.c$440$1$1 ==.
                           1144 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:440: initComplete = FALSE;
   06A1 C2 02              1145 	clr	_initComplete
                    0186   1146 	C$vibes_lab_tx_5.0.c$443$1$1 ==.
                           1147 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:443: systemInit();
   06A3 12 0D 8C           1148 	lcall	_systemInit
                    0189   1149 	C$vibes_lab_tx_5.0.c$444$1$1 ==.
                           1150 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:444: usbInit();
   06A6 12 10 F3           1151 	lcall	_usbInit
                    018C   1152 	C$vibes_lab_tx_5.0.c$446$1$1 ==.
                           1153 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:446: radioInit(TRANSMITTER);
   06A9 D2 0B              1154 	setb	_radioInit_PARM_1
   06AB 12 07 10           1155 	lcall	_radioInit
                    0191   1156 	C$vibes_lab_tx_5.0.c$447$1$1 ==.
                           1157 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:447: isrTimerInit();
   06AE 12 0D 2D           1158 	lcall	_isrTimerInit
                    0194   1159 	C$vibes_lab_tx_5.0.c$450$1$1 ==.
                           1160 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:450: setPort0PullType(LOW);
   06B1 C2 F0              1161 	clr	b[0]
   06B3 85 F0 23           1162 	mov	bits,b
   06B6 12 1A 75           1163 	lcall	_setPort0PullType
                    019C   1164 	C$vibes_lab_tx_5.0.c$451$1$1 ==.
                           1165 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:451: setDigitalInput(INPUT_CHANNEL, PULLED);
   06B9 90 1A 9A           1166 	mov	dptr,#_INPUT_CHANNEL
   06BC E4                 1167 	clr	a
   06BD 93                 1168 	movc	a,@a+dptr
   06BE FA                 1169 	mov	r2,a
   06BF D2 F0              1170 	setb	b[0]
   06C1 85 F0 23           1171 	mov	bits,b
   06C4 8A 82              1172 	mov	dpl,r2
   06C6 12 18 89           1173 	lcall	_setDigitalInput
                    01AC   1174 	C$vibes_lab_tx_5.0.c$454$1$1 ==.
                           1175 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:454: lostSample = FALSE;
   06C9 C2 01              1176 	clr	_lostSample
                    01AE   1177 	C$vibes_lab_tx_5.0.c$456$1$1 ==.
                           1178 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:456: packet = radioTxCurrentPacket();
   06CB 12 08 29           1179 	lcall	_radioTxCurrentPacket
   06CE E5 82              1180 	mov	a,dpl
   06D0 85 83 F0           1181 	mov	b,dph
   06D3 78 00              1182 	mov	r0,#_packet
   06D5 F2                 1183 	movx	@r0,a
   06D6 08                 1184 	inc	r0
   06D7 E5 F0              1185 	mov	a,b
   06D9 F2                 1186 	movx	@r0,a
                    01BD   1187 	C$vibes_lab_tx_5.0.c$457$1$1 ==.
                           1188 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:457: sampleIndex = 0;
   06DA 75 26 00           1189 	mov	_sampleIndex,#0x00
                    01C0   1190 	C$vibes_lab_tx_5.0.c$458$1$1 ==.
                           1191 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:458: isrCounter = TRUE;
   06DD D2 00              1192 	setb	_isrCounter
                    01C2   1193 	C$vibes_lab_tx_5.0.c$459$1$1 ==.
                           1194 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:459: accSample = 0;
   06DF E4                 1195 	clr	a
   06E0 F5 24              1196 	mov	_accSample,a
   06E2 F5 25              1197 	mov	(_accSample + 1),a
                    01C7   1198 	C$vibes_lab_tx_5.0.c$460$1$1 ==.
                           1199 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:460: transmissionsReady = 0;
   06E4 75 27 00           1200 	mov	_transmissionsReady,#0x00
                    01CA   1201 	C$vibes_lab_tx_5.0.c$462$1$1 ==.
                           1202 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:462: operationalTimeStamp = getMs();
   06E7 12 0C A9           1203 	lcall	_getMs
   06EA 85 82 28           1204 	mov	_operationalTimeStamp,dpl
   06ED 85 83 29           1205 	mov	(_operationalTimeStamp + 1),dph
   06F0 85 F0 2A           1206 	mov	(_operationalTimeStamp + 2),b
   06F3 F5 2B              1207 	mov	(_operationalTimeStamp + 3),a
                    01D8   1208 	C$vibes_lab_tx_5.0.c$465$1$1 ==.
                           1209 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:465: initComplete = TRUE;
   06F5 D2 02              1210 	setb	_initComplete
                    01DA   1211 	C$vibes_lab_tx_5.0.c$468$1$1 ==.
                           1212 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:468: while(TRUE)
   06F7                    1213 00107$:
                    01DA   1214 	C$vibes_lab_tx_5.0.c$470$2$2 ==.
                           1215 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:470: updateLeds(); // blinks red LED every 50ms if we are receiving packets
   06F7 12 06 4F           1216 	lcall	_updateLeds
                    01DD   1217 	C$vibes_lab_tx_5.0.c$471$2$2 ==.
                           1218 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:471: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
   06FA 12 0D 98           1219 	lcall	_boardService
                    01E0   1220 	C$vibes_lab_tx_5.0.c$472$2$2 ==.
                           1221 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:472: usbComService(); // so we can start bootloader from Wixel config GUI
   06FD 12 0F 98           1222 	lcall	_usbComService
                    01E3   1223 	C$vibes_lab_tx_5.0.c$475$2$2 ==.
                           1224 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:475: while(transmissionsReady)
   0700                    1225 00103$:
   0700 E5 27              1226 	mov	a,_transmissionsReady
   0702 60 F3              1227 	jz	00107$
                    01E7   1228 	C$vibes_lab_tx_5.0.c$478$3$3 ==.
                           1229 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:478: if(radioTxAvailable())
   0704 12 08 20           1230 	lcall	_radioTxAvailable
   0707 50 F7              1231 	jnc	00103$
                    01EC   1232 	C$vibes_lab_tx_5.0.c$481$4$4 ==.
                           1233 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:481: radioTxSendPacket();
   0709 12 08 46           1234 	lcall	_radioTxSendPacket
                    01EF   1235 	C$vibes_lab_tx_5.0.c$482$4$4 ==.
                           1236 ;	src/vibes_lab_tx_5.0/vibes_lab_tx_5.0.c:482: --transmissionsReady;
   070C 15 27              1237 	dec	_transmissionsReady
                    01F1   1238 	C$vibes_lab_tx_5.0.c$486$1$1 ==.
                    01F1   1239 	XG$main$0$0 ==.
   070E 80 F0              1240 	sjmp	00103$
                           1241 	.area CSEG    (CODE)
                           1242 	.area CONST   (CODE)
                    0000   1243 Fvibes_lab_tx_5_0$INPUT_CHANNEL$0$0 == .
   1A9A                    1244 _INPUT_CHANNEL:
   1A9A 01                 1245 	.db #0x01	; 1
                           1246 	.area XINIT   (CODE)
                           1247 	.area CABS    (ABS,CODE)
