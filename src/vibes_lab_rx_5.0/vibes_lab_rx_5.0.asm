;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Dec 10 17:37:58 2012
;--------------------------------------------------------
	.module vibes_lab_rx_5_0
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ISR_T3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fvibes_lab_rx_5_0$P0$0$0 == 0x0080
_P0	=	0x0080
Fvibes_lab_rx_5_0$SP$0$0 == 0x0081
_SP	=	0x0081
Fvibes_lab_rx_5_0$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fvibes_lab_rx_5_0$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fvibes_lab_rx_5_0$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fvibes_lab_rx_5_0$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fvibes_lab_rx_5_0$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fvibes_lab_rx_5_0$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fvibes_lab_rx_5_0$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fvibes_lab_rx_5_0$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fvibes_lab_rx_5_0$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fvibes_lab_rx_5_0$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fvibes_lab_rx_5_0$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fvibes_lab_rx_5_0$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fvibes_lab_rx_5_0$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fvibes_lab_rx_5_0$P1$0$0 == 0x0090
_P1	=	0x0090
Fvibes_lab_rx_5_0$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fvibes_lab_rx_5_0$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fvibes_lab_rx_5_0$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fvibes_lab_rx_5_0$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fvibes_lab_rx_5_0$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fvibes_lab_rx_5_0$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fvibes_lab_rx_5_0$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fvibes_lab_rx_5_0$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fvibes_lab_rx_5_0$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fvibes_lab_rx_5_0$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fvibes_lab_rx_5_0$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fvibes_lab_rx_5_0$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fvibes_lab_rx_5_0$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fvibes_lab_rx_5_0$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fvibes_lab_rx_5_0$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fvibes_lab_rx_5_0$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fvibes_lab_rx_5_0$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fvibes_lab_rx_5_0$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fvibes_lab_rx_5_0$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fvibes_lab_rx_5_0$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fvibes_lab_rx_5_0$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fvibes_lab_rx_5_0$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fvibes_lab_rx_5_0$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fvibes_lab_rx_5_0$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fvibes_lab_rx_5_0$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fvibes_lab_rx_5_0$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fvibes_lab_rx_5_0$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fvibes_lab_rx_5_0$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fvibes_lab_rx_5_0$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fvibes_lab_rx_5_0$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fvibes_lab_rx_5_0$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fvibes_lab_rx_5_0$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fvibes_lab_rx_5_0$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fvibes_lab_rx_5_0$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fvibes_lab_rx_5_0$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fvibes_lab_rx_5_0$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fvibes_lab_rx_5_0$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fvibes_lab_rx_5_0$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fvibes_lab_rx_5_0$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fvibes_lab_rx_5_0$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fvibes_lab_rx_5_0$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fvibes_lab_rx_5_0$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fvibes_lab_rx_5_0$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fvibes_lab_rx_5_0$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fvibes_lab_rx_5_0$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fvibes_lab_rx_5_0$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fvibes_lab_rx_5_0$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fvibes_lab_rx_5_0$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fvibes_lab_rx_5_0$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fvibes_lab_rx_5_0$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fvibes_lab_rx_5_0$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fvibes_lab_rx_5_0$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fvibes_lab_rx_5_0$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fvibes_lab_rx_5_0$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fvibes_lab_rx_5_0$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fvibes_lab_rx_5_0$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fvibes_lab_rx_5_0$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fvibes_lab_rx_5_0$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fvibes_lab_rx_5_0$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fvibes_lab_rx_5_0$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fvibes_lab_rx_5_0$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fvibes_lab_rx_5_0$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fvibes_lab_rx_5_0$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fvibes_lab_rx_5_0$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fvibes_lab_rx_5_0$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fvibes_lab_rx_5_0$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fvibes_lab_rx_5_0$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fvibes_lab_rx_5_0$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fvibes_lab_rx_5_0$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fvibes_lab_rx_5_0$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fvibes_lab_rx_5_0$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fvibes_lab_rx_5_0$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fvibes_lab_rx_5_0$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fvibes_lab_rx_5_0$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fvibes_lab_rx_5_0$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fvibes_lab_rx_5_0$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fvibes_lab_rx_5_0$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fvibes_lab_rx_5_0$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fvibes_lab_rx_5_0$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fvibes_lab_rx_5_0$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fvibes_lab_rx_5_0$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fvibes_lab_rx_5_0$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fvibes_lab_rx_5_0$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fvibes_lab_rx_5_0$B$0$0 == 0x00f0
_B	=	0x00f0
Fvibes_lab_rx_5_0$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fvibes_lab_rx_5_0$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fvibes_lab_rx_5_0$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fvibes_lab_rx_5_0$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fvibes_lab_rx_5_0$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fvibes_lab_rx_5_0$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fvibes_lab_rx_5_0$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fvibes_lab_rx_5_0$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fvibes_lab_rx_5_0$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fvibes_lab_rx_5_0$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fvibes_lab_rx_5_0$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fvibes_lab_rx_5_0$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fvibes_lab_rx_5_0$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fvibes_lab_rx_5_0$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fvibes_lab_rx_5_0$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fvibes_lab_rx_5_0$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fvibes_lab_rx_5_0$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fvibes_lab_rx_5_0$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fvibes_lab_rx_5_0$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fvibes_lab_rx_5_0$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fvibes_lab_rx_5_0$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fvibes_lab_rx_5_0$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fvibes_lab_rx_5_0$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fvibes_lab_rx_5_0$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fvibes_lab_rx_5_0$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fvibes_lab_rx_5_0$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fvibes_lab_rx_5_0$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fvibes_lab_rx_5_0$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fvibes_lab_rx_5_0$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fvibes_lab_rx_5_0$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fvibes_lab_rx_5_0$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fvibes_lab_rx_5_0$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fvibes_lab_rx_5_0$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fvibes_lab_rx_5_0$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fvibes_lab_rx_5_0$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fvibes_lab_rx_5_0$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fvibes_lab_rx_5_0$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fvibes_lab_rx_5_0$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fvibes_lab_rx_5_0$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fvibes_lab_rx_5_0$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fvibes_lab_rx_5_0$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fvibes_lab_rx_5_0$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fvibes_lab_rx_5_0$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fvibes_lab_rx_5_0$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fvibes_lab_rx_5_0$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fvibes_lab_rx_5_0$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fvibes_lab_rx_5_0$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fvibes_lab_rx_5_0$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fvibes_lab_rx_5_0$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fvibes_lab_rx_5_0$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fvibes_lab_rx_5_0$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fvibes_lab_rx_5_0$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fvibes_lab_rx_5_0$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fvibes_lab_rx_5_0$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fvibes_lab_rx_5_0$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fvibes_lab_rx_5_0$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fvibes_lab_rx_5_0$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fvibes_lab_rx_5_0$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fvibes_lab_rx_5_0$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fvibes_lab_rx_5_0$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fvibes_lab_rx_5_0$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fvibes_lab_rx_5_0$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fvibes_lab_rx_5_0$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fvibes_lab_rx_5_0$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fvibes_lab_rx_5_0$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fvibes_lab_rx_5_0$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fvibes_lab_rx_5_0$EA$0$0 == 0x00af
_EA	=	0x00af
Fvibes_lab_rx_5_0$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fvibes_lab_rx_5_0$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fvibes_lab_rx_5_0$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fvibes_lab_rx_5_0$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fvibes_lab_rx_5_0$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fvibes_lab_rx_5_0$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fvibes_lab_rx_5_0$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fvibes_lab_rx_5_0$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fvibes_lab_rx_5_0$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fvibes_lab_rx_5_0$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fvibes_lab_rx_5_0$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fvibes_lab_rx_5_0$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fvibes_lab_rx_5_0$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fvibes_lab_rx_5_0$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fvibes_lab_rx_5_0$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fvibes_lab_rx_5_0$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fvibes_lab_rx_5_0$P$0$0 == 0x00d0
_P	=	0x00d0
Fvibes_lab_rx_5_0$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fvibes_lab_rx_5_0$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fvibes_lab_rx_5_0$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fvibes_lab_rx_5_0$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fvibes_lab_rx_5_0$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fvibes_lab_rx_5_0$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fvibes_lab_rx_5_0$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fvibes_lab_rx_5_0$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fvibes_lab_rx_5_0$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fvibes_lab_rx_5_0$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fvibes_lab_rx_5_0$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fvibes_lab_rx_5_0$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fvibes_lab_rx_5_0$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fvibes_lab_rx_5_0$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fvibes_lab_rx_5_0$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fvibes_lab_rx_5_0$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fvibes_lab_rx_5_0$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fvibes_lab_rx_5_0$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fvibes_lab_rx_5_0$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fvibes_lab_rx_5_0$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fvibes_lab_rx_5_0$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fvibes_lab_rx_5_0$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fvibes_lab_rx_5_0$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fvibes_lab_rx_5_0$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fvibes_lab_rx_5_0$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fvibes_lab_rx_5_0$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fvibes_lab_rx_5_0$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fvibes_lab_rx_5_0$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fvibes_lab_rx_5_0$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fvibes_lab_rx_5_0$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fvibes_lab_rx_5_0$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fvibes_lab_rx_5_0$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fvibes_lab_rx_5_0$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fvibes_lab_rx_5_0$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fvibes_lab_rx_5_0$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fvibes_lab_rx_5_0$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fvibes_lab_rx_5_0$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fvibes_lab_rx_5_0$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fvibes_lab_rx_5_0$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fvibes_lab_rx_5_0$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fvibes_lab_rx_5_0$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fvibes_lab_rx_5_0$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fvibes_lab_rx_5_0$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fvibes_lab_rx_5_0$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fvibes_lab_rx_5_0$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fvibes_lab_rx_5_0$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fvibes_lab_rx_5_0$U1MODE$0$0 == 0x00ff
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
Fvibes_lab_rx_5_0$accSample$0$0==.
_accSample:
	.ds 2
