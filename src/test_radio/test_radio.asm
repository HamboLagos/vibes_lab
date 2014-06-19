;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Dec 10 17:37:58 2012
;--------------------------------------------------------
	.module test_radio
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ISR_T3
	.globl _reportResults
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftest_radio$P0$0$0 == 0x0080
_P0	=	0x0080
Ftest_radio$SP$0$0 == 0x0081
_SP	=	0x0081
Ftest_radio$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Ftest_radio$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Ftest_radio$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Ftest_radio$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Ftest_radio$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Ftest_radio$PCON$0$0 == 0x0087
_PCON	=	0x0087
Ftest_radio$TCON$0$0 == 0x0088
_TCON	=	0x0088
Ftest_radio$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Ftest_radio$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Ftest_radio$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Ftest_radio$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Ftest_radio$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Ftest_radio$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Ftest_radio$P1$0$0 == 0x0090
_P1	=	0x0090
Ftest_radio$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Ftest_radio$DPS$0$0 == 0x0092
_DPS	=	0x0092
Ftest_radio$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Ftest_radio$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Ftest_radio$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Ftest_radio$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Ftest_radio$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Ftest_radio$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Ftest_radio$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Ftest_radio$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Ftest_radio$P2$0$0 == 0x00a0
_P2	=	0x00a0
Ftest_radio$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Ftest_radio$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Ftest_radio$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Ftest_radio$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Ftest_radio$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Ftest_radio$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Ftest_radio$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Ftest_radio$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Ftest_radio$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Ftest_radio$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Ftest_radio$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Ftest_radio$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Ftest_radio$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Ftest_radio$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Ftest_radio$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Ftest_radio$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Ftest_radio$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Ftest_radio$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Ftest_radio$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Ftest_radio$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Ftest_radio$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Ftest_radio$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Ftest_radio$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Ftest_radio$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Ftest_radio$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Ftest_radio$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Ftest_radio$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Ftest_radio$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Ftest_radio$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Ftest_radio$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Ftest_radio$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Ftest_radio$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Ftest_radio$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Ftest_radio$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Ftest_radio$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Ftest_radio$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Ftest_radio$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Ftest_radio$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Ftest_radio$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Ftest_radio$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Ftest_radio$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Ftest_radio$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Ftest_radio$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Ftest_radio$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Ftest_radio$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Ftest_radio$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Ftest_radio$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Ftest_radio$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Ftest_radio$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Ftest_radio$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Ftest_radio$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Ftest_radio$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Ftest_radio$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Ftest_radio$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Ftest_radio$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Ftest_radio$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Ftest_radio$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Ftest_radio$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Ftest_radio$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Ftest_radio$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Ftest_radio$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Ftest_radio$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Ftest_radio$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Ftest_radio$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Ftest_radio$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Ftest_radio$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Ftest_radio$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Ftest_radio$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Ftest_radio$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Ftest_radio$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Ftest_radio$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Ftest_radio$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Ftest_radio$B$0$0 == 0x00f0
_B	=	0x00f0
Ftest_radio$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Ftest_radio$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Ftest_radio$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Ftest_radio$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Ftest_radio$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Ftest_radio$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Ftest_radio$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Ftest_radio$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Ftest_radio$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Ftest_radio$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Ftest_radio$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Ftest_radio$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Ftest_radio$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Ftest_radio$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Ftest_radio$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Ftest_radio$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Ftest_radio$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Ftest_radio$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Ftest_radio$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftest_radio$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Ftest_radio$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Ftest_radio$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Ftest_radio$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Ftest_radio$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Ftest_radio$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Ftest_radio$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Ftest_radio$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Ftest_radio$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Ftest_radio$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Ftest_radio$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Ftest_radio$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Ftest_radio$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Ftest_radio$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Ftest_radio$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Ftest_radio$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Ftest_radio$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Ftest_radio$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Ftest_radio$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Ftest_radio$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Ftest_radio$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Ftest_radio$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Ftest_radio$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Ftest_radio$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Ftest_radio$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Ftest_radio$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Ftest_radio$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Ftest_radio$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Ftest_radio$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Ftest_radio$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Ftest_radio$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Ftest_radio$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Ftest_radio$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Ftest_radio$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Ftest_radio$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Ftest_radio$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Ftest_radio$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Ftest_radio$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Ftest_radio$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Ftest_radio$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Ftest_radio$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Ftest_radio$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Ftest_radio$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Ftest_radio$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Ftest_radio$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Ftest_radio$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Ftest_radio$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Ftest_radio$EA$0$0 == 0x00af
_EA	=	0x00af
Ftest_radio$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Ftest_radio$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Ftest_radio$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Ftest_radio$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Ftest_radio$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Ftest_radio$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Ftest_radio$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Ftest_radio$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Ftest_radio$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Ftest_radio$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Ftest_radio$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Ftest_radio$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Ftest_radio$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Ftest_radio$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Ftest_radio$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Ftest_radio$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Ftest_radio$P$0$0 == 0x00d0
_P	=	0x00d0
Ftest_radio$F1$0$0 == 0x00d1
_F1	=	0x00d1
Ftest_radio$OV$0$0 == 0x00d2
_OV	=	0x00d2
Ftest_radio$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Ftest_radio$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Ftest_radio$F0$0$0 == 0x00d5
_F0	=	0x00d5
Ftest_radio$AC$0$0 == 0x00d6
_AC	=	0x00d6
Ftest_radio$CY$0$0 == 0x00d7
_CY	=	0x00d7
Ftest_radio$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Ftest_radio$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Ftest_radio$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Ftest_radio$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Ftest_radio$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Ftest_radio$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Ftest_radio$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Ftest_radio$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Ftest_radio$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Ftest_radio$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Ftest_radio$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Ftest_radio$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Ftest_radio$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Ftest_radio$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Ftest_radio$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Ftest_radio$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Ftest_radio$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Ftest_radio$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Ftest_radio$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Ftest_radio$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Ftest_radio$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Ftest_radio$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Ftest_radio$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Ftest_radio$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Ftest_radio$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Ftest_radio$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Ftest_radio$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Ftest_radio$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Ftest_radio$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Ftest_radio$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Ftest_radio$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Ftest_radio$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Ftest_radio$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Ftest_radio$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Ftest_radio$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Ftest_radio$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Ftest_radio$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Ftest_radio$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Ftest_radio$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Ftest_radio$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Ftest_radio$accSample$0$0==.
_accSample:
	.ds 2
