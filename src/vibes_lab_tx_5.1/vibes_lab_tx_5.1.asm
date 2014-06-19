;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Dec 10 18:05:43 2012
;--------------------------------------------------------
	.module vibes_lab_tx_5_1
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ISR_ADC
	.globl _ISR_T3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fvibes_lab_tx_5_1$P0$0$0 == 0x0080
_P0	=	0x0080
Fvibes_lab_tx_5_1$SP$0$0 == 0x0081
_SP	=	0x0081
Fvibes_lab_tx_5_1$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fvibes_lab_tx_5_1$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fvibes_lab_tx_5_1$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fvibes_lab_tx_5_1$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fvibes_lab_tx_5_1$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fvibes_lab_tx_5_1$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fvibes_lab_tx_5_1$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fvibes_lab_tx_5_1$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fvibes_lab_tx_5_1$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fvibes_lab_tx_5_1$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fvibes_lab_tx_5_1$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fvibes_lab_tx_5_1$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fvibes_lab_tx_5_1$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fvibes_lab_tx_5_1$P1$0$0 == 0x0090
_P1	=	0x0090
Fvibes_lab_tx_5_1$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fvibes_lab_tx_5_1$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fvibes_lab_tx_5_1$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fvibes_lab_tx_5_1$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fvibes_lab_tx_5_1$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fvibes_lab_tx_5_1$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fvibes_lab_tx_5_1$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fvibes_lab_tx_5_1$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fvibes_lab_tx_5_1$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fvibes_lab_tx_5_1$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fvibes_lab_tx_5_1$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fvibes_lab_tx_5_1$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fvibes_lab_tx_5_1$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fvibes_lab_tx_5_1$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fvibes_lab_tx_5_1$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fvibes_lab_tx_5_1$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fvibes_lab_tx_5_1$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fvibes_lab_tx_5_1$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fvibes_lab_tx_5_1$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fvibes_lab_tx_5_1$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fvibes_lab_tx_5_1$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fvibes_lab_tx_5_1$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fvibes_lab_tx_5_1$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fvibes_lab_tx_5_1$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fvibes_lab_tx_5_1$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fvibes_lab_tx_5_1$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fvibes_lab_tx_5_1$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fvibes_lab_tx_5_1$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fvibes_lab_tx_5_1$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fvibes_lab_tx_5_1$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fvibes_lab_tx_5_1$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fvibes_lab_tx_5_1$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fvibes_lab_tx_5_1$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fvibes_lab_tx_5_1$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fvibes_lab_tx_5_1$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fvibes_lab_tx_5_1$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fvibes_lab_tx_5_1$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fvibes_lab_tx_5_1$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fvibes_lab_tx_5_1$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fvibes_lab_tx_5_1$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fvibes_lab_tx_5_1$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fvibes_lab_tx_5_1$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fvibes_lab_tx_5_1$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fvibes_lab_tx_5_1$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fvibes_lab_tx_5_1$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fvibes_lab_tx_5_1$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fvibes_lab_tx_5_1$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fvibes_lab_tx_5_1$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fvibes_lab_tx_5_1$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fvibes_lab_tx_5_1$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fvibes_lab_tx_5_1$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fvibes_lab_tx_5_1$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fvibes_lab_tx_5_1$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fvibes_lab_tx_5_1$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fvibes_lab_tx_5_1$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fvibes_lab_tx_5_1$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fvibes_lab_tx_5_1$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fvibes_lab_tx_5_1$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fvibes_lab_tx_5_1$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fvibes_lab_tx_5_1$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fvibes_lab_tx_5_1$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fvibes_lab_tx_5_1$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fvibes_lab_tx_5_1$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fvibes_lab_tx_5_1$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fvibes_lab_tx_5_1$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fvibes_lab_tx_5_1$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fvibes_lab_tx_5_1$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fvibes_lab_tx_5_1$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fvibes_lab_tx_5_1$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fvibes_lab_tx_5_1$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fvibes_lab_tx_5_1$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fvibes_lab_tx_5_1$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fvibes_lab_tx_5_1$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fvibes_lab_tx_5_1$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fvibes_lab_tx_5_1$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fvibes_lab_tx_5_1$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fvibes_lab_tx_5_1$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fvibes_lab_tx_5_1$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fvibes_lab_tx_5_1$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fvibes_lab_tx_5_1$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fvibes_lab_tx_5_1$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fvibes_lab_tx_5_1$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fvibes_lab_tx_5_1$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fvibes_lab_tx_5_1$B$0$0 == 0x00f0
_B	=	0x00f0
Fvibes_lab_tx_5_1$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fvibes_lab_tx_5_1$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fvibes_lab_tx_5_1$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fvibes_lab_tx_5_1$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fvibes_lab_tx_5_1$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fvibes_lab_tx_5_1$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fvibes_lab_tx_5_1$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fvibes_lab_tx_5_1$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fvibes_lab_tx_5_1$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fvibes_lab_tx_5_1$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fvibes_lab_tx_5_1$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fvibes_lab_tx_5_1$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fvibes_lab_tx_5_1$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fvibes_lab_tx_5_1$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fvibes_lab_tx_5_1$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fvibes_lab_tx_5_1$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fvibes_lab_tx_5_1$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fvibes_lab_tx_5_1$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fvibes_lab_tx_5_1$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fvibes_lab_tx_5_1$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fvibes_lab_tx_5_1$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fvibes_lab_tx_5_1$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fvibes_lab_tx_5_1$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fvibes_lab_tx_5_1$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fvibes_lab_tx_5_1$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fvibes_lab_tx_5_1$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fvibes_lab_tx_5_1$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fvibes_lab_tx_5_1$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fvibes_lab_tx_5_1$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fvibes_lab_tx_5_1$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fvibes_lab_tx_5_1$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fvibes_lab_tx_5_1$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fvibes_lab_tx_5_1$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fvibes_lab_tx_5_1$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fvibes_lab_tx_5_1$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fvibes_lab_tx_5_1$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fvibes_lab_tx_5_1$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fvibes_lab_tx_5_1$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fvibes_lab_tx_5_1$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fvibes_lab_tx_5_1$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fvibes_lab_tx_5_1$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fvibes_lab_tx_5_1$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fvibes_lab_tx_5_1$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fvibes_lab_tx_5_1$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fvibes_lab_tx_5_1$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fvibes_lab_tx_5_1$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fvibes_lab_tx_5_1$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fvibes_lab_tx_5_1$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fvibes_lab_tx_5_1$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fvibes_lab_tx_5_1$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fvibes_lab_tx_5_1$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fvibes_lab_tx_5_1$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fvibes_lab_tx_5_1$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fvibes_lab_tx_5_1$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fvibes_lab_tx_5_1$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fvibes_lab_tx_5_1$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fvibes_lab_tx_5_1$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fvibes_lab_tx_5_1$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fvibes_lab_tx_5_1$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fvibes_lab_tx_5_1$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fvibes_lab_tx_5_1$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fvibes_lab_tx_5_1$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fvibes_lab_tx_5_1$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fvibes_lab_tx_5_1$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fvibes_lab_tx_5_1$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fvibes_lab_tx_5_1$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fvibes_lab_tx_5_1$EA$0$0 == 0x00af
_EA	=	0x00af
Fvibes_lab_tx_5_1$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fvibes_lab_tx_5_1$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fvibes_lab_tx_5_1$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fvibes_lab_tx_5_1$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fvibes_lab_tx_5_1$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fvibes_lab_tx_5_1$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fvibes_lab_tx_5_1$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fvibes_lab_tx_5_1$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fvibes_lab_tx_5_1$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fvibes_lab_tx_5_1$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fvibes_lab_tx_5_1$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fvibes_lab_tx_5_1$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fvibes_lab_tx_5_1$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fvibes_lab_tx_5_1$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fvibes_lab_tx_5_1$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fvibes_lab_tx_5_1$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fvibes_lab_tx_5_1$P$0$0 == 0x00d0
_P	=	0x00d0
Fvibes_lab_tx_5_1$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fvibes_lab_tx_5_1$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fvibes_lab_tx_5_1$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fvibes_lab_tx_5_1$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fvibes_lab_tx_5_1$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fvibes_lab_tx_5_1$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fvibes_lab_tx_5_1$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fvibes_lab_tx_5_1$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fvibes_lab_tx_5_1$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fvibes_lab_tx_5_1$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fvibes_lab_tx_5_1$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fvibes_lab_tx_5_1$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fvibes_lab_tx_5_1$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fvibes_lab_tx_5_1$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fvibes_lab_tx_5_1$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fvibes_lab_tx_5_1$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fvibes_lab_tx_5_1$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fvibes_lab_tx_5_1$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fvibes_lab_tx_5_1$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fvibes_lab_tx_5_1$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fvibes_lab_tx_5_1$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fvibes_lab_tx_5_1$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fvibes_lab_tx_5_1$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fvibes_lab_tx_5_1$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fvibes_lab_tx_5_1$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fvibes_lab_tx_5_1$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fvibes_lab_tx_5_1$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fvibes_lab_tx_5_1$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fvibes_lab_tx_5_1$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fvibes_lab_tx_5_1$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fvibes_lab_tx_5_1$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fvibes_lab_tx_5_1$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fvibes_lab_tx_5_1$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fvibes_lab_tx_5_1$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fvibes_lab_tx_5_1$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fvibes_lab_tx_5_1$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fvibes_lab_tx_5_1$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fvibes_lab_tx_5_1$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fvibes_lab_tx_5_1$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fvibes_lab_tx_5_1$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fvibes_lab_tx_5_1$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fvibes_lab_tx_5_1$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fvibes_lab_tx_5_1$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fvibes_lab_tx_5_1$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fvibes_lab_tx_5_1$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fvibes_lab_tx_5_1$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fvibes_lab_tx_5_1$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
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
Fvibes_lab_tx_5_1$accSample$0$0==.
_accSample:
	.ds 2