Fvibes_lab_rx_5_0$sampleIndex$0$0==.
_sampleIndex:
	.ds 1
Fvibes_lab_rx_5_0$isrCounter$0$0==.
_isrCounter:
	.ds 1
Fvibes_lab_rx_5_0$operationalTimeStamp$0$0==.
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
Fvibes_lab_rx_5_0$sufficientRxBuffer$0$0==.
_sufficientRxBuffer:
	.ds 1
Fvibes_lab_rx_5_0$lostSample$0$0==.
_lostSample:
	.ds 1
Fvibes_lab_rx_5_0$dacNAKd$0$0==.
_dacNAKd:
	.ds 1
Fvibes_lab_rx_5_0$initComplete$0$0==.
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
Fvibes_lab_rx_5_0$packet$0$0==.
_packet:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fvibes_lab_rx_5_0$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fvibes_lab_rx_5_0$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fvibes_lab_rx_5_0$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fvibes_lab_rx_5_0$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fvibes_lab_rx_5_0$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fvibes_lab_rx_5_0$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fvibes_lab_rx_5_0$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fvibes_lab_rx_5_0$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fvibes_lab_rx_5_0$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fvibes_lab_rx_5_0$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fvibes_lab_rx_5_0$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fvibes_lab_rx_5_0$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fvibes_lab_rx_5_0$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fvibes_lab_rx_5_0$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fvibes_lab_rx_5_0$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fvibes_lab_rx_5_0$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fvibes_lab_rx_5_0$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fvibes_lab_rx_5_0$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fvibes_lab_rx_5_0$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fvibes_lab_rx_5_0$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fvibes_lab_rx_5_0$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fvibes_lab_rx_5_0$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fvibes_lab_rx_5_0$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fvibes_lab_rx_5_0$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fvibes_lab_rx_5_0$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fvibes_lab_rx_5_0$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fvibes_lab_rx_5_0$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fvibes_lab_rx_5_0$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fvibes_lab_rx_5_0$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fvibes_lab_rx_5_0$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fvibes_lab_rx_5_0$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fvibes_lab_rx_5_0$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fvibes_lab_rx_5_0$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fvibes_lab_rx_5_0$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fvibes_lab_rx_5_0$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fvibes_lab_rx_5_0$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fvibes_lab_rx_5_0$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fvibes_lab_rx_5_0$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fvibes_lab_rx_5_0$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fvibes_lab_rx_5_0$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fvibes_lab_rx_5_0$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fvibes_lab_rx_5_0$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fvibes_lab_rx_5_0$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fvibes_lab_rx_5_0$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fvibes_lab_rx_5_0$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fvibes_lab_rx_5_0$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fvibes_lab_rx_5_0$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fvibes_lab_rx_5_0$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fvibes_lab_rx_5_0$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fvibes_lab_rx_5_0$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fvibes_lab_rx_5_0$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fvibes_lab_rx_5_0$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fvibes_lab_rx_5_0$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fvibes_lab_rx_5_0$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fvibes_lab_rx_5_0$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fvibes_lab_rx_5_0$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fvibes_lab_rx_5_0$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fvibes_lab_rx_5_0$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fvibes_lab_rx_5_0$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fvibes_lab_rx_5_0$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fvibes_lab_rx_5_0$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fvibes_lab_rx_5_0$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fvibes_lab_rx_5_0$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fvibes_lab_rx_5_0$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fvibes_lab_rx_5_0$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fvibes_lab_rx_5_0$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fvibes_lab_rx_5_0$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fvibes_lab_rx_5_0$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fvibes_lab_rx_5_0$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fvibes_lab_rx_5_0$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fvibes_lab_rx_5_0$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fvibes_lab_rx_5_0$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fvibes_lab_rx_5_0$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fvibes_lab_rx_5_0$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fvibes_lab_rx_5_0$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fvibes_lab_rx_5_0$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fvibes_lab_rx_5_0$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fvibes_lab_rx_5_0$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fvibes_lab_rx_5_0$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fvibes_lab_rx_5_0$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fvibes_lab_rx_5_0$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
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
	C$vibes_lab_rx_5.0.c$346$0$0 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:346: */ISR(T3, 3)
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
	C$vibes_lab_rx_5.0.c$350$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:350: T3IE = 0;
	clr	_T3IE
	C$vibes_lab_rx_5.0.c$353$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:353: if(initComplete && sufficientRxBuffer)
	jb	_initComplete,00121$
	ljmp	00111$