Ftest_radio$sampleIndex$0$0==.
_sampleIndex:
	.ds 1
Ftest_radio$isrCounter$0$0==.
_isrCounter:
	.ds 1
Ftest_radio$operationalTimeStamp$0$0==.
_operationalTimeStamp:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
Ftest_radio$sufficientRxBuffer$0$0==.
_sufficientRxBuffer:
	.ds 1
Ftest_radio$lostSample$0$0==.
_lostSample:
	.ds 1
Ftest_radio$dacNAKd$0$0==.
_dacNAKd:
	.ds 1
Ftest_radio$initComplete$0$0==.
_initComplete:
	.ds 1
LISR_T3$sloc0$1$0==.
_ISR_T3_sloc0_1_0:
	.ds 1
Lmain$sloc0$1$0==.
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Ftest_radio$packet$0$0==.
_packet:
	.ds 2
Ftest_radio$cause$0$0==.
_cause:
	.ds 1
Ftest_radio$dummySample$0$0==.
_dummySample:
	.ds 2
Ftest_radio$packetID$0$0==.
_packetID:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Ftest_radio$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Ftest_radio$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Ftest_radio$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Ftest_radio$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Ftest_radio$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Ftest_radio$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Ftest_radio$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Ftest_radio$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Ftest_radio$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Ftest_radio$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Ftest_radio$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Ftest_radio$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Ftest_radio$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Ftest_radio$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Ftest_radio$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Ftest_radio$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Ftest_radio$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Ftest_radio$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Ftest_radio$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Ftest_radio$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Ftest_radio$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Ftest_radio$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Ftest_radio$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Ftest_radio$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Ftest_radio$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Ftest_radio$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Ftest_radio$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Ftest_radio$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Ftest_radio$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Ftest_radio$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Ftest_radio$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Ftest_radio$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Ftest_radio$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Ftest_radio$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Ftest_radio$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Ftest_radio$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Ftest_radio$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Ftest_radio$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Ftest_radio$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Ftest_radio$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Ftest_radio$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Ftest_radio$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Ftest_radio$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Ftest_radio$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Ftest_radio$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Ftest_radio$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Ftest_radio$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Ftest_radio$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Ftest_radio$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Ftest_radio$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Ftest_radio$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Ftest_radio$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Ftest_radio$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Ftest_radio$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Ftest_radio$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Ftest_radio$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Ftest_radio$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Ftest_radio$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Ftest_radio$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Ftest_radio$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Ftest_radio$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Ftest_radio$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Ftest_radio$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Ftest_radio$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Ftest_radio$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Ftest_radio$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Ftest_radio$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Ftest_radio$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Ftest_radio$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Ftest_radio$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Ftest_radio$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Ftest_radio$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Ftest_radio$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Ftest_radio$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Ftest_radio$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Ftest_radio$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Ftest_radio$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Ftest_radio$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Ftest_radio$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Ftest_radio$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Ftest_radio$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
LreportResults$buffer$2$2==.
_reportResults_buffer_2_2:
	.ds 64
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_T3
	.ds	5
	ljmp	_ISR_T4
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_RF
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	G$main$0$0 ==.
	C$test_radio.c$105$1$1 ==.