Fvibes_lab_tx_5_1$sampleIndex$0$0==.
_sampleIndex:
	.ds 1
Fvibes_lab_tx_5_1$transmissionsReady$0$0==.
_transmissionsReady:
	.ds 1
Fvibes_lab_tx_5_1$operationalTimeStamp$0$0==.
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
Fvibes_lab_tx_5_1$isrCounter$0$0==.
_isrCounter:
	.ds 1
Fvibes_lab_tx_5_1$lostSample$0$0==.
_lostSample:
	.ds 1
Fvibes_lab_tx_5_1$initComplete$0$0==.
_initComplete:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Fvibes_lab_tx_5_1$packet$0$0==.
_packet:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fvibes_lab_tx_5_1$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fvibes_lab_tx_5_1$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fvibes_lab_tx_5_1$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fvibes_lab_tx_5_1$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fvibes_lab_tx_5_1$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fvibes_lab_tx_5_1$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fvibes_lab_tx_5_1$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fvibes_lab_tx_5_1$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fvibes_lab_tx_5_1$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fvibes_lab_tx_5_1$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fvibes_lab_tx_5_1$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fvibes_lab_tx_5_1$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fvibes_lab_tx_5_1$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fvibes_lab_tx_5_1$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fvibes_lab_tx_5_1$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fvibes_lab_tx_5_1$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fvibes_lab_tx_5_1$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fvibes_lab_tx_5_1$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fvibes_lab_tx_5_1$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fvibes_lab_tx_5_1$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fvibes_lab_tx_5_1$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fvibes_lab_tx_5_1$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fvibes_lab_tx_5_1$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fvibes_lab_tx_5_1$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fvibes_lab_tx_5_1$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fvibes_lab_tx_5_1$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fvibes_lab_tx_5_1$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fvibes_lab_tx_5_1$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fvibes_lab_tx_5_1$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fvibes_lab_tx_5_1$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fvibes_lab_tx_5_1$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fvibes_lab_tx_5_1$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fvibes_lab_tx_5_1$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fvibes_lab_tx_5_1$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fvibes_lab_tx_5_1$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fvibes_lab_tx_5_1$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fvibes_lab_tx_5_1$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fvibes_lab_tx_5_1$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fvibes_lab_tx_5_1$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fvibes_lab_tx_5_1$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fvibes_lab_tx_5_1$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fvibes_lab_tx_5_1$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fvibes_lab_tx_5_1$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fvibes_lab_tx_5_1$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fvibes_lab_tx_5_1$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fvibes_lab_tx_5_1$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fvibes_lab_tx_5_1$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fvibes_lab_tx_5_1$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fvibes_lab_tx_5_1$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fvibes_lab_tx_5_1$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fvibes_lab_tx_5_1$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fvibes_lab_tx_5_1$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fvibes_lab_tx_5_1$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fvibes_lab_tx_5_1$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fvibes_lab_tx_5_1$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fvibes_lab_tx_5_1$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fvibes_lab_tx_5_1$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fvibes_lab_tx_5_1$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fvibes_lab_tx_5_1$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fvibes_lab_tx_5_1$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fvibes_lab_tx_5_1$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fvibes_lab_tx_5_1$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fvibes_lab_tx_5_1$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fvibes_lab_tx_5_1$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fvibes_lab_tx_5_1$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fvibes_lab_tx_5_1$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fvibes_lab_tx_5_1$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fvibes_lab_tx_5_1$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fvibes_lab_tx_5_1$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fvibes_lab_tx_5_1$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fvibes_lab_tx_5_1$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fvibes_lab_tx_5_1$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fvibes_lab_tx_5_1$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fvibes_lab_tx_5_1$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fvibes_lab_tx_5_1$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fvibes_lab_tx_5_1$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fvibes_lab_tx_5_1$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fvibes_lab_tx_5_1$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fvibes_lab_tx_5_1$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fvibes_lab_tx_5_1$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fvibes_lab_tx_5_1$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
LreportResults$buffer$2$2==.
_reportResults_buffer_2_2:
	.ds 16
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
	ljmp	_ISR_ADC
	.ds	5
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
;Allocation info for local variables in function 'ISR_T3'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ISR_T3$0$0 ==.
	C$vibes_lab_tx_5.1.c$342$0$0 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:342: ISR(T3, 3) {
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
	push	psw
	mov	psw,#0x18
	C$vibes_lab_tx_5.1.c$346$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:346: T3IE = 0;
	clr	_T3IE
	C$vibes_lab_tx_5.1.c$348$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:348: if(initComplete) {
	jnb	_initComplete,00102$
	C$vibes_lab_tx_5.1.c$352$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:352: ADCCON3 = 0b10100001;
	mov	_ADCCON3,#0xA1
00102$:
	C$vibes_lab_tx_5.1.c$356$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:356: T3IE = 1;
	setb	_T3IE
	pop	psw
	C$vibes_lab_tx_5.1.c$357$1$1 ==.
	XG$ISR_T3$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ADC'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ISR_ADC$0$0 ==.
	C$vibes_lab_tx_5.1.c$375$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:375: ISR(ADC, 2)
;	-----------------------------------------
;	 function ISR_ADC
;	-----------------------------------------
_ISR_ADC:
	ar2 = 0x12
	ar3 = 0x13
	ar4 = 0x14
	ar5 = 0x15
	ar6 = 0x16
	ar7 = 0x17
	ar0 = 0x10
	ar1 = 0x11
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
	mov	psw,#0x10
	C$vibes_lab_tx_5.1.c$379$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:379: ADCIE = 0;
	clr	_ADCIE
	C$vibes_lab_tx_5.1.c$382$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:382: if(initComplete)
	jb	_initComplete,00117$
	ljmp	00110$
00117$:
	C$vibes_lab_tx_5.1.c$385$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:385: accSample = ADC >> 5;   // [3:0] of ADC are unreliable, we throw them away
	mov	_accSample,_ADC
	mov	a,(_ADC >> 8)
	swap	a
	rr	a
	xch	a,_accSample
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,_accSample
	xch	a,_accSample
	anl	a,#0x07
	xch	a,_accSample
	xrl	a,_accSample
	xch	a,_accSample
	mov	(_accSample + 1),a
	C$vibes_lab_tx_5.1.c$392$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:392: accSample <<= 2;
	mov	a,(_accSample + 1)
	xch	a,_accSample
	add	a,acc
	xch	a,_accSample
	rlc	a
	xch	a,_accSample
	add	a,acc
	xch	a,_accSample
	rlc	a
	mov	(_accSample + 1),a
	C$vibes_lab_tx_5.1.c$395$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:395: if(packet)
	mov	r0,#_packet
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00118$
	ljmp	00107$
00118$:
	C$vibes_lab_tx_5.1.c$398$3$3 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:398: if(isrCounter)
	jnb	_isrCounter,00102$
	C$vibes_lab_tx_5.1.c$400$4$4 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:400: packet[++sampleIndex] = (uint8) (accSample & 0xFF);
	inc	_sampleIndex
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	r2,_accSample
	mov	a,(_accSample + 1)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_tx_5.1.c$401$4$4 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:401: packet[++sampleIndex] = (uint8) ((accSample & 0xF00) >> 4);
	inc	_sampleIndex
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,_accSample
	mov	r2,#0x00
	mov	a,#0x0F
	anl	a,(_accSample + 1)
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	a,r2
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$vibes_lab_tx_5.1.c$405$4$5 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:405: packet[sampleIndex] |= (uint8) ((accSample & 0xF00) >> 8);
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
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
	mov	a,_accSample
	mov	a,#0x0F
	anl	a,(_accSample + 1)
	mov	r6,a
	mov	r5,a
	mov	a,r5
	orl	ar4,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	C$vibes_lab_tx_5.1.c$406$4$5 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:406: packet[++sampleIndex] = (uint8) (accSample & 0xFF);
	inc	_sampleIndex
	mov	r0,#_packet
	movx	a,@r0
	add	a,_sampleIndex
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	r2,_accSample
	mov	a,(_accSample + 1)
	mov	r3,#0x00
	mov	a,r2
	movx	@dptr,a
00103$:
	C$vibes_lab_tx_5.1.c$410$3$3 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:410: isrCounter ^= 1;
	cpl	_isrCounter
	C$vibes_lab_tx_5.1.c$413$3$3 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:413: if(sampleIndex == RADIO_PAYLOAD_SIZE)
	mov	a,#0x96
	cjne	a,_sampleIndex,00110$
	C$vibes_lab_tx_5.1.c$416$4$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:416: packet[0] = RADIO_PAYLOAD_SIZE;
	mov	r0,#_packet
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	mov	a,#0x96
	movx	@dptr,a
	C$vibes_lab_tx_5.1.c$419$4$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:419: radioTxDoneWithPacket();
	mov	psw,#0x00
	lcall	_radioTxDoneWithPacket
	C$vibes_lab_tx_5.1.c$420$4$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:420: packet = radioTxCurrentPacket();
	mov	psw,#0x00
	lcall	_radioTxCurrentPacket
	mov	psw,#0x10
	mov	a,dpl
	mov	b,dph
	mov	r0,#_packet
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	C$vibes_lab_tx_5.1.c$421$4$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:421: sampleIndex = 0;
	mov	_sampleIndex,#0x00
	C$vibes_lab_tx_5.1.c$422$4$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:422: isrCounter = (BIT) 0;
	clr	_isrCounter
	C$vibes_lab_tx_5.1.c$425$4$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:425: ++transmissionsReady;
	inc	_transmissionsReady
	sjmp	00110$
00107$:
	C$vibes_lab_tx_5.1.c$432$3$7 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:432: lostSample = TRUE;
	setb	_lostSample
00110$:
	C$vibes_lab_tx_5.1.c$437$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:437: ADCIE = 1;
	setb	_ADCIE
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
	C$vibes_lab_tx_5.1.c$438$1$1 ==.
	XG$ISR_ADC$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'updateLeds'
;------------------------------------------------------------
;------------------------------------------------------------
	Fvibes_lab_tx_5_1$updateLeds$0$0 ==.
	C$vibes_lab_tx_5.1.c$459$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:459: static void updateLeds()
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
	C$vibes_lab_tx_5.1.c$461$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:461: usbShowStatusWithGreenLed(); // USB connected
	lcall	_usbShowStatusWithGreenLed
	C$vibes_lab_tx_5.1.c$462$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:462: LED_YELLOW(vinPowerPresent());
	lcall	_vinPowerPresent
	jnc	00107$
	orl	_P2DIR,#0x04
	sjmp	00108$
00107$:
	anl	_P2DIR,#0xFB
00108$:
	C$vibes_lab_tx_5.1.c$466$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:466: if((getMs() - operationalTimeStamp > 500) //&& sendReceiveComplete
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
	jnc	00102$
	C$vibes_lab_tx_5.1.c$467$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:467: && !lostSample)
	jb	_lostSample,00102$
	C$vibes_lab_tx_5.1.c$470$3$4 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:470: LED_RED_TOGGLE();
	xrl	_P2DIR,#0x02
	C$vibes_lab_tx_5.1.c$473$2$3 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:473: sendReceiveComplete = FALSE;
	clr	_sendReceiveComplete
	C$vibes_lab_tx_5.1.c$474$2$3 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:474: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
	ret
00102$:
	C$vibes_lab_tx_5.1.c$476$3$6 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:476: LED_RED(TRUE);
	orl	_P2DIR,#0x02
	C$vibes_lab_tx_5.1.c$478$2$5 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:478: operationalTimeStamp = getMs() + 3000;
	lcall	_getMs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0xB8
	add	a,r2
	mov	_operationalTimeStamp,a
	mov	a,#0x0B
	addc	a,r3
	mov	(_operationalTimeStamp + 1),a
	clr	a
	addc	a,r4
	mov	(_operationalTimeStamp + 2),a
	clr	a
	addc	a,r5
	mov	(_operationalTimeStamp + 3),a
	C$vibes_lab_tx_5.1.c$479$2$5 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:479: sendReceiveComplete = FALSE;
	clr	_sendReceiveComplete
	C$vibes_lab_tx_5.1.c$480$2$5 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:480: lostSample = FALSE;
	clr	_lostSample
	C$vibes_lab_tx_5.1.c$482$1$1 ==.
	XFvibes_lab_tx_5_1$updateLeds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reportResults'
;------------------------------------------------------------
;buffer                    Allocated with name '_reportResults_buffer_2_2'
;------------------------------------------------------------
	Fvibes_lab_tx_5_1$reportResults$0$0 ==.
	C$vibes_lab_tx_5.1.c$485$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:485: static void reportResults()
;	-----------------------------------------
;	 function reportResults
;	-----------------------------------------
_reportResults:
	C$vibes_lab_tx_5.1.c$487$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:487: if(usbComTxAvailable() > 16)
	lcall	_usbComTxAvailable
	mov	r2,dpl
	mov	a,#0x10
	cjne	a,ar2,00106$
00106$:
	jnc	00103$
	C$vibes_lab_tx_5.1.c$493$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:493: bufferLength = sprintf(buffer, "Trans Ready: %d\r\n", transmissionsReady);
	mov	r2,_transmissionsReady
	mov	r3,#0x00
	push	ar2
	push	ar3
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
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	mov	r0,#_usbComTxSend_PARM_2
	mov	a,r2
	movx	@r0,a
	C$vibes_lab_tx_5.1.c$495$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:495: usbComTxSend(buffer, bufferLength);
	mov	dptr,#_reportResults_buffer_2_2
	C$vibes_lab_tx_5.1.c$497$2$1 ==.
	XFvibes_lab_tx_5_1$reportResults$0$0 ==.
	ljmp	_usbComTxSend
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$vibes_lab_tx_5.1.c$521$2$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:521: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$vibes_lab_tx_5.1.c$524$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:524: initComplete = FALSE;
	clr	_initComplete
	C$vibes_lab_tx_5.1.c$527$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:527: systemInit();     // configures getMs() function, among others
	lcall	_systemInit
	C$vibes_lab_tx_5.1.c$528$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:528: usbInit();        // Allows bootloader to be entered by USB command
	lcall	_usbInit
	C$vibes_lab_tx_5.1.c$530$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:530: radioInit(TRANSMITTER);    // Initializes radio for use in lab
	setb	_radioInit_PARM_1
	lcall	_radioInit
	C$vibes_lab_tx_5.1.c$531$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:531: isrTimerInit();            // Initializes T3 timer for 10KHz sampling freq.
	lcall	_isrTimerInit
	C$vibes_lab_tx_5.1.c$532$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:532: adcInit();                 // Initializes P0_0 as analog input
	lcall	_adcInit
	C$vibes_lab_tx_5.1.c$535$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:535: lostSample = FALSE;
	clr	_lostSample
	C$vibes_lab_tx_5.1.c$537$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:537: packet = radioTxCurrentPacket();
	lcall	_radioTxCurrentPacket
	mov	a,dpl
	mov	b,dph
	mov	r0,#_packet
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	C$vibes_lab_tx_5.1.c$538$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:538: sampleIndex = 0;
	mov	_sampleIndex,#0x00
	C$vibes_lab_tx_5.1.c$539$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:539: isrCounter = (BIT) 1;
	setb	_isrCounter
	C$vibes_lab_tx_5.1.c$540$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:540: accSample = 0;
	clr	a
	mov	_accSample,a
	mov	(_accSample + 1),a
	C$vibes_lab_tx_5.1.c$541$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:541: transmissionsReady = 0;
	mov	_transmissionsReady,#0x00
	C$vibes_lab_tx_5.1.c$543$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:543: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
	C$vibes_lab_tx_5.1.c$546$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:546: initComplete = TRUE;
	setb	_initComplete
	C$vibes_lab_tx_5.1.c$549$1$1 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:549: while(TRUE)
00107$:
	C$vibes_lab_tx_5.1.c$551$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:551: updateLeds();     // blinks red LED every 50ms if we are receiving packets
	lcall	_updateLeds
	C$vibes_lab_tx_5.1.c$552$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:552: boardService();   // so we can start bootloader by shorting P2_2 to 3V3
	lcall	_boardService
	C$vibes_lab_tx_5.1.c$553$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:553: usbComService();  // so we can start bootloader from Wixel config GUI
	lcall	_usbComService
	C$vibes_lab_tx_5.1.c$556$2$2 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:556: while(transmissionsReady)
00103$:
	mov	a,_transmissionsReady
	jz	00107$
	C$vibes_lab_tx_5.1.c$559$3$3 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:559: if(radioTxAvailable())
	lcall	_radioTxAvailable
	jnc	00103$
	C$vibes_lab_tx_5.1.c$562$4$4 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:562: radioTxSendPacket();
	lcall	_radioTxSendPacket
	C$vibes_lab_tx_5.1.c$563$4$4 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:563: --transmissionsReady;
	dec	_transmissionsReady
	C$vibes_lab_tx_5.1.c$565$4$4 ==.
;	src/vibes_lab_tx_5.1/vibes_lab_tx_5.1.c:565: reportResults();
	lcall	_reportResults
	C$vibes_lab_tx_5.1.c$569$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00103$
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fvibes_lab_tx_5_1$_str_0$0$0 == .
__str_0:
	.ascii "Trans Ready: %d"
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