00121$:
	jb	_sufficientRxBuffer,00122$
	ljmp	00111$
00122$:
	C$vibes_lab_rx_5.0.c$357$2$2 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:357: if(!dacNAKd && packet)
	jnb	_dacNAKd,00123$
	ljmp	00107$
00123$:
	mov	r0,#_packet
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00124$
	ljmp	00107$
00124$:
	C$vibes_lab_rx_5.0.c$362$3$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:362: DAC_COMMAND | (uint8) ((accSample & 0xF00) >> 8));
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
	C$vibes_lab_rx_5.0.c$363$3$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:363: dacNAKd |= dacSendByte((uint8) (accSample & 0xFF));
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
	C$vibes_lab_rx_5.0.c$367$3$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:367: if(isrCounter)
	mov	a,_isrCounter
	jz	00102$
	C$vibes_lab_rx_5.0.c$369$4$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:369: accSample = (uint16) packet[++sampleIndex]
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
	C$vibes_lab_rx_5.0.c$370$4$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:370: | ((uint16) (packet[++sampleIndex] & 0xF0)) << 4;
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
	sjmp	00103$
00102$:
	C$vibes_lab_rx_5.0.c$374$4$5 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:374: accSample = ((uint16) (packet[sampleIndex] & 0x0F)) << 8
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
	C$vibes_lab_rx_5.0.c$375$4$5 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:375: | (uint16) packet[++sampleIndex];
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
00103$:
	C$vibes_lab_rx_5.0.c$379$3$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:379: isrCounter ^= 1;
	xrl	_isrCounter,#0x01
	C$vibes_lab_rx_5.0.c$382$3$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:382: if(sampleIndex == RADIO_PAYLOAD_SIZE)
	mov	a,#0x96
	cjne	a,_sampleIndex,00111$
	C$vibes_lab_rx_5.0.c$384$4$6 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:384: radioRxDoneWithPacket(); // Release current packet
	mov	psw,#0x00
	lcall	_radioRxDoneWithPacket
	C$vibes_lab_rx_5.0.c$385$4$6 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:385: packet = radioRxCurrentPacket(); // get next packet to process
	mov	psw,#0x00
	lcall	_radioRxCurrentPacket
	mov	psw,#0x18
	mov	a,dpl
	mov	b,dph
	mov	r0,#_packet
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	C$vibes_lab_rx_5.0.c$386$4$6 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:386: sampleIndex = 0; // reset sampleIndex
	mov	_sampleIndex,#0x00
	sjmp	00111$