;	src/test_radio/test_radio.c:105: static volatile uint8 cause = 0;
	mov	r0,#_cause
	clr	a
	movx	@r0,a
	G$main$0$0 ==.
	C$test_radio.c$107$1$1 ==.
;	src/test_radio/test_radio.c:107: static volatile uint16 dummySample = 0;
	mov	r0,#_dummySample
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$test_radio.c$109$1$1 ==.
;	src/test_radio/test_radio.c:109: static volatile uint8 packetID = 0;
	mov	r0,#_packetID
	clr	a
	movx	@r0,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'reportResults'
;------------------------------------------------------------
;buffer                    Allocated with name '_reportResults_buffer_2_2'
;------------------------------------------------------------
	G$reportResults$0$0 ==.
	C$test_radio.c$111$0$0 ==.
;	src/test_radio/test_radio.c:111: void reportResults()
;	-----------------------------------------
;	 function reportResults
;	-----------------------------------------
_reportResults:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$test_radio.c$113$1$1 ==.
;	src/test_radio/test_radio.c:113: if(usbComTxAvailable() > 64)
	lcall	_usbComTxAvailable
	mov	r2,dpl
	mov	a,#0x40
	cjne	a,ar2,00122$
00122$:
	jc	00123$
	ret
00123$:
	C$test_radio.c$118$2$2 ==.
;	src/test_radio/test_radio.c:118: if(cause == PACKET_BUFFER_EMPTY_ERROR)
	mov	r0,#_cause
	movx	a,@r0
	cjne	a,#0x01,00111$
	C$test_radio.c$120$3$3 ==.
;	src/test_radio/test_radio.c:120: bufferLength = sprintf(buffer, "Packet Buffer Empty");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_reportResults_buffer_2_2
	push	acc
	mov	a,#(_reportResults_buffer_2_2 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r2,dpl
	mov	r3,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	00112$
00111$:
	C$test_radio.c$122$2$2 ==.
;	src/test_radio/test_radio.c:122: else if(cause == DAC_NAK_ERROR)
	mov	r0,#_cause
	movx	a,@r0
	cjne	a,#0x02,00108$
	C$test_radio.c$124$3$4 ==.
