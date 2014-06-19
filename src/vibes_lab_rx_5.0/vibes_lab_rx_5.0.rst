                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Mon Dec 10 17:37:58 2012
                              5 ;--------------------------------------------------------
                              6 	.module vibes_lab_rx_5_0
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
                    0080     19 Fvibes_lab_rx_5_0$P0$0$0 == 0x0080
                    0080     20 _P0	=	0x0080
                    0081     21 Fvibes_lab_rx_5_0$SP$0$0 == 0x0081
                    0081     22 _SP	=	0x0081
                    0082     23 Fvibes_lab_rx_5_0$DPL0$0$0 == 0x0082
                    0082     24 _DPL0	=	0x0082
                    0083     25 Fvibes_lab_rx_5_0$DPH0$0$0 == 0x0083
                    0083     26 _DPH0	=	0x0083
                    0084     27 Fvibes_lab_rx_5_0$DPL1$0$0 == 0x0084
                    0084     28 _DPL1	=	0x0084
                    0085     29 Fvibes_lab_rx_5_0$DPH1$0$0 == 0x0085
                    0085     30 _DPH1	=	0x0085
                    0086     31 Fvibes_lab_rx_5_0$U0CSR$0$0 == 0x0086
                    0086     32 _U0CSR	=	0x0086
                    0087     33 Fvibes_lab_rx_5_0$PCON$0$0 == 0x0087
                    0087     34 _PCON	=	0x0087
                    0088     35 Fvibes_lab_rx_5_0$TCON$0$0 == 0x0088
                    0088     36 _TCON	=	0x0088
                    0089     37 Fvibes_lab_rx_5_0$P0IFG$0$0 == 0x0089
                    0089     38 _P0IFG	=	0x0089
                    008A     39 Fvibes_lab_rx_5_0$P1IFG$0$0 == 0x008a
                    008A     40 _P1IFG	=	0x008a
                    008B     41 Fvibes_lab_rx_5_0$P2IFG$0$0 == 0x008b
                    008B     42 _P2IFG	=	0x008b
                    008C     43 Fvibes_lab_rx_5_0$PICTL$0$0 == 0x008c
                    008C     44 _PICTL	=	0x008c
                    008D     45 Fvibes_lab_rx_5_0$P1IEN$0$0 == 0x008d
                    008D     46 _P1IEN	=	0x008d
                    008F     47 Fvibes_lab_rx_5_0$P0INP$0$0 == 0x008f
                    008F     48 _P0INP	=	0x008f
                    0090     49 Fvibes_lab_rx_5_0$P1$0$0 == 0x0090
                    0090     50 _P1	=	0x0090
                    0091     51 Fvibes_lab_rx_5_0$RFIM$0$0 == 0x0091
                    0091     52 _RFIM	=	0x0091
                    0092     53 Fvibes_lab_rx_5_0$DPS$0$0 == 0x0092
                    0092     54 _DPS	=	0x0092
                    0093     55 Fvibes_lab_rx_5_0$MPAGE$0$0 == 0x0093
                    0093     56 _MPAGE	=	0x0093
                    0095     57 Fvibes_lab_rx_5_0$ENDIAN$0$0 == 0x0095
                    0095     58 _ENDIAN	=	0x0095
                    0098     59 Fvibes_lab_rx_5_0$S0CON$0$0 == 0x0098
                    0098     60 _S0CON	=	0x0098
                    009A     61 Fvibes_lab_rx_5_0$IEN2$0$0 == 0x009a
                    009A     62 _IEN2	=	0x009a
                    009B     63 Fvibes_lab_rx_5_0$S1CON$0$0 == 0x009b
                    009B     64 _S1CON	=	0x009b
                    009C     65 Fvibes_lab_rx_5_0$T2CT$0$0 == 0x009c
                    009C     66 _T2CT	=	0x009c
                    009D     67 Fvibes_lab_rx_5_0$T2PR$0$0 == 0x009d
                    009D     68 _T2PR	=	0x009d
                    009E     69 Fvibes_lab_rx_5_0$T2CTL$0$0 == 0x009e
                    009E     70 _T2CTL	=	0x009e
                    00A0     71 Fvibes_lab_rx_5_0$P2$0$0 == 0x00a0
                    00A0     72 _P2	=	0x00a0
                    00A1     73 Fvibes_lab_rx_5_0$WORIRQ$0$0 == 0x00a1
                    00A1     74 _WORIRQ	=	0x00a1
                    00A2     75 Fvibes_lab_rx_5_0$WORCTRL$0$0 == 0x00a2
                    00A2     76 _WORCTRL	=	0x00a2
                    00A3     77 Fvibes_lab_rx_5_0$WOREVT0$0$0 == 0x00a3
                    00A3     78 _WOREVT0	=	0x00a3
                    00A4     79 Fvibes_lab_rx_5_0$WOREVT1$0$0 == 0x00a4
                    00A4     80 _WOREVT1	=	0x00a4
                    00A5     81 Fvibes_lab_rx_5_0$WORTIME0$0$0 == 0x00a5
                    00A5     82 _WORTIME0	=	0x00a5
                    00A6     83 Fvibes_lab_rx_5_0$WORTIME1$0$0 == 0x00a6
                    00A6     84 _WORTIME1	=	0x00a6
                    00A8     85 Fvibes_lab_rx_5_0$IEN0$0$0 == 0x00a8
                    00A8     86 _IEN0	=	0x00a8
                    00A9     87 Fvibes_lab_rx_5_0$IP0$0$0 == 0x00a9
                    00A9     88 _IP0	=	0x00a9
                    00AB     89 Fvibes_lab_rx_5_0$FWT$0$0 == 0x00ab
                    00AB     90 _FWT	=	0x00ab
                    00AC     91 Fvibes_lab_rx_5_0$FADDRL$0$0 == 0x00ac
                    00AC     92 _FADDRL	=	0x00ac
                    00AD     93 Fvibes_lab_rx_5_0$FADDRH$0$0 == 0x00ad
                    00AD     94 _FADDRH	=	0x00ad
                    00AE     95 Fvibes_lab_rx_5_0$FCTL$0$0 == 0x00ae
                    00AE     96 _FCTL	=	0x00ae
                    00AF     97 Fvibes_lab_rx_5_0$FWDATA$0$0 == 0x00af
                    00AF     98 _FWDATA	=	0x00af
                    00B1     99 Fvibes_lab_rx_5_0$ENCDI$0$0 == 0x00b1
                    00B1    100 _ENCDI	=	0x00b1
                    00B2    101 Fvibes_lab_rx_5_0$ENCDO$0$0 == 0x00b2
                    00B2    102 _ENCDO	=	0x00b2
                    00B3    103 Fvibes_lab_rx_5_0$ENCCS$0$0 == 0x00b3
                    00B3    104 _ENCCS	=	0x00b3
                    00B4    105 Fvibes_lab_rx_5_0$ADCCON1$0$0 == 0x00b4
                    00B4    106 _ADCCON1	=	0x00b4
                    00B5    107 Fvibes_lab_rx_5_0$ADCCON2$0$0 == 0x00b5
                    00B5    108 _ADCCON2	=	0x00b5
                    00B6    109 Fvibes_lab_rx_5_0$ADCCON3$0$0 == 0x00b6
                    00B6    110 _ADCCON3	=	0x00b6
                    00B8    111 Fvibes_lab_rx_5_0$IEN1$0$0 == 0x00b8
                    00B8    112 _IEN1	=	0x00b8
                    00B9    113 Fvibes_lab_rx_5_0$IP1$0$0 == 0x00b9
                    00B9    114 _IP1	=	0x00b9
                    00BA    115 Fvibes_lab_rx_5_0$ADCL$0$0 == 0x00ba
                    00BA    116 _ADCL	=	0x00ba
                    00BB    117 Fvibes_lab_rx_5_0$ADCH$0$0 == 0x00bb
                    00BB    118 _ADCH	=	0x00bb
                    00BC    119 Fvibes_lab_rx_5_0$RNDL$0$0 == 0x00bc
                    00BC    120 _RNDL	=	0x00bc
                    00BD    121 Fvibes_lab_rx_5_0$RNDH$0$0 == 0x00bd
                    00BD    122 _RNDH	=	0x00bd
                    00BE    123 Fvibes_lab_rx_5_0$SLEEP$0$0 == 0x00be
                    00BE    124 _SLEEP	=	0x00be
                    00C0    125 Fvibes_lab_rx_5_0$IRCON$0$0 == 0x00c0
                    00C0    126 _IRCON	=	0x00c0
                    00C1    127 Fvibes_lab_rx_5_0$U0DBUF$0$0 == 0x00c1
                    00C1    128 _U0DBUF	=	0x00c1
                    00C2    129 Fvibes_lab_rx_5_0$U0BAUD$0$0 == 0x00c2
                    00C2    130 _U0BAUD	=	0x00c2
                    00C4    131 Fvibes_lab_rx_5_0$U0UCR$0$0 == 0x00c4
                    00C4    132 _U0UCR	=	0x00c4
                    00C5    133 Fvibes_lab_rx_5_0$U0GCR$0$0 == 0x00c5
                    00C5    134 _U0GCR	=	0x00c5
                    00C6    135 Fvibes_lab_rx_5_0$CLKCON$0$0 == 0x00c6
                    00C6    136 _CLKCON	=	0x00c6
                    00C7    137 Fvibes_lab_rx_5_0$MEMCTR$0$0 == 0x00c7
                    00C7    138 _MEMCTR	=	0x00c7
                    00C9    139 Fvibes_lab_rx_5_0$WDCTL$0$0 == 0x00c9
                    00C9    140 _WDCTL	=	0x00c9
                    00CA    141 Fvibes_lab_rx_5_0$T3CNT$0$0 == 0x00ca
                    00CA    142 _T3CNT	=	0x00ca
                    00CB    143 Fvibes_lab_rx_5_0$T3CTL$0$0 == 0x00cb
                    00CB    144 _T3CTL	=	0x00cb
                    00CC    145 Fvibes_lab_rx_5_0$T3CCTL0$0$0 == 0x00cc
                    00CC    146 _T3CCTL0	=	0x00cc
                    00CD    147 Fvibes_lab_rx_5_0$T3CC0$0$0 == 0x00cd
                    00CD    148 _T3CC0	=	0x00cd
                    00CE    149 Fvibes_lab_rx_5_0$T3CCTL1$0$0 == 0x00ce
                    00CE    150 _T3CCTL1	=	0x00ce
                    00CF    151 Fvibes_lab_rx_5_0$T3CC1$0$0 == 0x00cf
                    00CF    152 _T3CC1	=	0x00cf
                    00D0    153 Fvibes_lab_rx_5_0$PSW$0$0 == 0x00d0
                    00D0    154 _PSW	=	0x00d0
                    00D1    155 Fvibes_lab_rx_5_0$DMAIRQ$0$0 == 0x00d1
                    00D1    156 _DMAIRQ	=	0x00d1
                    00D2    157 Fvibes_lab_rx_5_0$DMA1CFGL$0$0 == 0x00d2
                    00D2    158 _DMA1CFGL	=	0x00d2
                    00D3    159 Fvibes_lab_rx_5_0$DMA1CFGH$0$0 == 0x00d3
                    00D3    160 _DMA1CFGH	=	0x00d3
                    00D4    161 Fvibes_lab_rx_5_0$DMA0CFGL$0$0 == 0x00d4
                    00D4    162 _DMA0CFGL	=	0x00d4
                    00D5    163 Fvibes_lab_rx_5_0$DMA0CFGH$0$0 == 0x00d5
                    00D5    164 _DMA0CFGH	=	0x00d5
                    00D6    165 Fvibes_lab_rx_5_0$DMAARM$0$0 == 0x00d6
                    00D6    166 _DMAARM	=	0x00d6
                    00D7    167 Fvibes_lab_rx_5_0$DMAREQ$0$0 == 0x00d7
                    00D7    168 _DMAREQ	=	0x00d7
                    00D8    169 Fvibes_lab_rx_5_0$TIMIF$0$0 == 0x00d8
                    00D8    170 _TIMIF	=	0x00d8
                    00D9    171 Fvibes_lab_rx_5_0$RFD$0$0 == 0x00d9
                    00D9    172 _RFD	=	0x00d9
                    00DA    173 Fvibes_lab_rx_5_0$T1CC0L$0$0 == 0x00da
                    00DA    174 _T1CC0L	=	0x00da
                    00DB    175 Fvibes_lab_rx_5_0$T1CC0H$0$0 == 0x00db
                    00DB    176 _T1CC0H	=	0x00db
                    00DC    177 Fvibes_lab_rx_5_0$T1CC1L$0$0 == 0x00dc
                    00DC    178 _T1CC1L	=	0x00dc
                    00DD    179 Fvibes_lab_rx_5_0$T1CC1H$0$0 == 0x00dd
                    00DD    180 _T1CC1H	=	0x00dd
                    00DE    181 Fvibes_lab_rx_5_0$T1CC2L$0$0 == 0x00de
                    00DE    182 _T1CC2L	=	0x00de
                    00DF    183 Fvibes_lab_rx_5_0$T1CC2H$0$0 == 0x00df
                    00DF    184 _T1CC2H	=	0x00df
                    00E0    185 Fvibes_lab_rx_5_0$ACC$0$0 == 0x00e0
                    00E0    186 _ACC	=	0x00e0
                    00E1    187 Fvibes_lab_rx_5_0$RFST$0$0 == 0x00e1
                    00E1    188 _RFST	=	0x00e1
                    00E2    189 Fvibes_lab_rx_5_0$T1CNTL$0$0 == 0x00e2
                    00E2    190 _T1CNTL	=	0x00e2
                    00E3    191 Fvibes_lab_rx_5_0$T1CNTH$0$0 == 0x00e3
                    00E3    192 _T1CNTH	=	0x00e3
                    00E4    193 Fvibes_lab_rx_5_0$T1CTL$0$0 == 0x00e4
                    00E4    194 _T1CTL	=	0x00e4
                    00E5    195 Fvibes_lab_rx_5_0$T1CCTL0$0$0 == 0x00e5
                    00E5    196 _T1CCTL0	=	0x00e5
                    00E6    197 Fvibes_lab_rx_5_0$T1CCTL1$0$0 == 0x00e6
                    00E6    198 _T1CCTL1	=	0x00e6
                    00E7    199 Fvibes_lab_rx_5_0$T1CCTL2$0$0 == 0x00e7
                    00E7    200 _T1CCTL2	=	0x00e7
                    00E8    201 Fvibes_lab_rx_5_0$IRCON2$0$0 == 0x00e8
                    00E8    202 _IRCON2	=	0x00e8
                    00E9    203 Fvibes_lab_rx_5_0$RFIF$0$0 == 0x00e9
                    00E9    204 _RFIF	=	0x00e9
                    00EA    205 Fvibes_lab_rx_5_0$T4CNT$0$0 == 0x00ea
                    00EA    206 _T4CNT	=	0x00ea
                    00EB    207 Fvibes_lab_rx_5_0$T4CTL$0$0 == 0x00eb
                    00EB    208 _T4CTL	=	0x00eb
                    00EC    209 Fvibes_lab_rx_5_0$T4CCTL0$0$0 == 0x00ec
                    00EC    210 _T4CCTL0	=	0x00ec
                    00ED    211 Fvibes_lab_rx_5_0$T4CC0$0$0 == 0x00ed
                    00ED    212 _T4CC0	=	0x00ed
                    00EE    213 Fvibes_lab_rx_5_0$T4CCTL1$0$0 == 0x00ee
                    00EE    214 _T4CCTL1	=	0x00ee
                    00EF    215 Fvibes_lab_rx_5_0$T4CC1$0$0 == 0x00ef
                    00EF    216 _T4CC1	=	0x00ef
                    00F0    217 Fvibes_lab_rx_5_0$B$0$0 == 0x00f0
                    00F0    218 _B	=	0x00f0
                    00F1    219 Fvibes_lab_rx_5_0$PERCFG$0$0 == 0x00f1
                    00F1    220 _PERCFG	=	0x00f1
                    00F2    221 Fvibes_lab_rx_5_0$ADCCFG$0$0 == 0x00f2
                    00F2    222 _ADCCFG	=	0x00f2
                    00F3    223 Fvibes_lab_rx_5_0$P0SEL$0$0 == 0x00f3
                    00F3    224 _P0SEL	=	0x00f3
                    00F4    225 Fvibes_lab_rx_5_0$P1SEL$0$0 == 0x00f4
                    00F4    226 _P1SEL	=	0x00f4
                    00F5    227 Fvibes_lab_rx_5_0$P2SEL$0$0 == 0x00f5
                    00F5    228 _P2SEL	=	0x00f5
                    00F6    229 Fvibes_lab_rx_5_0$P1INP$0$0 == 0x00f6
                    00F6    230 _P1INP	=	0x00f6
                    00F7    231 Fvibes_lab_rx_5_0$P2INP$0$0 == 0x00f7
                    00F7    232 _P2INP	=	0x00f7
                    00F8    233 Fvibes_lab_rx_5_0$U1CSR$0$0 == 0x00f8
                    00F8    234 _U1CSR	=	0x00f8
                    00F9    235 Fvibes_lab_rx_5_0$U1DBUF$0$0 == 0x00f9
                    00F9    236 _U1DBUF	=	0x00f9
                    00FA    237 Fvibes_lab_rx_5_0$U1BAUD$0$0 == 0x00fa
                    00FA    238 _U1BAUD	=	0x00fa
                    00FB    239 Fvibes_lab_rx_5_0$U1UCR$0$0 == 0x00fb
                    00FB    240 _U1UCR	=	0x00fb
                    00FC    241 Fvibes_lab_rx_5_0$U1GCR$0$0 == 0x00fc
                    00FC    242 _U1GCR	=	0x00fc
                    00FD    243 Fvibes_lab_rx_5_0$P0DIR$0$0 == 0x00fd
                    00FD    244 _P0DIR	=	0x00fd
                    00FE    245 Fvibes_lab_rx_5_0$P1DIR$0$0 == 0x00fe
                    00FE    246 _P1DIR	=	0x00fe
                    00FF    247 Fvibes_lab_rx_5_0$P2DIR$0$0 == 0x00ff
                    00FF    248 _P2DIR	=	0x00ff
                    FFFFD5D4    249 Fvibes_lab_rx_5_0$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    250 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    251 Fvibes_lab_rx_5_0$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    252 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    253 Fvibes_lab_rx_5_0$FADDR$0$0 == 0xffffadac
                    FFFFADAC    254 _FADDR	=	0xffffadac
                    FFFFBBBA    255 Fvibes_lab_rx_5_0$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    256 _ADC	=	0xffffbbba
                            257 ;--------------------------------------------------------
                            258 ; special function bits
                            259 ;--------------------------------------------------------
                            260 	.area RSEG    (ABS,DATA)
   0000                     261 	.org 0x0000
                    0080    262 Fvibes_lab_rx_5_0$P0_0$0$0 == 0x0080
                    0080    263 _P0_0	=	0x0080
                    0081    264 Fvibes_lab_rx_5_0$P0_1$0$0 == 0x0081
                    0081    265 _P0_1	=	0x0081
                    0082    266 Fvibes_lab_rx_5_0$P0_2$0$0 == 0x0082
                    0082    267 _P0_2	=	0x0082
                    0083    268 Fvibes_lab_rx_5_0$P0_3$0$0 == 0x0083
                    0083    269 _P0_3	=	0x0083
                    0084    270 Fvibes_lab_rx_5_0$P0_4$0$0 == 0x0084
                    0084    271 _P0_4	=	0x0084
                    0085    272 Fvibes_lab_rx_5_0$P0_5$0$0 == 0x0085
                    0085    273 _P0_5	=	0x0085
                    0086    274 Fvibes_lab_rx_5_0$P0_6$0$0 == 0x0086
                    0086    275 _P0_6	=	0x0086
                    0087    276 Fvibes_lab_rx_5_0$P0_7$0$0 == 0x0087
                    0087    277 _P0_7	=	0x0087
                    0088    278 Fvibes_lab_rx_5_0$_TCON_0$0$0 == 0x0088
                    0088    279 __TCON_0	=	0x0088
                    0089    280 Fvibes_lab_rx_5_0$RFTXRXIF$0$0 == 0x0089
                    0089    281 _RFTXRXIF	=	0x0089
                    008A    282 Fvibes_lab_rx_5_0$_TCON_2$0$0 == 0x008a
                    008A    283 __TCON_2	=	0x008a
                    008B    284 Fvibes_lab_rx_5_0$URX0IF$0$0 == 0x008b
                    008B    285 _URX0IF	=	0x008b
                    008C    286 Fvibes_lab_rx_5_0$_TCON_4$0$0 == 0x008c
                    008C    287 __TCON_4	=	0x008c
                    008D    288 Fvibes_lab_rx_5_0$ADCIF$0$0 == 0x008d
                    008D    289 _ADCIF	=	0x008d
                    008E    290 Fvibes_lab_rx_5_0$_TCON_6$0$0 == 0x008e
                    008E    291 __TCON_6	=	0x008e
                    008F    292 Fvibes_lab_rx_5_0$URX1IF$0$0 == 0x008f
                    008F    293 _URX1IF	=	0x008f
                    0090    294 Fvibes_lab_rx_5_0$P1_0$0$0 == 0x0090
                    0090    295 _P1_0	=	0x0090
                    0091    296 Fvibes_lab_rx_5_0$P1_1$0$0 == 0x0091
                    0091    297 _P1_1	=	0x0091
                    0092    298 Fvibes_lab_rx_5_0$P1_2$0$0 == 0x0092
                    0092    299 _P1_2	=	0x0092
                    0093    300 Fvibes_lab_rx_5_0$P1_3$0$0 == 0x0093
                    0093    301 _P1_3	=	0x0093
                    0094    302 Fvibes_lab_rx_5_0$P1_4$0$0 == 0x0094
                    0094    303 _P1_4	=	0x0094
                    0095    304 Fvibes_lab_rx_5_0$P1_5$0$0 == 0x0095
                    0095    305 _P1_5	=	0x0095
                    0096    306 Fvibes_lab_rx_5_0$P1_6$0$0 == 0x0096
                    0096    307 _P1_6	=	0x0096
                    0097    308 Fvibes_lab_rx_5_0$P1_7$0$0 == 0x0097
                    0097    309 _P1_7	=	0x0097
                    0098    310 Fvibes_lab_rx_5_0$ENCIF_0$0$0 == 0x0098
                    0098    311 _ENCIF_0	=	0x0098
                    0099    312 Fvibes_lab_rx_5_0$ENCIF_1$0$0 == 0x0099
                    0099    313 _ENCIF_1	=	0x0099
                    009A    314 Fvibes_lab_rx_5_0$_SOCON2$0$0 == 0x009a
                    009A    315 __SOCON2	=	0x009a
                    009B    316 Fvibes_lab_rx_5_0$_SOCON3$0$0 == 0x009b
                    009B    317 __SOCON3	=	0x009b
                    009C    318 Fvibes_lab_rx_5_0$_SOCON4$0$0 == 0x009c
                    009C    319 __SOCON4	=	0x009c
                    009D    320 Fvibes_lab_rx_5_0$_SOCON5$0$0 == 0x009d
                    009D    321 __SOCON5	=	0x009d
                    009E    322 Fvibes_lab_rx_5_0$_SOCON6$0$0 == 0x009e
                    009E    323 __SOCON6	=	0x009e
                    009F    324 Fvibes_lab_rx_5_0$_SOCON7$0$0 == 0x009f
                    009F    325 __SOCON7	=	0x009f
                    00A0    326 Fvibes_lab_rx_5_0$P2_0$0$0 == 0x00a0
                    00A0    327 _P2_0	=	0x00a0
                    00A1    328 Fvibes_lab_rx_5_0$P2_1$0$0 == 0x00a1
                    00A1    329 _P2_1	=	0x00a1
                    00A2    330 Fvibes_lab_rx_5_0$P2_2$0$0 == 0x00a2
                    00A2    331 _P2_2	=	0x00a2
                    00A3    332 Fvibes_lab_rx_5_0$P2_3$0$0 == 0x00a3
                    00A3    333 _P2_3	=	0x00a3
                    00A4    334 Fvibes_lab_rx_5_0$P2_4$0$0 == 0x00a4
                    00A4    335 _P2_4	=	0x00a4
                    00A5    336 Fvibes_lab_rx_5_0$P2_5$0$0 == 0x00a5
                    00A5    337 _P2_5	=	0x00a5
                    00A6    338 Fvibes_lab_rx_5_0$P2_6$0$0 == 0x00a6
                    00A6    339 _P2_6	=	0x00a6
                    00A7    340 Fvibes_lab_rx_5_0$P2_7$0$0 == 0x00a7
                    00A7    341 _P2_7	=	0x00a7
                    00A8    342 Fvibes_lab_rx_5_0$RFTXRXIE$0$0 == 0x00a8
                    00A8    343 _RFTXRXIE	=	0x00a8
                    00A9    344 Fvibes_lab_rx_5_0$ADCIE$0$0 == 0x00a9
                    00A9    345 _ADCIE	=	0x00a9
                    00AA    346 Fvibes_lab_rx_5_0$URX0IE$0$0 == 0x00aa
                    00AA    347 _URX0IE	=	0x00aa
                    00AB    348 Fvibes_lab_rx_5_0$URX1IE$0$0 == 0x00ab
                    00AB    349 _URX1IE	=	0x00ab
                    00AC    350 Fvibes_lab_rx_5_0$ENCIE$0$0 == 0x00ac
                    00AC    351 _ENCIE	=	0x00ac
                    00AD    352 Fvibes_lab_rx_5_0$STIE$0$0 == 0x00ad
                    00AD    353 _STIE	=	0x00ad
                    00AE    354 Fvibes_lab_rx_5_0$_IEN06$0$0 == 0x00ae
                    00AE    355 __IEN06	=	0x00ae
                    00AF    356 Fvibes_lab_rx_5_0$EA$0$0 == 0x00af
                    00AF    357 _EA	=	0x00af
                    00B8    358 Fvibes_lab_rx_5_0$DMAIE$0$0 == 0x00b8
                    00B8    359 _DMAIE	=	0x00b8
                    00B9    360 Fvibes_lab_rx_5_0$T1IE$0$0 == 0x00b9
                    00B9    361 _T1IE	=	0x00b9
                    00BA    362 Fvibes_lab_rx_5_0$T2IE$0$0 == 0x00ba
                    00BA    363 _T2IE	=	0x00ba
                    00BB    364 Fvibes_lab_rx_5_0$T3IE$0$0 == 0x00bb
                    00BB    365 _T3IE	=	0x00bb
                    00BC    366 Fvibes_lab_rx_5_0$T4IE$0$0 == 0x00bc
                    00BC    367 _T4IE	=	0x00bc
                    00BD    368 Fvibes_lab_rx_5_0$P0IE$0$0 == 0x00bd
                    00BD    369 _P0IE	=	0x00bd
                    00BE    370 Fvibes_lab_rx_5_0$_IEN16$0$0 == 0x00be
                    00BE    371 __IEN16	=	0x00be
                    00BF    372 Fvibes_lab_rx_5_0$_IEN17$0$0 == 0x00bf
                    00BF    373 __IEN17	=	0x00bf
                    00C0    374 Fvibes_lab_rx_5_0$DMAIF$0$0 == 0x00c0
                    00C0    375 _DMAIF	=	0x00c0
                    00C1    376 Fvibes_lab_rx_5_0$T1IF$0$0 == 0x00c1
                    00C1    377 _T1IF	=	0x00c1
                    00C2    378 Fvibes_lab_rx_5_0$T2IF$0$0 == 0x00c2
                    00C2    379 _T2IF	=	0x00c2
                    00C3    380 Fvibes_lab_rx_5_0$T3IF$0$0 == 0x00c3
                    00C3    381 _T3IF	=	0x00c3
                    00C4    382 Fvibes_lab_rx_5_0$T4IF$0$0 == 0x00c4
                    00C4    383 _T4IF	=	0x00c4
                    00C5    384 Fvibes_lab_rx_5_0$P0IF$0$0 == 0x00c5
                    00C5    385 _P0IF	=	0x00c5
                    00C6    386 Fvibes_lab_rx_5_0$_IRCON6$0$0 == 0x00c6
                    00C6    387 __IRCON6	=	0x00c6
                    00C7    388 Fvibes_lab_rx_5_0$STIF$0$0 == 0x00c7
                    00C7    389 _STIF	=	0x00c7
                    00D0    390 Fvibes_lab_rx_5_0$P$0$0 == 0x00d0
                    00D0    391 _P	=	0x00d0
                    00D1    392 Fvibes_lab_rx_5_0$F1$0$0 == 0x00d1
                    00D1    393 _F1	=	0x00d1
                    00D2    394 Fvibes_lab_rx_5_0$OV$0$0 == 0x00d2
                    00D2    395 _OV	=	0x00d2
                    00D3    396 Fvibes_lab_rx_5_0$RS0$0$0 == 0x00d3
                    00D3    397 _RS0	=	0x00d3
                    00D4    398 Fvibes_lab_rx_5_0$RS1$0$0 == 0x00d4
                    00D4    399 _RS1	=	0x00d4
                    00D5    400 Fvibes_lab_rx_5_0$F0$0$0 == 0x00d5
                    00D5    401 _F0	=	0x00d5
                    00D6    402 Fvibes_lab_rx_5_0$AC$0$0 == 0x00d6
                    00D6    403 _AC	=	0x00d6
                    00D7    404 Fvibes_lab_rx_5_0$CY$0$0 == 0x00d7
                    00D7    405 _CY	=	0x00d7
                    00D8    406 Fvibes_lab_rx_5_0$T3OVFIF$0$0 == 0x00d8
                    00D8    407 _T3OVFIF	=	0x00d8
                    00D9    408 Fvibes_lab_rx_5_0$T3CH0IF$0$0 == 0x00d9
                    00D9    409 _T3CH0IF	=	0x00d9
                    00DA    410 Fvibes_lab_rx_5_0$T3CH1IF$0$0 == 0x00da
                    00DA    411 _T3CH1IF	=	0x00da
                    00DB    412 Fvibes_lab_rx_5_0$T4OVFIF$0$0 == 0x00db
                    00DB    413 _T4OVFIF	=	0x00db
                    00DC    414 Fvibes_lab_rx_5_0$T4CH0IF$0$0 == 0x00dc
                    00DC    415 _T4CH0IF	=	0x00dc
                    00DD    416 Fvibes_lab_rx_5_0$T4CH1IF$0$0 == 0x00dd
                    00DD    417 _T4CH1IF	=	0x00dd
                    00DE    418 Fvibes_lab_rx_5_0$OVFIM$0$0 == 0x00de
                    00DE    419 _OVFIM	=	0x00de
                    00DF    420 Fvibes_lab_rx_5_0$_TIMIF7$0$0 == 0x00df
                    00DF    421 __TIMIF7	=	0x00df
                    00E0    422 Fvibes_lab_rx_5_0$ACC_0$0$0 == 0x00e0
                    00E0    423 _ACC_0	=	0x00e0
                    00E1    424 Fvibes_lab_rx_5_0$ACC_1$0$0 == 0x00e1
                    00E1    425 _ACC_1	=	0x00e1
                    00E2    426 Fvibes_lab_rx_5_0$ACC_2$0$0 == 0x00e2
                    00E2    427 _ACC_2	=	0x00e2
                    00E3    428 Fvibes_lab_rx_5_0$ACC_3$0$0 == 0x00e3
                    00E3    429 _ACC_3	=	0x00e3
                    00E4    430 Fvibes_lab_rx_5_0$ACC_4$0$0 == 0x00e4
                    00E4    431 _ACC_4	=	0x00e4
                    00E5    432 Fvibes_lab_rx_5_0$ACC_5$0$0 == 0x00e5
                    00E5    433 _ACC_5	=	0x00e5
                    00E6    434 Fvibes_lab_rx_5_0$ACC_6$0$0 == 0x00e6
                    00E6    435 _ACC_6	=	0x00e6
                    00E7    436 Fvibes_lab_rx_5_0$ACC_7$0$0 == 0x00e7
                    00E7    437 _ACC_7	=	0x00e7
                    00E8    438 Fvibes_lab_rx_5_0$P2IF$0$0 == 0x00e8
                    00E8    439 _P2IF	=	0x00e8
                    00E9    440 Fvibes_lab_rx_5_0$UTX0IF$0$0 == 0x00e9
                    00E9    441 _UTX0IF	=	0x00e9
                    00EA    442 Fvibes_lab_rx_5_0$UTX1IF$0$0 == 0x00ea
                    00EA    443 _UTX1IF	=	0x00ea
                    00EB    444 Fvibes_lab_rx_5_0$P1IF$0$0 == 0x00eb
                    00EB    445 _P1IF	=	0x00eb
                    00EC    446 Fvibes_lab_rx_5_0$WDTIF$0$0 == 0x00ec
                    00EC    447 _WDTIF	=	0x00ec
                    00ED    448 Fvibes_lab_rx_5_0$_IRCON25$0$0 == 0x00ed
                    00ED    449 __IRCON25	=	0x00ed
                    00EE    450 Fvibes_lab_rx_5_0$_IRCON26$0$0 == 0x00ee
                    00EE    451 __IRCON26	=	0x00ee
                    00EF    452 Fvibes_lab_rx_5_0$_IRCON27$0$0 == 0x00ef
                    00EF    453 __IRCON27	=	0x00ef
                    00F0    454 Fvibes_lab_rx_5_0$B_0$0$0 == 0x00f0
                    00F0    455 _B_0	=	0x00f0
                    00F1    456 Fvibes_lab_rx_5_0$B_1$0$0 == 0x00f1
                    00F1    457 _B_1	=	0x00f1
                    00F2    458 Fvibes_lab_rx_5_0$B_2$0$0 == 0x00f2
                    00F2    459 _B_2	=	0x00f2
                    00F3    460 Fvibes_lab_rx_5_0$B_3$0$0 == 0x00f3
                    00F3    461 _B_3	=	0x00f3
                    00F4    462 Fvibes_lab_rx_5_0$B_4$0$0 == 0x00f4
                    00F4    463 _B_4	=	0x00f4
                    00F5    464 Fvibes_lab_rx_5_0$B_5$0$0 == 0x00f5
                    00F5    465 _B_5	=	0x00f5
                    00F6    466 Fvibes_lab_rx_5_0$B_6$0$0 == 0x00f6
                    00F6    467 _B_6	=	0x00f6
                    00F7    468 Fvibes_lab_rx_5_0$B_7$0$0 == 0x00f7
                    00F7    469 _B_7	=	0x00f7
                    00F8    470 Fvibes_lab_rx_5_0$U1ACTIVE$0$0 == 0x00f8
                    00F8    471 _U1ACTIVE	=	0x00f8
                    00F9    472 Fvibes_lab_rx_5_0$U1TX_BYTE$0$0 == 0x00f9
                    00F9    473 _U1TX_BYTE	=	0x00f9
                    00FA    474 Fvibes_lab_rx_5_0$U1RX_BYTE$0$0 == 0x00fa
                    00FA    475 _U1RX_BYTE	=	0x00fa
                    00FB    476 Fvibes_lab_rx_5_0$U1ERR$0$0 == 0x00fb
                    00FB    477 _U1ERR	=	0x00fb
                    00FC    478 Fvibes_lab_rx_5_0$U1FE$0$0 == 0x00fc
                    00FC    479 _U1FE	=	0x00fc
                    00FD    480 Fvibes_lab_rx_5_0$U1SLAVE$0$0 == 0x00fd
                    00FD    481 _U1SLAVE	=	0x00fd
                    00FE    482 Fvibes_lab_rx_5_0$U1RE$0$0 == 0x00fe
                    00FE    483 _U1RE	=	0x00fe
                    00FF    484 Fvibes_lab_rx_5_0$U1MODE$0$0 == 0x00ff
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
                    0000    511 Fvibes_lab_rx_5_0$accSample$0$0==.
   0024                     512 _accSample:
   0024                     513 	.ds 2
                    0002    514 Fvibes_lab_rx_5_0$sampleIndex$0$0==.
   0026                     515 _sampleIndex:
   0026                     516 	.ds 1
                    0003    517 Fvibes_lab_rx_5_0$isrCounter$0$0==.
   0027                     518 _isrCounter:
   0027                     519 	.ds 1
                    0004    520 Fvibes_lab_rx_5_0$operationalTimeStamp$0$0==.
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
                    0000    547 Fvibes_lab_rx_5_0$sufficientRxBuffer$0$0==.
   0000                     548 _sufficientRxBuffer:
   0000                     549 	.ds 1
                    0001    550 Fvibes_lab_rx_5_0$lostSample$0$0==.
   0001                     551 _lostSample:
   0001                     552 	.ds 1
                    0002    553 Fvibes_lab_rx_5_0$dacNAKd$0$0==.
   0002                     554 _dacNAKd:
   0002                     555 	.ds 1
                    0003    556 Fvibes_lab_rx_5_0$initComplete$0$0==.
   0003                     557 _initComplete:
   0003                     558 	.ds 1
                    0004    559 LISR_T3$sloc0$1$0==.
   0004                     560 _ISR_T3_sloc0_1_0:
   0004                     561 	.ds 1
                    0005    562 Lmain$sloc0$1$0==.
   0005                     563 _main_sloc0_1_0:
   0005                     564 	.ds 1
                            565 ;--------------------------------------------------------
                            566 ; paged external ram data
                            567 ;--------------------------------------------------------
                            568 	.area PSEG    (PAG,XDATA)
                    0000    569 Fvibes_lab_rx_5_0$packet$0$0==.
   F000                     570 _packet:
   F000                     571 	.ds 2
                            572 ;--------------------------------------------------------
                            573 ; external ram data
                            574 ;--------------------------------------------------------
                            575 	.area XSEG    (XDATA)
                    DF00    576 Fvibes_lab_rx_5_0$SYNC1$0$0 == 0xdf00
                    DF00    577 _SYNC1	=	0xdf00
                    DF01    578 Fvibes_lab_rx_5_0$SYNC0$0$0 == 0xdf01
                    DF01    579 _SYNC0	=	0xdf01
                    DF02    580 Fvibes_lab_rx_5_0$PKTLEN$0$0 == 0xdf02
                    DF02    581 _PKTLEN	=	0xdf02
                    DF03    582 Fvibes_lab_rx_5_0$PKTCTRL1$0$0 == 0xdf03
                    DF03    583 _PKTCTRL1	=	0xdf03
                    DF04    584 Fvibes_lab_rx_5_0$PKTCTRL0$0$0 == 0xdf04
                    DF04    585 _PKTCTRL0	=	0xdf04
                    DF05    586 Fvibes_lab_rx_5_0$ADDR$0$0 == 0xdf05
                    DF05    587 _ADDR	=	0xdf05
                    DF06    588 Fvibes_lab_rx_5_0$CHANNR$0$0 == 0xdf06
                    DF06    589 _CHANNR	=	0xdf06
                    DF07    590 Fvibes_lab_rx_5_0$FSCTRL1$0$0 == 0xdf07
                    DF07    591 _FSCTRL1	=	0xdf07
                    DF08    592 Fvibes_lab_rx_5_0$FSCTRL0$0$0 == 0xdf08
                    DF08    593 _FSCTRL0	=	0xdf08
                    DF09    594 Fvibes_lab_rx_5_0$FREQ2$0$0 == 0xdf09
                    DF09    595 _FREQ2	=	0xdf09
                    DF0A    596 Fvibes_lab_rx_5_0$FREQ1$0$0 == 0xdf0a
                    DF0A    597 _FREQ1	=	0xdf0a
                    DF0B    598 Fvibes_lab_rx_5_0$FREQ0$0$0 == 0xdf0b
                    DF0B    599 _FREQ0	=	0xdf0b
                    DF0C    600 Fvibes_lab_rx_5_0$MDMCFG4$0$0 == 0xdf0c
                    DF0C    601 _MDMCFG4	=	0xdf0c
                    DF0D    602 Fvibes_lab_rx_5_0$MDMCFG3$0$0 == 0xdf0d
                    DF0D    603 _MDMCFG3	=	0xdf0d
                    DF0E    604 Fvibes_lab_rx_5_0$MDMCFG2$0$0 == 0xdf0e
                    DF0E    605 _MDMCFG2	=	0xdf0e
                    DF0F    606 Fvibes_lab_rx_5_0$MDMCFG1$0$0 == 0xdf0f
                    DF0F    607 _MDMCFG1	=	0xdf0f
                    DF10    608 Fvibes_lab_rx_5_0$MDMCFG0$0$0 == 0xdf10
                    DF10    609 _MDMCFG0	=	0xdf10
                    DF11    610 Fvibes_lab_rx_5_0$DEVIATN$0$0 == 0xdf11
                    DF11    611 _DEVIATN	=	0xdf11
                    DF12    612 Fvibes_lab_rx_5_0$MCSM2$0$0 == 0xdf12
                    DF12    613 _MCSM2	=	0xdf12
                    DF13    614 Fvibes_lab_rx_5_0$MCSM1$0$0 == 0xdf13
                    DF13    615 _MCSM1	=	0xdf13
                    DF14    616 Fvibes_lab_rx_5_0$MCSM0$0$0 == 0xdf14
                    DF14    617 _MCSM0	=	0xdf14
                    DF15    618 Fvibes_lab_rx_5_0$FOCCFG$0$0 == 0xdf15
                    DF15    619 _FOCCFG	=	0xdf15
                    DF16    620 Fvibes_lab_rx_5_0$BSCFG$0$0 == 0xdf16
                    DF16    621 _BSCFG	=	0xdf16
                    DF17    622 Fvibes_lab_rx_5_0$AGCCTRL2$0$0 == 0xdf17
                    DF17    623 _AGCCTRL2	=	0xdf17
                    DF18    624 Fvibes_lab_rx_5_0$AGCCTRL1$0$0 == 0xdf18
                    DF18    625 _AGCCTRL1	=	0xdf18
                    DF19    626 Fvibes_lab_rx_5_0$AGCCTRL0$0$0 == 0xdf19
                    DF19    627 _AGCCTRL0	=	0xdf19
                    DF1A    628 Fvibes_lab_rx_5_0$FREND1$0$0 == 0xdf1a
                    DF1A    629 _FREND1	=	0xdf1a
                    DF1B    630 Fvibes_lab_rx_5_0$FREND0$0$0 == 0xdf1b
                    DF1B    631 _FREND0	=	0xdf1b
                    DF1C    632 Fvibes_lab_rx_5_0$FSCAL3$0$0 == 0xdf1c
                    DF1C    633 _FSCAL3	=	0xdf1c
                    DF1D    634 Fvibes_lab_rx_5_0$FSCAL2$0$0 == 0xdf1d
                    DF1D    635 _FSCAL2	=	0xdf1d
                    DF1E    636 Fvibes_lab_rx_5_0$FSCAL1$0$0 == 0xdf1e
                    DF1E    637 _FSCAL1	=	0xdf1e
                    DF1F    638 Fvibes_lab_rx_5_0$FSCAL0$0$0 == 0xdf1f
                    DF1F    639 _FSCAL0	=	0xdf1f
                    DF23    640 Fvibes_lab_rx_5_0$TEST2$0$0 == 0xdf23
                    DF23    641 _TEST2	=	0xdf23
                    DF24    642 Fvibes_lab_rx_5_0$TEST1$0$0 == 0xdf24
                    DF24    643 _TEST1	=	0xdf24
                    DF25    644 Fvibes_lab_rx_5_0$TEST0$0$0 == 0xdf25
                    DF25    645 _TEST0	=	0xdf25
                    DF2E    646 Fvibes_lab_rx_5_0$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    647 _PA_TABLE0	=	0xdf2e
                    DF2F    648 Fvibes_lab_rx_5_0$IOCFG2$0$0 == 0xdf2f
                    DF2F    649 _IOCFG2	=	0xdf2f
                    DF30    650 Fvibes_lab_rx_5_0$IOCFG1$0$0 == 0xdf30
                    DF30    651 _IOCFG1	=	0xdf30
                    DF31    652 Fvibes_lab_rx_5_0$IOCFG0$0$0 == 0xdf31
                    DF31    653 _IOCFG0	=	0xdf31
                    DF36    654 Fvibes_lab_rx_5_0$PARTNUM$0$0 == 0xdf36
                    DF36    655 _PARTNUM	=	0xdf36
                    DF37    656 Fvibes_lab_rx_5_0$VERSION$0$0 == 0xdf37
                    DF37    657 _VERSION	=	0xdf37
                    DF38    658 Fvibes_lab_rx_5_0$FREQEST$0$0 == 0xdf38
                    DF38    659 _FREQEST	=	0xdf38
                    DF39    660 Fvibes_lab_rx_5_0$LQI$0$0 == 0xdf39
                    DF39    661 _LQI	=	0xdf39
                    DF3A    662 Fvibes_lab_rx_5_0$RSSI$0$0 == 0xdf3a
                    DF3A    663 _RSSI	=	0xdf3a
                    DF3B    664 Fvibes_lab_rx_5_0$MARCSTATE$0$0 == 0xdf3b
                    DF3B    665 _MARCSTATE	=	0xdf3b
                    DF3C    666 Fvibes_lab_rx_5_0$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    667 _PKTSTATUS	=	0xdf3c
                    DF3D    668 Fvibes_lab_rx_5_0$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    669 _VCO_VC_DAC	=	0xdf3d
                    DF40    670 Fvibes_lab_rx_5_0$I2SCFG0$0$0 == 0xdf40
                    DF40    671 _I2SCFG0	=	0xdf40
                    DF41    672 Fvibes_lab_rx_5_0$I2SCFG1$0$0 == 0xdf41
                    DF41    673 _I2SCFG1	=	0xdf41
                    DF42    674 Fvibes_lab_rx_5_0$I2SDATL$0$0 == 0xdf42
                    DF42    675 _I2SDATL	=	0xdf42
                    DF43    676 Fvibes_lab_rx_5_0$I2SDATH$0$0 == 0xdf43
                    DF43    677 _I2SDATH	=	0xdf43
                    DF44    678 Fvibes_lab_rx_5_0$I2SWCNT$0$0 == 0xdf44
                    DF44    679 _I2SWCNT	=	0xdf44
                    DF45    680 Fvibes_lab_rx_5_0$I2SSTAT$0$0 == 0xdf45
                    DF45    681 _I2SSTAT	=	0xdf45
                    DF46    682 Fvibes_lab_rx_5_0$I2SCLKF0$0$0 == 0xdf46
                    DF46    683 _I2SCLKF0	=	0xdf46
                    DF47    684 Fvibes_lab_rx_5_0$I2SCLKF1$0$0 == 0xdf47
                    DF47    685 _I2SCLKF1	=	0xdf47
                    DF48    686 Fvibes_lab_rx_5_0$I2SCLKF2$0$0 == 0xdf48
                    DF48    687 _I2SCLKF2	=	0xdf48
                    DE00    688 Fvibes_lab_rx_5_0$USBADDR$0$0 == 0xde00
                    DE00    689 _USBADDR	=	0xde00
                    DE01    690 Fvibes_lab_rx_5_0$USBPOW$0$0 == 0xde01
                    DE01    691 _USBPOW	=	0xde01
                    DE02    692 Fvibes_lab_rx_5_0$USBIIF$0$0 == 0xde02
                    DE02    693 _USBIIF	=	0xde02
                    DE04    694 Fvibes_lab_rx_5_0$USBOIF$0$0 == 0xde04
                    DE04    695 _USBOIF	=	0xde04
                    DE06    696 Fvibes_lab_rx_5_0$USBCIF$0$0 == 0xde06
                    DE06    697 _USBCIF	=	0xde06
                    DE07    698 Fvibes_lab_rx_5_0$USBIIE$0$0 == 0xde07
                    DE07    699 _USBIIE	=	0xde07
                    DE09    700 Fvibes_lab_rx_5_0$USBOIE$0$0 == 0xde09
                    DE09    701 _USBOIE	=	0xde09
                    DE0B    702 Fvibes_lab_rx_5_0$USBCIE$0$0 == 0xde0b
                    DE0B    703 _USBCIE	=	0xde0b
                    DE0C    704 Fvibes_lab_rx_5_0$USBFRML$0$0 == 0xde0c
                    DE0C    705 _USBFRML	=	0xde0c
                    DE0D    706 Fvibes_lab_rx_5_0$USBFRMH$0$0 == 0xde0d
                    DE0D    707 _USBFRMH	=	0xde0d
                    DE0E    708 Fvibes_lab_rx_5_0$USBINDEX$0$0 == 0xde0e
                    DE0E    709 _USBINDEX	=	0xde0e
                    DE10    710 Fvibes_lab_rx_5_0$USBMAXI$0$0 == 0xde10
                    DE10    711 _USBMAXI	=	0xde10
                    DE11    712 Fvibes_lab_rx_5_0$USBCSIL$0$0 == 0xde11
                    DE11    713 _USBCSIL	=	0xde11
                    DE12    714 Fvibes_lab_rx_5_0$USBCSIH$0$0 == 0xde12
                    DE12    715 _USBCSIH	=	0xde12
                    DE13    716 Fvibes_lab_rx_5_0$USBMAXO$0$0 == 0xde13
                    DE13    717 _USBMAXO	=	0xde13
                    DE14    718 Fvibes_lab_rx_5_0$USBCSOL$0$0 == 0xde14
                    DE14    719 _USBCSOL	=	0xde14
                    DE15    720 Fvibes_lab_rx_5_0$USBCSOH$0$0 == 0xde15
                    DE15    721 _USBCSOH	=	0xde15
                    DE16    722 Fvibes_lab_rx_5_0$USBCNTL$0$0 == 0xde16
                    DE16    723 _USBCNTL	=	0xde16
                    DE17    724 Fvibes_lab_rx_5_0$USBCNTH$0$0 == 0xde17
                    DE17    725 _USBCNTH	=	0xde17
                    DE20    726 Fvibes_lab_rx_5_0$USBF0$0$0 == 0xde20
                    DE20    727 _USBF0	=	0xde20
                    DE22    728 Fvibes_lab_rx_5_0$USBF1$0$0 == 0xde22
                    DE22    729 _USBF1	=	0xde22
                    DE24    730 Fvibes_lab_rx_5_0$USBF2$0$0 == 0xde24
                    DE24    731 _USBF2	=	0xde24
                    DE26    732 Fvibes_lab_rx_5_0$USBF3$0$0 == 0xde26
                    DE26    733 _USBF3	=	0xde26
                    DE28    734 Fvibes_lab_rx_5_0$USBF4$0$0 == 0xde28
                    DE28    735 _USBF4	=	0xde28
                    DE2A    736 Fvibes_lab_rx_5_0$USBF5$0$0 == 0xde2a
                    DE2A    737 _USBF5	=	0xde2a
                            738 ;--------------------------------------------------------
                            739 ; absolute external ram data
                            740 ;--------------------------------------------------------
                            741 	.area XABS    (ABS,XDATA)
                            742 ;--------------------------------------------------------
                            743 ; external initialized ram data
                            744 ;--------------------------------------------------------
                            745 	.area XISEG   (XDATA)
                            746 	.area HOME    (CODE)
                            747 	.area GSINIT0 (CODE)
                            748 	.area GSINIT1 (CODE)
                            749 	.area GSINIT2 (CODE)
                            750 	.area GSINIT3 (CODE)
                            751 	.area GSINIT4 (CODE)
                            752 	.area GSINIT5 (CODE)
                            753 	.area GSINIT  (CODE)
                            754 	.area GSFINAL (CODE)
                            755 	.area CSEG    (CODE)
                            756 ;--------------------------------------------------------
                            757 ; interrupt vector 
                            758 ;--------------------------------------------------------
                            759 	.area HOME    (CODE)
   0400                     760 __interrupt_vect:
   0400 02 04 8D            761 	ljmp	__sdcc_gsinit_startup
   0403 32                  762 	reti
   0404                     763 	.ds	7
   040B 32                  764 	reti
   040C                     765 	.ds	7
   0413 32                  766 	reti
   0414                     767 	.ds	7
   041B 32                  768 	reti
   041C                     769 	.ds	7
   0423 32                  770 	reti
   0424                     771 	.ds	7
   042B 32                  772 	reti
   042C                     773 	.ds	7
   0433 32                  774 	reti
   0434                     775 	.ds	7
   043B 32                  776 	reti
   043C                     777 	.ds	7
   0443 32                  778 	reti
   0444                     779 	.ds	7
   044B 32                  780 	reti
   044C                     781 	.ds	7
   0453 32                  782 	reti
   0454                     783 	.ds	7
   045B 02 05 1D            784 	ljmp	_ISR_T3
   045E                     785 	.ds	5
   0463 02 0C DA            786 	ljmp	_ISR_T4
   0466                     787 	.ds	5
   046B 32                  788 	reti
   046C                     789 	.ds	7
   0473 32                  790 	reti
   0474                     791 	.ds	7
   047B 32                  792 	reti
   047C                     793 	.ds	7
   0483 02 0A 8E            794 	ljmp	_ISR_RF
                            795 ;--------------------------------------------------------
                            796 ; global & static initialisations
                            797 ;--------------------------------------------------------
                            798 	.area HOME    (CODE)
                            799 	.area GSINIT  (CODE)
                            800 	.area GSFINAL (CODE)
                            801 	.area GSINIT  (CODE)
                            802 	.globl __sdcc_gsinit_startup
                            803 	.globl __sdcc_program_startup
                            804 	.globl __start__stack
                            805 	.globl __mcs51_genXINIT
                            806 	.globl __mcs51_genXRAMCLEAR
                            807 	.globl __mcs51_genRAMCLEAR
                            808 	.area GSFINAL (CODE)
   051A 02 04 86            809 	ljmp	__sdcc_program_startup
                            810 ;--------------------------------------------------------
                            811 ; Home
                            812 ;--------------------------------------------------------
                            813 	.area HOME    (CODE)
                            814 	.area HOME    (CODE)
   0486                     815 __sdcc_program_startup:
   0486 12 06 AB            816 	lcall	_main
                            817 ;	return from main will lock up
   0489 80 FE               818 	sjmp .
                            819 ;--------------------------------------------------------
                            820 ; code
                            821 ;--------------------------------------------------------
                            822 	.area CSEG    (CODE)
                            823 ;------------------------------------------------------------
                            824 ;Allocation info for local variables in function 'ISR_T3'
                            825 ;------------------------------------------------------------
                            826 ;------------------------------------------------------------
                    0000    827 	G$ISR_T3$0$0 ==.
                    0000    828 	C$vibes_lab_rx_5.0.c$346$0$0 ==.
                            829 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:346: */ISR(T3, 3)
                            830 ;	-----------------------------------------
                            831 ;	 function ISR_T3
                            832 ;	-----------------------------------------
   051D                     833 _ISR_T3:
                    001A    834 	ar2 = 0x1a
                    001B    835 	ar3 = 0x1b
                    001C    836 	ar4 = 0x1c
                    001D    837 	ar5 = 0x1d
                    001E    838 	ar6 = 0x1e
                    001F    839 	ar7 = 0x1f
                    0018    840 	ar0 = 0x18
                    0019    841 	ar1 = 0x19
   051D C0 23               842 	push	bits
   051F C0 E0               843 	push	acc
   0521 C0 F0               844 	push	b
   0523 C0 82               845 	push	dpl
   0525 C0 83               846 	push	dph
   0527 C0 02               847 	push	(0+2)
   0529 C0 03               848 	push	(0+3)
   052B C0 04               849 	push	(0+4)
   052D C0 05               850 	push	(0+5)
   052F C0 06               851 	push	(0+6)
   0531 C0 07               852 	push	(0+7)
   0533 C0 00               853 	push	(0+0)
   0535 C0 01               854 	push	(0+1)
   0537 C0 D0               855 	push	psw
   0539 75 D0 18            856 	mov	psw,#0x18
                    001F    857 	C$vibes_lab_rx_5.0.c$350$1$1 ==.
                            858 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:350: T3IE = 0;
   053C C2 BB               859 	clr	_T3IE
                    0021    860 	C$vibes_lab_rx_5.0.c$353$1$1 ==.
                            861 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:353: if(initComplete && sufficientRxBuffer)
   053E 20 03 03            862 	jb	_initComplete,00121$
   0541 02 06 3A            863 	ljmp	00111$
   0544                     864 00121$:
   0544 20 00 03            865 	jb	_sufficientRxBuffer,00122$
   0547 02 06 3A            866 	ljmp	00111$
   054A                     867 00122$:
                    002D    868 	C$vibes_lab_rx_5.0.c$357$2$2 ==.
                            869 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:357: if(!dacNAKd && packet)
   054A 30 02 03            870 	jnb	_dacNAKd,00123$
   054D 02 06 2F            871 	ljmp	00107$
   0550                     872 00123$:
   0550 78 00               873 	mov	r0,#_packet
   0552 E2                  874 	movx	a,@r0
   0553 F5 F0               875 	mov	b,a
   0555 08                  876 	inc	r0
   0556 E2                  877 	movx	a,@r0
   0557 45 F0               878 	orl	a,b
   0559 70 03               879 	jnz	00124$
   055B 02 06 2F            880 	ljmp	00107$
   055E                     881 00124$:
                    0041    882 	C$vibes_lab_rx_5.0.c$362$3$3 ==.
                            883 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:362: DAC_COMMAND | (uint8) ((accSample & 0xF00) >> 8));
   055E E5 24               884 	mov	a,_accSample
   0560 74 0F               885 	mov	a,#0x0F
   0562 55 25               886 	anl	a,(_accSample + 1)
   0564 FA                  887 	mov	r2,a
   0565 90 17 C3            888 	mov	dptr,#_DAC_COMMAND
   0568 E4                  889 	clr	a
   0569 93                  890 	movc	a,@a+dptr
   056A 4A                  891 	orl	a,r2
   056B F5 82               892 	mov	dpl,a
   056D 75 D0 00            893 	mov	psw,#0x00
   0570 12 0D 65            894 	lcall	_dacSendByte
   0573 53 D0 E7            895 	anl	psw,#0xE7
   0576 43 D0 18            896 	orl	psw,#0x18
   0579 92 04               897 	mov  _ISR_T3_sloc0_1_0,c
   057B 72 02               898 	orl	c,_dacNAKd
   057D 92 02               899 	mov	_dacNAKd,c
                    0062    900 	C$vibes_lab_rx_5.0.c$363$3$3 ==.
                            901 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:363: dacNAKd |= dacSendByte((uint8) (accSample & 0xFF));
   057F AA 24               902 	mov	r2,_accSample
   0581 E5 25               903 	mov	a,(_accSample + 1)
   0583 8A 82               904 	mov	dpl,r2
   0585 75 D0 00            905 	mov	psw,#0x00
   0588 12 0D 65            906 	lcall	_dacSendByte
   058B 53 D0 E7            907 	anl	psw,#0xE7
   058E 43 D0 18            908 	orl	psw,#0x18
   0591 92 04               909 	mov  _ISR_T3_sloc0_1_0,c
   0593 72 02               910 	orl	c,_dacNAKd
   0595 92 02               911 	mov	_dacNAKd,c
                    007A    912 	C$vibes_lab_rx_5.0.c$367$3$3 ==.
                            913 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:367: if(isrCounter)
   0597 E5 27               914 	mov	a,_isrCounter
   0599 60 3C               915 	jz	00102$
                    007E    916 	C$vibes_lab_rx_5.0.c$369$4$4 ==.
                            917 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:369: accSample = (uint16) packet[++sampleIndex]
   059B 05 26               918 	inc	_sampleIndex
   059D 78 00               919 	mov	r0,#_packet
   059F E2                  920 	movx	a,@r0
   05A0 25 26               921 	add	a,_sampleIndex
   05A2 F5 82               922 	mov	dpl,a
   05A4 08                  923 	inc	r0
   05A5 E2                  924 	movx	a,@r0
   05A6 34 00               925 	addc	a,#0x00
   05A8 F5 83               926 	mov	dph,a
   05AA E0                  927 	movx	a,@dptr
   05AB FA                  928 	mov	r2,a
   05AC 7B 00               929 	mov	r3,#0x00
                    0091    930 	C$vibes_lab_rx_5.0.c$370$4$4 ==.
                            931 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:370: | ((uint16) (packet[++sampleIndex] & 0xF0)) << 4;
   05AE 05 26               932 	inc	_sampleIndex
   05B0 78 00               933 	mov	r0,#_packet
   05B2 E2                  934 	movx	a,@r0
   05B3 25 26               935 	add	a,_sampleIndex
   05B5 F5 82               936 	mov	dpl,a
   05B7 08                  937 	inc	r0
   05B8 E2                  938 	movx	a,@r0
   05B9 34 00               939 	addc	a,#0x00
   05BB F5 83               940 	mov	dph,a
   05BD E0                  941 	movx	a,@dptr
   05BE FC                  942 	mov	r4,a
   05BF 53 1C F0            943 	anl	ar4,#0xF0
   05C2 E4                  944 	clr	a
   05C3 CC                  945 	xch	a,r4
   05C4 C4                  946 	swap	a
   05C5 CC                  947 	xch	a,r4
   05C6 6C                  948 	xrl	a,r4
   05C7 CC                  949 	xch	a,r4
   05C8 54 F0               950 	anl	a,#0xf0
   05CA CC                  951 	xch	a,r4
   05CB 6C                  952 	xrl	a,r4
   05CC FD                  953 	mov	r5,a
   05CD EC                  954 	mov	a,r4
   05CE 4A                  955 	orl	a,r2
   05CF F5 24               956 	mov	_accSample,a
   05D1 ED                  957 	mov	a,r5
   05D2 4B                  958 	orl	a,r3
   05D3 F5 25               959 	mov	(_accSample + 1),a
   05D5 80 30               960 	sjmp	00103$
   05D7                     961 00102$:
                    00BA    962 	C$vibes_lab_rx_5.0.c$374$4$5 ==.
                            963 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:374: accSample = ((uint16) (packet[sampleIndex] & 0x0F)) << 8
   05D7 78 00               964 	mov	r0,#_packet
   05D9 E2                  965 	movx	a,@r0
   05DA 25 26               966 	add	a,_sampleIndex
   05DC F5 82               967 	mov	dpl,a
   05DE 08                  968 	inc	r0
   05DF E2                  969 	movx	a,@r0
   05E0 34 00               970 	addc	a,#0x00
   05E2 F5 83               971 	mov	dph,a
   05E4 E0                  972 	movx	a,@dptr
   05E5 FA                  973 	mov	r2,a
   05E6 53 1A 0F            974 	anl	ar2,#0x0F
   05E9 8A 1B               975 	mov	ar3,r2
   05EB 7A 00               976 	mov	r2,#0x00
                    00D0    977 	C$vibes_lab_rx_5.0.c$375$4$5 ==.
                            978 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:375: | (uint16) packet[++sampleIndex];
   05ED 05 26               979 	inc	_sampleIndex
   05EF 78 00               980 	mov	r0,#_packet
   05F1 E2                  981 	movx	a,@r0
   05F2 25 26               982 	add	a,_sampleIndex
   05F4 F5 82               983 	mov	dpl,a
   05F6 08                  984 	inc	r0
   05F7 E2                  985 	movx	a,@r0
   05F8 34 00               986 	addc	a,#0x00
   05FA F5 83               987 	mov	dph,a
   05FC E0                  988 	movx	a,@dptr
   05FD FC                  989 	mov	r4,a
   05FE 7D 00               990 	mov	r5,#0x00
   0600 4A                  991 	orl	a,r2
   0601 F5 24               992 	mov	_accSample,a
   0603 ED                  993 	mov	a,r5
   0604 4B                  994 	orl	a,r3
   0605 F5 25               995 	mov	(_accSample + 1),a
   0607                     996 00103$:
                    00EA    997 	C$vibes_lab_rx_5.0.c$379$3$3 ==.
                            998 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:379: isrCounter ^= 1;
   0607 63 27 01            999 	xrl	_isrCounter,#0x01
                    00ED   1000 	C$vibes_lab_rx_5.0.c$382$3$3 ==.
                           1001 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:382: if(sampleIndex == RADIO_PAYLOAD_SIZE)
   060A 74 96              1002 	mov	a,#0x96
   060C B5 26 2B           1003 	cjne	a,_sampleIndex,00111$
                    00F2   1004 	C$vibes_lab_rx_5.0.c$384$4$6 ==.
                           1005 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:384: radioRxDoneWithPacket(); // Release current packet
   060F 75 D0 00           1006 	mov	psw,#0x00
   0612 12 09 56           1007 	lcall	_radioRxDoneWithPacket
                    00F8   1008 	C$vibes_lab_rx_5.0.c$385$4$6 ==.
                           1009 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:385: packet = radioRxCurrentPacket(); // get next packet to process
   0615 75 D0 00           1010 	mov	psw,#0x00
   0618 12 09 12           1011 	lcall	_radioRxCurrentPacket
   061B 75 D0 18           1012 	mov	psw,#0x18
   061E E5 82              1013 	mov	a,dpl
   0620 85 83 F0           1014 	mov	b,dph
   0623 78 00              1015 	mov	r0,#_packet
   0625 F2                 1016 	movx	@r0,a
   0626 08                 1017 	inc	r0
   0627 E5 F0              1018 	mov	a,b
   0629 F2                 1019 	movx	@r0,a
                    010D   1020 	C$vibes_lab_rx_5.0.c$386$4$6 ==.
                           1021 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:386: sampleIndex = 0; // reset sampleIndex
   062A 75 26 00           1022 	mov	_sampleIndex,#0x00
   062D 80 0B              1023 	sjmp	00111$
   062F                    1024 00107$:
                    0112   1025 	C$vibes_lab_rx_5.0.c$393$3$7 ==.
                           1026 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:393: dacStop(); // DAC will hold at last sample sent to it;
   062F 75 D0 00           1027 	mov	psw,#0x00
   0632 12 0D 60           1028 	lcall	_dacStop
   0635 75 D0 18           1029 	mov	psw,#0x18
                    011B   1030 	C$vibes_lab_rx_5.0.c$394$3$7 ==.
                           1031 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:394: lostSample = TRUE;
   0638 D2 01              1032 	setb	_lostSample
   063A                    1033 00111$:
                    011D   1034 	C$vibes_lab_rx_5.0.c$399$1$1 ==.
                           1035 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:399: T3IE = 1;
   063A D2 BB              1036 	setb	_T3IE
   063C D0 D0              1037 	pop	psw
   063E D0 01              1038 	pop	(0+1)
   0640 D0 00              1039 	pop	(0+0)
   0642 D0 07              1040 	pop	(0+7)
   0644 D0 06              1041 	pop	(0+6)
   0646 D0 05              1042 	pop	(0+5)
   0648 D0 04              1043 	pop	(0+4)
   064A D0 03              1044 	pop	(0+3)
   064C D0 02              1045 	pop	(0+2)
   064E D0 83              1046 	pop	dph
   0650 D0 82              1047 	pop	dpl
   0652 D0 F0              1048 	pop	b
   0654 D0 E0              1049 	pop	acc
   0656 D0 23              1050 	pop	bits
                    013B   1051 	C$vibes_lab_rx_5.0.c$400$1$1 ==.
                    013B   1052 	XG$ISR_T3$0$0 ==.
   0658 32                 1053 	reti
                           1054 ;------------------------------------------------------------
                           1055 ;Allocation info for local variables in function 'updateLeds'
                           1056 ;------------------------------------------------------------
                           1057 ;------------------------------------------------------------
                    013C   1058 	Fvibes_lab_rx_5_0$updateLeds$0$0 ==.
                    013C   1059 	C$vibes_lab_rx_5.0.c$416$1$1 ==.
                           1060 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:416: static void updateLeds()
                           1061 ;	-----------------------------------------
                           1062 ;	 function updateLeds
                           1063 ;	-----------------------------------------
   0659                    1064 _updateLeds:
                    0002   1065 	ar2 = 0x02
                    0003   1066 	ar3 = 0x03
                    0004   1067 	ar4 = 0x04
                    0005   1068 	ar5 = 0x05
                    0006   1069 	ar6 = 0x06
                    0007   1070 	ar7 = 0x07
                    0000   1071 	ar0 = 0x00
                    0001   1072 	ar1 = 0x01
                    013C   1073 	C$vibes_lab_rx_5.0.c$418$1$1 ==.
                           1074 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:418: usbShowStatusWithGreenLed(); // USB connected
   0659 12 17 3D           1075 	lcall	_usbShowStatusWithGreenLed
                    013F   1076 	C$vibes_lab_rx_5.0.c$419$2$2 ==.
                           1077 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:419: LED_YELLOW(vinPowerPresent());
   065C 12 0E 54           1078 	lcall	_vinPowerPresent
   065F 50 05              1079 	jnc	00107$
   0661 43 FF 04           1080 	orl	_P2DIR,#0x04
   0664 80 03              1081 	sjmp	00108$
   0666                    1082 00107$:
   0666 53 FF FB           1083 	anl	_P2DIR,#0xFB
   0669                    1084 00108$:
                    014C   1085 	C$vibes_lab_rx_5.0.c$423$1$1 ==.
                           1086 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:423: if((getMs() - operationalTimeStamp > 500) && sendReceiveComplete
   0669 12 0C B9           1087 	lcall	_getMs
   066C AA 82              1088 	mov	r2,dpl
   066E AB 83              1089 	mov	r3,dph
   0670 AC F0              1090 	mov	r4,b
   0672 FD                 1091 	mov	r5,a
   0673 EA                 1092 	mov	a,r2
   0674 C3                 1093 	clr	c
   0675 95 28              1094 	subb	a,_operationalTimeStamp
   0677 FA                 1095 	mov	r2,a
   0678 EB                 1096 	mov	a,r3
   0679 95 29              1097 	subb	a,(_operationalTimeStamp + 1)
   067B FB                 1098 	mov	r3,a
   067C EC                 1099 	mov	a,r4
   067D 95 2A              1100 	subb	a,(_operationalTimeStamp + 2)
   067F FC                 1101 	mov	r4,a
   0680 ED                 1102 	mov	a,r5
   0681 95 2B              1103 	subb	a,(_operationalTimeStamp + 3)
   0683 FD                 1104 	mov	r5,a
   0684 C3                 1105 	clr	c
   0685 74 F4              1106 	mov	a,#0xF4
   0687 9A                 1107 	subb	a,r2
   0688 74 01              1108 	mov	a,#0x01
   068A 9B                 1109 	subb	a,r3
   068B E4                 1110 	clr	a
   068C 9C                 1111 	subb	a,r4
   068D E4                 1112 	clr	a
   068E 9D                 1113 	subb	a,r5
   068F 50 19              1114 	jnc	00105$
   0691 30 07 16           1115 	jnb	_sendReceiveComplete,00105$
                    0177   1116 	C$vibes_lab_rx_5.0.c$424$1$1 ==.
                           1117 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:424: && !lostSample)
   0694 20 01 13           1118 	jb	_lostSample,00105$
                    017A   1119 	C$vibes_lab_rx_5.0.c$427$3$4 ==.
                           1120 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:427: LED_RED_TOGGLE();
   0697 63 FF 02           1121 	xrl	_P2DIR,#0x02
                    017D   1122 	C$vibes_lab_rx_5.0.c$430$2$3 ==.
                           1123 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:430: sendReceiveComplete = FALSE;
   069A C2 07              1124 	clr	_sendReceiveComplete
                    017F   1125 	C$vibes_lab_rx_5.0.c$431$2$3 ==.
                           1126 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:431: operationalTimeStamp = getMs();
   069C 12 0C B9           1127 	lcall	_getMs
   069F 85 82 28           1128 	mov	_operationalTimeStamp,dpl
   06A2 85 83 29           1129 	mov	(_operationalTimeStamp + 1),dph
   06A5 85 F0 2A           1130 	mov	(_operationalTimeStamp + 2),b
   06A8 F5 2B              1131 	mov	(_operationalTimeStamp + 3),a
   06AA                    1132 00105$:
                    018D   1133 	C$vibes_lab_rx_5.0.c$433$2$1 ==.
                    018D   1134 	XFvibes_lab_rx_5_0$updateLeds$0$0 ==.
   06AA 22                 1135 	ret
                           1136 ;------------------------------------------------------------
                           1137 ;Allocation info for local variables in function 'main'
                           1138 ;------------------------------------------------------------
                           1139 ;------------------------------------------------------------
                    018E   1140 	G$main$0$0 ==.
                    018E   1141 	C$vibes_lab_rx_5.0.c$449$2$1 ==.
                           1142 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:449: void main()
                           1143 ;	-----------------------------------------
                           1144 ;	 function main
                           1145 ;	-----------------------------------------
   06AB                    1146 _main:
                    018E   1147 	C$vibes_lab_rx_5.0.c$452$1$1 ==.
                           1148 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:452: initComplete = FALSE;
   06AB C2 03              1149 	clr	_initComplete
                    0190   1150 	C$vibes_lab_rx_5.0.c$455$1$1 ==.
                           1151 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:455: systemInit();
   06AD 12 0D A2           1152 	lcall	_systemInit
                    0193   1153 	C$vibes_lab_rx_5.0.c$456$1$1 ==.
                           1154 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:456: usbInit();
   06B0 12 11 09           1155 	lcall	_usbInit
                    0196   1156 	C$vibes_lab_rx_5.0.c$458$1$1 ==.
                           1157 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:458: radioInit(RECEIVER);
   06B3 C2 0E              1158 	clr	_radioInit_PARM_1
   06B5 12 07 20           1159 	lcall	_radioInit
                    019B   1160 	C$vibes_lab_rx_5.0.c$459$1$1 ==.
                           1161 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:459: isrTimerInit();
   06B8 12 0D 3D           1162 	lcall	_isrTimerInit
                    019E   1163 	C$vibes_lab_rx_5.0.c$460$1$1 ==.
                           1164 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:460: dacInit();
   06BB 12 0D 4C           1165 	lcall	_dacInit
                    01A1   1166 	C$vibes_lab_rx_5.0.c$463$1$1 ==.
                           1167 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:463: sufficientRxBuffer = FALSE;
   06BE C2 00              1168 	clr	_sufficientRxBuffer
                    01A3   1169 	C$vibes_lab_rx_5.0.c$464$1$1 ==.
                           1170 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:464: lostSample = FALSE;
   06C0 C2 01              1171 	clr	_lostSample
                    01A5   1172 	C$vibes_lab_rx_5.0.c$465$1$1 ==.
                           1173 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:465: dacNAKd = FALSE;
   06C2 C2 02              1174 	clr	_dacNAKd
                    01A7   1175 	C$vibes_lab_rx_5.0.c$467$1$1 ==.
                           1176 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:467: packet = 0;
   06C4 78 00              1177 	mov	r0,#_packet
   06C6 E4                 1178 	clr	a
   06C7 F2                 1179 	movx	@r0,a
   06C8 08                 1180 	inc	r0
   06C9 F2                 1181 	movx	@r0,a
                    01AD   1182 	C$vibes_lab_rx_5.0.c$468$1$1 ==.
                           1183 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:468: sampleIndex = 0;
   06CA 75 26 00           1184 	mov	_sampleIndex,#0x00
                    01B0   1185 	C$vibes_lab_rx_5.0.c$469$1$1 ==.
                           1186 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:469: isrCounter = TRUE;
   06CD 75 27 01           1187 	mov	_isrCounter,#0x01
                    01B3   1188 	C$vibes_lab_rx_5.0.c$470$1$1 ==.
                           1189 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:470: accSample = 1;
   06D0 75 24 01           1190 	mov	_accSample,#0x01
   06D3 75 25 00           1191 	mov	(_accSample + 1),#0x00
                    01B9   1192 	C$vibes_lab_rx_5.0.c$472$1$1 ==.
                           1193 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:472: operationalTimeStamp = getMs();
   06D6 12 0C B9           1194 	lcall	_getMs
   06D9 85 82 28           1195 	mov	_operationalTimeStamp,dpl
   06DC 85 83 29           1196 	mov	(_operationalTimeStamp + 1),dph
   06DF 85 F0 2A           1197 	mov	(_operationalTimeStamp + 2),b
   06E2 F5 2B              1198 	mov	(_operationalTimeStamp + 3),a
                    01C7   1199 	C$vibes_lab_rx_5.0.c$475$1$1 ==.
                           1200 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:475: initComplete = TRUE;
   06E4 D2 03              1201 	setb	_initComplete
                    01C9   1202 	C$vibes_lab_rx_5.0.c$478$1$1 ==.
                           1203 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:478: while(TRUE)
   06E6                    1204 00106$:
                    01C9   1205 	C$vibes_lab_rx_5.0.c$480$2$2 ==.
                           1206 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:480: updateLeds(); // blinks red LED every 50ms if we are receiving packets
   06E6 12 06 59           1207 	lcall	_updateLeds
                    01CC   1208 	C$vibes_lab_rx_5.0.c$481$2$2 ==.
                           1209 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:481: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
   06E9 12 0D AE           1210 	lcall	_boardService
                    01CF   1211 	C$vibes_lab_rx_5.0.c$482$2$2 ==.
                           1212 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:482: usbComService(); // so we can start bootloader from Wixel config GUI
   06EC 12 0F AE           1213 	lcall	_usbComService
                    01D2   1214 	C$vibes_lab_rx_5.0.c$485$2$2 ==.
                           1215 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:485: if(!sufficientRxBuffer)
   06EF 20 00 F4           1216 	jb	_sufficientRxBuffer,00106$
                    01D5   1217 	C$vibes_lab_rx_5.0.c$489$3$3 ==.
                           1218 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:489: if(radioRxCheckRxBuffer(PACKET_BUFFER_SIZE - 2))
   06F2 75 82 12           1219 	mov	dpl,#0x12
   06F5 12 09 30           1220 	lcall	_radioRxCheckRxBuffer
   06F8 50 EC              1221 	jnc	00106$
                    01DD   1222 	C$vibes_lab_rx_5.0.c$492$4$4 ==.
                           1223 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:492: packet = radioRxCurrentPacket();
   06FA 12 09 12           1224 	lcall	_radioRxCurrentPacket
   06FD E5 82              1225 	mov	a,dpl
   06FF 85 83 F0           1226 	mov	b,dph
   0702 78 00              1227 	mov	r0,#_packet
   0704 F2                 1228 	movx	@r0,a
   0705 08                 1229 	inc	r0
   0706 E5 F0              1230 	mov	a,b
   0708 F2                 1231 	movx	@r0,a
                    01EC   1232 	C$vibes_lab_rx_5.0.c$495$4$4 ==.
                           1233 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:495: dacStart();
   0709 12 0D 5B           1234 	lcall	_dacStart
                    01EF   1235 	C$vibes_lab_rx_5.0.c$496$4$4 ==.
                           1236 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:496: dacNAKd |= dacSendByte(DAC_ADDRESS);
   070C 90 17 C2           1237 	mov	dptr,#_DAC_ADDRESS
   070F E4                 1238 	clr	a
   0710 93                 1239 	movc	a,@a+dptr
   0711 F5 82              1240 	mov	dpl,a
   0713 12 0D 65           1241 	lcall	_dacSendByte
   0716 92 05              1242 	mov  _main_sloc0_1_0,c
   0718 72 02              1243 	orl	c,_dacNAKd
   071A 92 02              1244 	mov	_dacNAKd,c
                    01FF   1245 	C$vibes_lab_rx_5.0.c$499$4$4 ==.
                           1246 ;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:499: sufficientRxBuffer = TRUE;
   071C D2 00              1247 	setb	_sufficientRxBuffer
                    0201   1248 	C$vibes_lab_rx_5.0.c$503$1$1 ==.
                    0201   1249 	XG$main$0$0 ==.
   071E 80 C6              1250 	sjmp	00106$
                           1251 	.area CSEG    (CODE)
                           1252 	.area CONST   (CODE)
                    0000   1253 Fvibes_lab_rx_5_0$DAC_ADDRESS$0$0 == .
   17C2                    1254 _DAC_ADDRESS:
   17C2 C0                 1255 	.db #0xC0	; 192
                    0001   1256 Fvibes_lab_rx_5_0$DAC_COMMAND$0$0 == .
   17C3                    1257 _DAC_COMMAND:
   17C3 00                 1258 	.db #0x00	; 0
                           1259 	.area XINIT   (CODE)
                           1260 	.area CABS    (ABS,CODE)