00107$:
	C$vibes_lab_rx_5.0.c$393$3$7 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:393: dacStop(); // DAC will hold at last sample sent to it;
	mov	psw,#0x00
	lcall	_dacStop
	mov	psw,#0x18
	C$vibes_lab_rx_5.0.c$394$3$7 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:394: lostSample = TRUE;
	setb	_lostSample
00111$:
	C$vibes_lab_rx_5.0.c$399$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:399: T3IE = 1;
	setb	_T3IE
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
	C$vibes_lab_rx_5.0.c$400$1$1 ==.
	XG$ISR_T3$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'updateLeds'
;------------------------------------------------------------
;------------------------------------------------------------
	Fvibes_lab_rx_5_0$updateLeds$0$0 ==.
	C$vibes_lab_rx_5.0.c$416$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:416: static void updateLeds()
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
	C$vibes_lab_rx_5.0.c$418$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:418: usbShowStatusWithGreenLed(); // USB connected
	lcall	_usbShowStatusWithGreenLed
	C$vibes_lab_rx_5.0.c$419$2$2 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:419: LED_YELLOW(vinPowerPresent());
	lcall	_vinPowerPresent
	jnc	00107$
	orl	_P2DIR,#0x04
	sjmp	00108$
00107$:
	anl	_P2DIR,#0xFB