;	src/test_radio/test_radio.c:124: bufferLength = sprintf(buffer, "DAC NAK'd");
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_reportResults_buffer_2_2
	push	acc
	mov	a,#(_reportResults_buffer_2_2 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	ar2,r3
	ljmp	00112$
00108$:
	C$test_radio.c$126$2$2 ==.
;	src/test_radio/test_radio.c:126: else if(cause == SAMPLE_ERROR)
	mov	r0,#_cause
	movx	a,@r0
	cjne	a,#0x03,00105$
	C$test_radio.c$130$3$5 ==.
;	src/test_radio/test_radio.c:130: sampleIndex, accSample, dummySample);
	mov	r3,_sampleIndex
	mov	r4,#0x00
	C$test_radio.c$129$3$5 ==.
;	src/test_radio/test_radio.c:129: buffer, "Sample Error\r\n packet[%d]: %d\r\n expected: %d",
	mov	r0,#_dummySample
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	push	_accSample
	push	(_accSample + 1)
	push	ar3
	push	ar4
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_reportResults_buffer_2_2
	push	acc
	mov	a,#(_reportResults_buffer_2_2 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	mov	ar2,r3
	sjmp	00112$
00105$:
	C$test_radio.c$132$2$2 ==.
;	src/test_radio/test_radio.c:132: else if(cause == PACKET_ID_ERROR)
	mov	r0,#_cause
	movx	a,@r0
	cjne	a,#0x04,00102$
	C$test_radio.c$134$3$6 ==.
;	src/test_radio/test_radio.c:134: bufferLength = sprintf(buffer, "Packet ID Error");
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_reportResults_buffer_2_2
	push	acc
	mov	a,#(_reportResults_buffer_2_2 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	ar2,r3
	sjmp	00112$
00102$:
	C$test_radio.c$138$3$7 ==.
;	src/test_radio/test_radio.c:138: bufferLength = sprintf(buffer, "Unknown Error");
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_reportResults_buffer_2_2
	push	acc
	mov	a,#(_reportResults_buffer_2_2 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	ar2,r3
00112$:
	C$test_radio.c$141$2$2 ==.
;	src/test_radio/test_radio.c:141: usbComTxSend(buffer, bufferLength);
	mov	r0,#_usbComTxSend_PARM_2
	mov	a,r2
	movx	@r0,a
	mov	dptr,#_reportResults_buffer_2_2
	C$test_radio.c$143$2$1 ==.
	XG$reportResults$0$0 ==.
	ljmp	_usbComTxSend
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_T3'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ISR_T3$0$0 ==.
	C$test_radio.c$165$2$1 ==.
;	src/test_radio/test_radio.c:165: */ISR(T3, 3)
;	-----------------------------------------
;	 function ISR_T3
;	-----------------------------------------
_ISR_T3:
	ar2 = 0x1a
	ar3 = 0x1b
	ar4 = 0x1c
	ar5 = 0x1d
	ar6 = 0x1e
	ar7 = 0x1f
	ar0 = 0x18
	ar1 = 0x19
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x18
	C$test_radio.c$169$1$1 ==.
;	src/test_radio/test_radio.c:169: T3IE = 0;
	clr	_T3IE
	C$test_radio.c$172$1$1 ==.
;	src/test_radio/test_radio.c:172: if(initComplete && sufficientRxBuffer)
	jb	_initComplete,00142$
	ljmp	00123$
00142$:
	jb	_sufficientRxBuffer,00143$
	ljmp	00123$
00143$:
	C$test_radio.c$176$2$2 ==.
;	src/test_radio/test_radio.c:176: if(!dacNAKd && packet)
	jnb	_dacNAKd,00144$
	ljmp	00119$
00144$:
	mov	r0,#_packet
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00145$
	ljmp	00119$
00145$:
	C$test_radio.c$181$3$3 ==.
;	src/test_radio/test_radio.c:181: DAC_COMMAND | (uint8) ((accSample & 0xF00) >> 8));
	mov	a,_accSample
	mov	a,#0x0F
	anl	a,(_accSample + 1)
	mov	r2,a
	mov	dptr,#_DAC_COMMAND
	clr	a
	movc	a,@a+dptr
	orl	a,r2
	mov	dpl,a
	mov	psw,#0x00
	lcall	_dacSendByte
	anl	psw,#0xE7
	orl	psw,#0x18
	mov  _ISR_T3_sloc0_1_0,c
	orl	c,_dacNAKd
	mov	_dacNAKd,c
	C$test_radio.c$182$3$3 ==.
;	src/test_radio/test_radio.c:182: dacNAKd |= dacSendByte((uint8) (accSample & 0xFF));
	mov	r2,_accSample
	mov	a,(_accSample + 1)
	mov	dpl,r2
	mov	psw,#0x00
	lcall	_dacSendByte
	anl	psw,#0xE7
	orl	psw,#0x18
	mov  _ISR_T3_sloc0_1_0,c
	orl	c,_dacNAKd
	mov	_dacNAKd,c
	C$test_radio.c$184$3$3 ==.
;	src/test_radio/test_radio.c:184: if(dacNAKd)
	jnb	_dacNAKd,00102$
	C$test_radio.c$186$4$4 ==.
;	src/test_radio/test_radio.c:186: cause = DAC_NAK_ERROR;
	mov	r0,#_cause
	mov	a,#0x02
	movx	@r0,a
00102$:
	C$test_radio.c$191$3$3 ==.
;	src/test_radio/test_radio.c:191: if(isrCounter)
	mov	a,_isrCounter
	jz	00104$
	C$test_radio.c$193$4$5 ==.
;	src/test_radio/test_radio.c:193: accSample = (uint16) packet[++sampleIndex]
	inc	_sampleIndex
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	C$test_radio.c$194$4$5 ==.
;	src/test_radio/test_radio.c:194: | ((uint16) (packet[++sampleIndex] & 0xF0)) << 4;
	inc	_sampleIndex
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0xF0
	clr	a
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	orl	a,r2
	mov	_accSample,a
	mov	a,r5
	orl	a,r3
	mov	(_accSample + 1),a
	sjmp	00105$
00104$:
	C$test_radio.c$198$4$6 ==.
;	src/test_radio/test_radio.c:198: accSample = ((uint16) (packet[sampleIndex] & 0x0F)) << 8
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x0F
	mov	ar3,r2
	mov	r2,#0x00
	C$test_radio.c$199$4$6 ==.
;	src/test_radio/test_radio.c:199: | (uint16) packet[++sampleIndex];
	inc	_sampleIndex
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	orl	a,r2
	mov	_accSample,a
	mov	a,r5
	orl	a,r3
	mov	(_accSample + 1),a
00105$:
	C$test_radio.c$203$3$3 ==.
;	src/test_radio/test_radio.c:203: if(dummySample == 2047)
	mov	r0,#_dummySample
	movx	a,@r0
	cjne	a,#0xFF,00148$
	inc	r0
	movx	a,@r0
	cjne	a,#0x07,00148$
	sjmp	00149$
00148$:
	sjmp	00107$
00149$:
	C$test_radio.c$205$4$7 ==.
;	src/test_radio/test_radio.c:205: dummySample = 0;
	mov	r0,#_dummySample
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	sjmp	00108$
00107$:
	C$test_radio.c$209$4$8 ==.
;	src/test_radio/test_radio.c:209: ++dummySample;
	mov	r0,#_dummySample
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
00108$:
	C$test_radio.c$213$3$3 ==.
;	src/test_radio/test_radio.c:213: if(accSample != dummySample)
	mov	r0,#_dummySample
	movx	a,@r0
	cjne	a,_accSample,00150$
	inc	r0
	movx	a,@r0
	cjne	a,(_accSample + 1),00150$
	sjmp	00110$