00108$:
	C$vibes_lab_rx_5.0.c$423$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:423: if((getMs() - operationalTimeStamp > 500) && sendReceiveComplete
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
	C$vibes_lab_rx_5.0.c$424$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:424: && !lostSample)
	jb	_lostSample,00105$
	C$vibes_lab_rx_5.0.c$427$3$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:427: LED_RED_TOGGLE();
	xrl	_P2DIR,#0x02
	C$vibes_lab_rx_5.0.c$430$2$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:430: sendReceiveComplete = FALSE;
	clr	_sendReceiveComplete
	C$vibes_lab_rx_5.0.c$431$2$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:431: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
00105$:
	C$vibes_lab_rx_5.0.c$433$2$1 ==.
	XFvibes_lab_rx_5_0$updateLeds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$vibes_lab_rx_5.0.c$449$2$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:449: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$vibes_lab_rx_5.0.c$452$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:452: initComplete = FALSE;
	clr	_initComplete
	C$vibes_lab_rx_5.0.c$455$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:455: systemInit();
	lcall	_systemInit
	C$vibes_lab_rx_5.0.c$456$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:456: usbInit();
	lcall	_usbInit
	C$vibes_lab_rx_5.0.c$458$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:458: radioInit(RECEIVER);
	clr	_radioInit_PARM_1
	lcall	_radioInit
	C$vibes_lab_rx_5.0.c$459$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:459: isrTimerInit();
	lcall	_isrTimerInit
	C$vibes_lab_rx_5.0.c$460$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:460: dacInit();
	lcall	_dacInit
	C$vibes_lab_rx_5.0.c$463$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:463: sufficientRxBuffer = FALSE;
	clr	_sufficientRxBuffer
	C$vibes_lab_rx_5.0.c$464$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:464: lostSample = FALSE;
	clr	_lostSample
	C$vibes_lab_rx_5.0.c$465$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:465: dacNAKd = FALSE;
	clr	_dacNAKd
	C$vibes_lab_rx_5.0.c$467$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:467: packet = 0;
	mov	r0,#_packet
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	C$vibes_lab_rx_5.0.c$468$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:468: sampleIndex = 0;
	mov	_sampleIndex,#0x00
	C$vibes_lab_rx_5.0.c$469$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:469: isrCounter = TRUE;
	mov	_isrCounter,#0x01
	C$vibes_lab_rx_5.0.c$470$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:470: accSample = 1;
	mov	_accSample,#0x01
	mov	(_accSample + 1),#0x00
	C$vibes_lab_rx_5.0.c$472$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:472: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
	C$vibes_lab_rx_5.0.c$475$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:475: initComplete = TRUE;
	setb	_initComplete
	C$vibes_lab_rx_5.0.c$478$1$1 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:478: while(TRUE)