00150$:
	C$test_radio.c$215$4$9 ==.
;	src/test_radio/test_radio.c:215: cause = SAMPLE_ERROR;
	mov	r0,#_cause
	mov	a,#0x03
	movx	@r0,a
	C$test_radio.c$216$4$9 ==.
;	src/test_radio/test_radio.c:216: lostSample = TRUE;
	setb	_lostSample
00110$:
	C$test_radio.c$220$3$3 ==.
;	src/test_radio/test_radio.c:220: isrCounter ^= 1;
	xrl	_isrCounter,#0x01
	C$test_radio.c$223$3$3 ==.
;	src/test_radio/test_radio.c:223: if(sampleIndex == RADIO_PAYLOAD_SIZE)
	mov	a,#0x96
	cjne	a,_sampleIndex,00123$
	C$test_radio.c$226$4$10 ==.
;	src/test_radio/test_radio.c:226: if(packet[RADIO_PAYLOAD_SIZE + 1] != packetID)
	mov	r0,#_packet
	movx	a,@r0
	add	a,#0x97
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	r0,#_packetID
	movx	a,@r0
	cjne	a,ar2,00153$
	sjmp	00112$
00153$:
	C$test_radio.c$228$5$11 ==.
;	src/test_radio/test_radio.c:228: lostSample = TRUE;
	setb	_lostSample
	C$test_radio.c$229$5$11 ==.
;	src/test_radio/test_radio.c:229: cause = PACKET_ID_ERROR;
	mov	r0,#_cause
	mov	a,#0x04
	movx	@r0,a
	sjmp	00113$
00112$:
	C$test_radio.c$233$5$12 ==.
;	src/test_radio/test_radio.c:233: ++packetID;
	mov	r0,#_packetID
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
00113$:
	C$test_radio.c$236$4$10 ==.
;	src/test_radio/test_radio.c:236: radioRxDoneWithPacket(); // Release current packet
	mov	psw,#0x00
	lcall	_radioRxDoneWithPacket
	C$test_radio.c$237$4$10 ==.
;	src/test_radio/test_radio.c:237: packet = radioRxCurrentPacket(); // get next packet to process
	mov	psw,#0x00
	lcall	_radioRxCurrentPacket
	mov	psw,#0x18
	mov	r2,dpl
	mov	r3,dph
	mov	r0,#_packet
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	C$test_radio.c$238$4$10 ==.
;	src/test_radio/test_radio.c:238: sampleIndex = 0; // reset sampleIndex
	mov	_sampleIndex,#0x00
	C$test_radio.c$240$4$10 ==.
;	src/test_radio/test_radio.c:240: if(packet == 0)
	mov	a,r2
	orl	a,r3
	jnz	00123$
	C$test_radio.c$242$5$13 ==.
;	src/test_radio/test_radio.c:242: cause = PACKET_BUFFER_EMPTY_ERROR;
	mov	r0,#_cause
	mov	a,#0x01
	movx	@r0,a
	sjmp	00123$
00119$:
	C$test_radio.c$250$3$14 ==.
;	src/test_radio/test_radio.c:250: dacStop(); // DAC will hold at last sample sent to it;
	mov	psw,#0x00
	lcall	_dacStop
	mov	psw,#0x18
	C$test_radio.c$251$3$14 ==.
;	src/test_radio/test_radio.c:251: lostSample = TRUE;
	setb	_lostSample
00123$:
	C$test_radio.c$255$1$1 ==.
;	src/test_radio/test_radio.c:255: if(!lostSample)
	jb	_lostSample,00126$
	C$test_radio.c$258$2$15 ==.
;	src/test_radio/test_radio.c:258: T3IE = 1;
	setb	_T3IE
	sjmp	00128$
00126$:
	C$test_radio.c$262$2$16 ==.
;	src/test_radio/test_radio.c:262: reportResults();
	mov	psw,#0x00
	lcall	_reportResults
	mov	psw,#0x18
00128$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$test_radio.c$264$1$1 ==.
	XG$ISR_T3$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'updateLeds'
;------------------------------------------------------------
;------------------------------------------------------------
	Ftest_radio$updateLeds$0$0 ==.
	C$test_radio.c$280$1$1 ==.
;	src/test_radio/test_radio.c:280: static void updateLeds()
;	-----------------------------------------
;	 function updateLeds
;	-----------------------------------------
_updateLeds:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$test_radio.c$282$1$1 ==.
;	src/test_radio/test_radio.c:282: usbShowStatusWithGreenLed(); // USB connected
	lcall	_usbShowStatusWithGreenLed
	C$test_radio.c$283$2$2 ==.
;	src/test_radio/test_radio.c:283: LED_YELLOW(vinPowerPresent());
	lcall	_vinPowerPresent
	jnc	00107$
	orl	_P2DIR,#0x04
	sjmp	00108$
00107$:
	anl	_P2DIR,#0xFB
00108$:
	C$test_radio.c$287$1$1 ==.
;	src/test_radio/test_radio.c:287: if((getMs() - operationalTimeStamp > 500) && sendReceiveComplete
	lcall	_getMs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,r2
	clr	c
	subb	a,_operationalTimeStamp
	mov	r2,a
	mov	a,r3
	subb	a,(_operationalTimeStamp + 1)
	mov	r3,a
	mov	a,r4
	subb	a,(_operationalTimeStamp + 2)
	mov	r4,a
	mov	a,r5
	subb	a,(_operationalTimeStamp + 3)
	mov	r5,a
	clr	c
	mov	a,#0xF4
	subb	a,r2
	mov	a,#0x01
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00105$
	jnb	_sendReceiveComplete,00105$
	C$test_radio.c$288$1$1 ==.
;	src/test_radio/test_radio.c:288: && !lostSample)
	jb	_lostSample,00105$
	C$test_radio.c$291$3$4 ==.
;	src/test_radio/test_radio.c:291: LED_RED_TOGGLE();
	xrl	_P2DIR,#0x02
	C$test_radio.c$294$2$3 ==.
;	src/test_radio/test_radio.c:294: sendReceiveComplete = FALSE;
	clr	_sendReceiveComplete
	C$test_radio.c$295$2$3 ==.
;	src/test_radio/test_radio.c:295: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
00105$:
	C$test_radio.c$297$2$1 ==.
	XFtest_radio$updateLeds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$test_radio.c$313$2$1 ==.
;	src/test_radio/test_radio.c:313: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$test_radio.c$316$1$1 ==.
;	src/test_radio/test_radio.c:316: initComplete = FALSE;
	clr	_initComplete
	C$test_radio.c$319$1$1 ==.
;	src/test_radio/test_radio.c:319: systemInit();
	lcall	_systemInit
	C$test_radio.c$320$1$1 ==.
;	src/test_radio/test_radio.c:320: usbInit();
	lcall	_usbInit
	C$test_radio.c$322$1$1 ==.
;	src/test_radio/test_radio.c:322: radioInit(RECEIVER);
	clr	_radioInit_PARM_1
	lcall	_radioInit
	C$test_radio.c$323$1$1 ==.
;	src/test_radio/test_radio.c:323: isrTimerInit();
	lcall	_isrTimerInit
	C$test_radio.c$324$1$1 ==.
;	src/test_radio/test_radio.c:324: dacInit();
	lcall	_dacInit
	C$test_radio.c$327$1$1 ==.
;	src/test_radio/test_radio.c:327: sufficientRxBuffer = FALSE;
	clr	_sufficientRxBuffer
	C$test_radio.c$328$1$1 ==.
;	src/test_radio/test_radio.c:328: lostSample = FALSE;
	clr	_lostSample
	C$test_radio.c$329$1$1 ==.
;	src/test_radio/test_radio.c:329: dacNAKd = FALSE;
	clr	_dacNAKd
	C$test_radio.c$331$1$1 ==.