00106$:
	C$vibes_lab_rx_5.0.c$480$2$2 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:480: updateLeds(); // blinks red LED every 50ms if we are receiving packets
	lcall	_updateLeds
	C$vibes_lab_rx_5.0.c$481$2$2 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:481: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
	lcall	_boardService
	C$vibes_lab_rx_5.0.c$482$2$2 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:482: usbComService(); // so we can start bootloader from Wixel config GUI
	lcall	_usbComService
	C$vibes_lab_rx_5.0.c$485$2$2 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:485: if(!sufficientRxBuffer)
	jb	_sufficientRxBuffer,00106$
	C$vibes_lab_rx_5.0.c$489$3$3 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:489: if(radioRxCheckRxBuffer(PACKET_BUFFER_SIZE - 2))
	mov	dpl,#0x12
	lcall	_radioRxCheckRxBuffer
	jnc	00106$
	C$vibes_lab_rx_5.0.c$492$4$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:492: packet = radioRxCurrentPacket();
	lcall	_radioRxCurrentPacket
	mov	a,dpl
	mov	b,dph
	mov	r0,#_packet
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	C$vibes_lab_rx_5.0.c$495$4$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:495: dacStart();
	lcall	_dacStart
	C$vibes_lab_rx_5.0.c$496$4$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:496: dacNAKd |= dacSendByte(DAC_ADDRESS);
	mov	dptr,#_DAC_ADDRESS
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_dacSendByte
	mov  _main_sloc0_1_0,c
	orl	c,_dacNAKd
	mov	_dacNAKd,c
	C$vibes_lab_rx_5.0.c$499$4$4 ==.
;	src/vibes_lab_rx_5.0/vibes_lab_rx_5.0.c:499: sufficientRxBuffer = TRUE;
	setb	_sufficientRxBuffer
	C$vibes_lab_rx_5.0.c$503$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fvibes_lab_rx_5_0$DAC_ADDRESS$0$0 == .
_DAC_ADDRESS:
	.db #0xC0	; 192
Fvibes_lab_rx_5_0$DAC_COMMAND$0$0 == .
_DAC_COMMAND:
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