;	src/test_radio/test_radio.c:331: packet = 0;
	mov	r0,#_packet
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	C$test_radio.c$332$1$1 ==.
;	src/test_radio/test_radio.c:332: sampleIndex = 0;
	mov	_sampleIndex,#0x00
	C$test_radio.c$333$1$1 ==.
;	src/test_radio/test_radio.c:333: isrCounter = TRUE;
	mov	_isrCounter,#0x01
	C$test_radio.c$334$1$1 ==.
;	src/test_radio/test_radio.c:334: accSample = 1;
	mov	_accSample,#0x01
	mov	(_accSample + 1),#0x00
	C$test_radio.c$336$1$1 ==.
;	src/test_radio/test_radio.c:336: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
	C$test_radio.c$339$1$1 ==.
;	src/test_radio/test_radio.c:339: initComplete = TRUE;
	setb	_initComplete
	C$test_radio.c$342$1$1 ==.
;	src/test_radio/test_radio.c:342: while(TRUE)
00106$:
	C$test_radio.c$344$2$2 ==.
;	src/test_radio/test_radio.c:344: updateLeds(); // blinks red LED every 50ms if we are receiving packets
	lcall	_updateLeds
	C$test_radio.c$345$2$2 ==.
;	src/test_radio/test_radio.c:345: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
	lcall	_boardService
	C$test_radio.c$346$2$2 ==.
;	src/test_radio/test_radio.c:346: usbComService(); // so we can start bootloader from Wixel config GUI
	lcall	_usbComService
	C$test_radio.c$349$2$2 ==.
;	src/test_radio/test_radio.c:349: if(!sufficientRxBuffer)
	jb	_sufficientRxBuffer,00106$
	C$test_radio.c$353$3$3 ==.
;	src/test_radio/test_radio.c:353: if(radioRxCheckRxBuffer(PACKET_BUFFER_SIZE - 2))
	mov	dpl,#0x12
	lcall	_radioRxCheckRxBuffer
	jnc	00106$
	C$test_radio.c$356$4$4 ==.
;	src/test_radio/test_radio.c:356: packet = radioRxCurrentPacket();
	lcall	_radioRxCurrentPacket
	mov	a,dpl
	mov	b,dph
	mov	r0,#_packet
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	C$test_radio.c$359$4$4 ==.
;	src/test_radio/test_radio.c:359: dacStart();
	lcall	_dacStart
	C$test_radio.c$360$4$4 ==.
;	src/test_radio/test_radio.c:360: dacNAKd |= dacSendByte(DAC_ADDRESS);
	mov	dptr,#_DAC_ADDRESS
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_dacSendByte
	mov  _main_sloc0_1_0,c
	orl	c,_dacNAKd
	mov	_dacNAKd,c
	C$test_radio.c$363$4$4 ==.
;	src/test_radio/test_radio.c:363: sufficientRxBuffer = TRUE;
	setb	_sufficientRxBuffer
	C$test_radio.c$367$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
Ftest_radio$DAC_ADDRESS$0$0 == .
_DAC_ADDRESS:
	.db #0xC0	; 192
Ftest_radio$DAC_COMMAND$0$0 == .
_DAC_COMMAND:
	.db #0x00	; 0
Ftest_radio$_str_0$0$0 == .
__str_0:
	.ascii "Packet Buffer Empty"
	.db 0x00
Ftest_radio$_str_1$0$0 == .
__str_1:
	.ascii "DAC NAK'd"
	.db 0x00
Ftest_radio$_str_2$0$0 == .
__str_2:
	.ascii "Sample Error"
	.db 0x0D
	.db 0x0A
	.ascii " packet[%d]: %d"
	.db 0x0D
	.db 0x0A
	.ascii " expected: %d"
	.db 0x00
Ftest_radio$_str_3$0$0 == .
__str_3:
	.ascii "Packet ID Error"
	.db 0x00
Ftest_radio$_str_4$0$0 == .
__str_4:
	.ascii "Unknown Error"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
