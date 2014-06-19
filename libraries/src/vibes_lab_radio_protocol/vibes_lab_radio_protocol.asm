;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Sat Dec 08 14:58:11 2012
;--------------------------------------------------------
	.module vibes_lab_radio_protocol
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _param_radio_channel
	.globl _radioInit_PARM_1
	.globl _sendReceiveComplete
	.globl _radioInit
	.globl _radioTxAvailable
	.globl _radioTxCurrentPacket
	.globl _radioTxSendPacket
	.globl _radioTxDoneWithPacket
	.globl _radioRxCurrentPacket
	.globl _radioRxCheckRxBuffer
	.globl _radioRxDoneWithPacket
	.globl _ISR_RF
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fvibes_lab_radio_protocol$P0$0$0 == 0x0080
_P0	=	0x0080
Fvibes_lab_radio_protocol$SP$0$0 == 0x0081
_SP	=	0x0081
Fvibes_lab_radio_protocol$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fvibes_lab_radio_protocol$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fvibes_lab_radio_protocol$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fvibes_lab_radio_protocol$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fvibes_lab_radio_protocol$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fvibes_lab_radio_protocol$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fvibes_lab_radio_protocol$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fvibes_lab_radio_protocol$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fvibes_lab_radio_protocol$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fvibes_lab_radio_protocol$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fvibes_lab_radio_protocol$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fvibes_lab_radio_protocol$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fvibes_lab_radio_protocol$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fvibes_lab_radio_protocol$P1$0$0 == 0x0090
_P1	=	0x0090
Fvibes_lab_radio_protocol$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fvibes_lab_radio_protocol$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fvibes_lab_radio_protocol$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fvibes_lab_radio_protocol$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fvibes_lab_radio_protocol$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fvibes_lab_radio_protocol$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fvibes_lab_radio_protocol$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fvibes_lab_radio_protocol$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fvibes_lab_radio_protocol$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fvibes_lab_radio_protocol$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fvibes_lab_radio_protocol$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fvibes_lab_radio_protocol$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fvibes_lab_radio_protocol$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fvibes_lab_radio_protocol$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fvibes_lab_radio_protocol$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fvibes_lab_radio_protocol$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fvibes_lab_radio_protocol$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fvibes_lab_radio_protocol$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fvibes_lab_radio_protocol$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fvibes_lab_radio_protocol$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fvibes_lab_radio_protocol$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fvibes_lab_radio_protocol$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fvibes_lab_radio_protocol$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fvibes_lab_radio_protocol$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fvibes_lab_radio_protocol$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fvibes_lab_radio_protocol$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fvibes_lab_radio_protocol$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fvibes_lab_radio_protocol$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fvibes_lab_radio_protocol$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fvibes_lab_radio_protocol$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fvibes_lab_radio_protocol$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fvibes_lab_radio_protocol$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fvibes_lab_radio_protocol$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fvibes_lab_radio_protocol$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fvibes_lab_radio_protocol$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fvibes_lab_radio_protocol$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fvibes_lab_radio_protocol$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fvibes_lab_radio_protocol$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fvibes_lab_radio_protocol$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fvibes_lab_radio_protocol$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fvibes_lab_radio_protocol$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fvibes_lab_radio_protocol$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fvibes_lab_radio_protocol$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fvibes_lab_radio_protocol$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fvibes_lab_radio_protocol$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fvibes_lab_radio_protocol$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fvibes_lab_radio_protocol$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fvibes_lab_radio_protocol$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fvibes_lab_radio_protocol$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fvibes_lab_radio_protocol$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fvibes_lab_radio_protocol$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fvibes_lab_radio_protocol$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fvibes_lab_radio_protocol$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fvibes_lab_radio_protocol$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fvibes_lab_radio_protocol$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fvibes_lab_radio_protocol$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fvibes_lab_radio_protocol$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fvibes_lab_radio_protocol$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fvibes_lab_radio_protocol$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fvibes_lab_radio_protocol$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fvibes_lab_radio_protocol$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fvibes_lab_radio_protocol$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fvibes_lab_radio_protocol$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fvibes_lab_radio_protocol$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fvibes_lab_radio_protocol$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fvibes_lab_radio_protocol$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fvibes_lab_radio_protocol$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fvibes_lab_radio_protocol$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fvibes_lab_radio_protocol$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fvibes_lab_radio_protocol$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fvibes_lab_radio_protocol$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fvibes_lab_radio_protocol$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fvibes_lab_radio_protocol$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fvibes_lab_radio_protocol$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fvibes_lab_radio_protocol$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fvibes_lab_radio_protocol$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fvibes_lab_radio_protocol$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fvibes_lab_radio_protocol$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fvibes_lab_radio_protocol$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fvibes_lab_radio_protocol$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fvibes_lab_radio_protocol$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fvibes_lab_radio_protocol$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fvibes_lab_radio_protocol$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fvibes_lab_radio_protocol$B$0$0 == 0x00f0
_B	=	0x00f0
Fvibes_lab_radio_protocol$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fvibes_lab_radio_protocol$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fvibes_lab_radio_protocol$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fvibes_lab_radio_protocol$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fvibes_lab_radio_protocol$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fvibes_lab_radio_protocol$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fvibes_lab_radio_protocol$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fvibes_lab_radio_protocol$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fvibes_lab_radio_protocol$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fvibes_lab_radio_protocol$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fvibes_lab_radio_protocol$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fvibes_lab_radio_protocol$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fvibes_lab_radio_protocol$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fvibes_lab_radio_protocol$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fvibes_lab_radio_protocol$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fvibes_lab_radio_protocol$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fvibes_lab_radio_protocol$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fvibes_lab_radio_protocol$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fvibes_lab_radio_protocol$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fvibes_lab_radio_protocol$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fvibes_lab_radio_protocol$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fvibes_lab_radio_protocol$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fvibes_lab_radio_protocol$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fvibes_lab_radio_protocol$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fvibes_lab_radio_protocol$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fvibes_lab_radio_protocol$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fvibes_lab_radio_protocol$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fvibes_lab_radio_protocol$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fvibes_lab_radio_protocol$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fvibes_lab_radio_protocol$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fvibes_lab_radio_protocol$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fvibes_lab_radio_protocol$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fvibes_lab_radio_protocol$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fvibes_lab_radio_protocol$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fvibes_lab_radio_protocol$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fvibes_lab_radio_protocol$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fvibes_lab_radio_protocol$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fvibes_lab_radio_protocol$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fvibes_lab_radio_protocol$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fvibes_lab_radio_protocol$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fvibes_lab_radio_protocol$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fvibes_lab_radio_protocol$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fvibes_lab_radio_protocol$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fvibes_lab_radio_protocol$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fvibes_lab_radio_protocol$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fvibes_lab_radio_protocol$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fvibes_lab_radio_protocol$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fvibes_lab_radio_protocol$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fvibes_lab_radio_protocol$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fvibes_lab_radio_protocol$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fvibes_lab_radio_protocol$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fvibes_lab_radio_protocol$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fvibes_lab_radio_protocol$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fvibes_lab_radio_protocol$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fvibes_lab_radio_protocol$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fvibes_lab_radio_protocol$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fvibes_lab_radio_protocol$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fvibes_lab_radio_protocol$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fvibes_lab_radio_protocol$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fvibes_lab_radio_protocol$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fvibes_lab_radio_protocol$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fvibes_lab_radio_protocol$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fvibes_lab_radio_protocol$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fvibes_lab_radio_protocol$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fvibes_lab_radio_protocol$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fvibes_lab_radio_protocol$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fvibes_lab_radio_protocol$EA$0$0 == 0x00af
_EA	=	0x00af
Fvibes_lab_radio_protocol$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fvibes_lab_radio_protocol$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fvibes_lab_radio_protocol$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fvibes_lab_radio_protocol$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fvibes_lab_radio_protocol$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fvibes_lab_radio_protocol$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fvibes_lab_radio_protocol$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fvibes_lab_radio_protocol$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fvibes_lab_radio_protocol$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fvibes_lab_radio_protocol$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fvibes_lab_radio_protocol$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fvibes_lab_radio_protocol$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fvibes_lab_radio_protocol$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fvibes_lab_radio_protocol$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fvibes_lab_radio_protocol$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fvibes_lab_radio_protocol$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fvibes_lab_radio_protocol$P$0$0 == 0x00d0
_P	=	0x00d0
Fvibes_lab_radio_protocol$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fvibes_lab_radio_protocol$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fvibes_lab_radio_protocol$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fvibes_lab_radio_protocol$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fvibes_lab_radio_protocol$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fvibes_lab_radio_protocol$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fvibes_lab_radio_protocol$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fvibes_lab_radio_protocol$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fvibes_lab_radio_protocol$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fvibes_lab_radio_protocol$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fvibes_lab_radio_protocol$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fvibes_lab_radio_protocol$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fvibes_lab_radio_protocol$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fvibes_lab_radio_protocol$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fvibes_lab_radio_protocol$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fvibes_lab_radio_protocol$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fvibes_lab_radio_protocol$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fvibes_lab_radio_protocol$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fvibes_lab_radio_protocol$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fvibes_lab_radio_protocol$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fvibes_lab_radio_protocol$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fvibes_lab_radio_protocol$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fvibes_lab_radio_protocol$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fvibes_lab_radio_protocol$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fvibes_lab_radio_protocol$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fvibes_lab_radio_protocol$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fvibes_lab_radio_protocol$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fvibes_lab_radio_protocol$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fvibes_lab_radio_protocol$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fvibes_lab_radio_protocol$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fvibes_lab_radio_protocol$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fvibes_lab_radio_protocol$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fvibes_lab_radio_protocol$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fvibes_lab_radio_protocol$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fvibes_lab_radio_protocol$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fvibes_lab_radio_protocol$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fvibes_lab_radio_protocol$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fvibes_lab_radio_protocol$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fvibes_lab_radio_protocol$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fvibes_lab_radio_protocol$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fvibes_lab_radio_protocol$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fvibes_lab_radio_protocol$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fvibes_lab_radio_protocol$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fvibes_lab_radio_protocol$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fvibes_lab_radio_protocol$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fvibes_lab_radio_protocol$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fvibes_lab_radio_protocol$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
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
Fvibes_lab_radio_protocol$mainLoopIndex$0$0==.
_mainLoopIndex:
	.ds 1
Fvibes_lab_radio_protocol$interruptIndex$0$0==.
_interruptIndex:
	.ds 1
Fvibes_lab_radio_protocol$freePackets$0$0==.
_freePackets:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
Fvibes_lab_radio_protocol$isTransmitter$0$0==.
_isTransmitter:
	.ds 1
G$sendReceiveComplete$0$0==.
_sendReceiveComplete::
	.ds 1
Fvibes_lab_radio_protocol$txBusy$0$0==.
_txBusy:
	.ds 1
Fvibes_lab_radio_protocol$sendingNAK$0$0==.
_sendingNAK:
	.ds 1
Fvibes_lab_radio_protocol$sendingACK$0$0==.
_sendingACK:
	.ds 1
Fvibes_lab_radio_protocol$awaitingResponse$0$0==.
_awaitingResponse:
	.ds 1
Fvibes_lab_radio_protocol$sendingResponse$0$0==.
_sendingResponse:
	.ds 1
Fvibes_lab_radio_protocol$reTransmitting$0$0==.
_reTransmitting:
	.ds 1
LradioInit$isTx$1$1==.
_radioInit_PARM_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Fvibes_lab_radio_protocol$packetID$0$0==.
_packetID:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fvibes_lab_radio_protocol$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fvibes_lab_radio_protocol$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fvibes_lab_radio_protocol$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fvibes_lab_radio_protocol$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fvibes_lab_radio_protocol$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fvibes_lab_radio_protocol$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fvibes_lab_radio_protocol$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fvibes_lab_radio_protocol$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fvibes_lab_radio_protocol$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fvibes_lab_radio_protocol$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fvibes_lab_radio_protocol$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fvibes_lab_radio_protocol$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fvibes_lab_radio_protocol$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fvibes_lab_radio_protocol$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fvibes_lab_radio_protocol$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fvibes_lab_radio_protocol$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fvibes_lab_radio_protocol$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fvibes_lab_radio_protocol$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fvibes_lab_radio_protocol$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fvibes_lab_radio_protocol$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fvibes_lab_radio_protocol$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fvibes_lab_radio_protocol$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fvibes_lab_radio_protocol$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fvibes_lab_radio_protocol$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fvibes_lab_radio_protocol$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fvibes_lab_radio_protocol$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fvibes_lab_radio_protocol$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fvibes_lab_radio_protocol$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fvibes_lab_radio_protocol$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fvibes_lab_radio_protocol$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fvibes_lab_radio_protocol$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fvibes_lab_radio_protocol$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fvibes_lab_radio_protocol$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fvibes_lab_radio_protocol$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fvibes_lab_radio_protocol$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fvibes_lab_radio_protocol$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fvibes_lab_radio_protocol$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fvibes_lab_radio_protocol$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fvibes_lab_radio_protocol$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fvibes_lab_radio_protocol$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fvibes_lab_radio_protocol$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fvibes_lab_radio_protocol$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fvibes_lab_radio_protocol$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fvibes_lab_radio_protocol$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fvibes_lab_radio_protocol$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fvibes_lab_radio_protocol$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fvibes_lab_radio_protocol$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fvibes_lab_radio_protocol$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fvibes_lab_radio_protocol$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fvibes_lab_radio_protocol$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fvibes_lab_radio_protocol$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fvibes_lab_radio_protocol$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fvibes_lab_radio_protocol$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fvibes_lab_radio_protocol$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fvibes_lab_radio_protocol$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fvibes_lab_radio_protocol$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fvibes_lab_radio_protocol$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fvibes_lab_radio_protocol$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fvibes_lab_radio_protocol$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fvibes_lab_radio_protocol$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fvibes_lab_radio_protocol$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fvibes_lab_radio_protocol$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fvibes_lab_radio_protocol$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fvibes_lab_radio_protocol$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fvibes_lab_radio_protocol$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fvibes_lab_radio_protocol$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fvibes_lab_radio_protocol$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fvibes_lab_radio_protocol$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fvibes_lab_radio_protocol$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fvibes_lab_radio_protocol$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fvibes_lab_radio_protocol$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fvibes_lab_radio_protocol$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fvibes_lab_radio_protocol$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fvibes_lab_radio_protocol$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fvibes_lab_radio_protocol$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fvibes_lab_radio_protocol$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fvibes_lab_radio_protocol$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fvibes_lab_radio_protocol$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fvibes_lab_radio_protocol$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fvibes_lab_radio_protocol$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fvibes_lab_radio_protocol$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
Fvibes_lab_radio_protocol$packetBuffer$0$0==.
_packetBuffer:
	.ds 3080
Fvibes_lab_radio_protocol$shortPacket$0$0==.
_shortPacket:
	.ds 2
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'radioInit'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioInit$0$0 ==.
	C$vibes_lab_radio_protocol.c$155$0$0 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:155: void radioInit(BIT isTx)
;	-----------------------------------------
;	 function radioInit
;	-----------------------------------------
_radioInit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$vibes_lab_radio_protocol.c$158$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:158: isTransmitter = isTx;
	mov	c,_radioInit_PARM_1
	mov	_isTransmitter,c
	C$vibes_lab_radio_protocol.c$160$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:160: sendReceiveComplete = FALSE;
	clr	_sendReceiveComplete
	C$vibes_lab_radio_protocol.c$162$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:162: txBusy = FALSE;
	clr	_txBusy
	C$vibes_lab_radio_protocol.c$164$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:164: mainLoopIndex = 0;
	mov	_mainLoopIndex,#0x00
	C$vibes_lab_radio_protocol.c$165$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:165: interruptIndex = 0;
	mov	_interruptIndex,#0x00
	C$vibes_lab_radio_protocol.c$166$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:166: freePackets = PACKET_BUFFER_SIZE;
	mov	_freePackets,#0x14
	C$vibes_lab_radio_protocol.c$168$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:168: packetID = 0;
	mov	r0,#_packetID
	clr	a
	movx	@r0,a
	C$vibes_lab_radio_protocol.c$170$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:170: sendingNAK = FALSE;
	clr	_sendingNAK
	C$vibes_lab_radio_protocol.c$171$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:171: sendingACK = FALSE;
	clr	_sendingACK
	C$vibes_lab_radio_protocol.c$173$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:173: awaitingResponse = FALSE;
	clr	_awaitingResponse
	C$vibes_lab_radio_protocol.c$174$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:174: sendingResponse = FALSE;
	clr	_sendingResponse
	C$vibes_lab_radio_protocol.c$175$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:175: reTransmitting = FALSE;
	clr	_reTransmitting
	C$vibes_lab_radio_protocol.c$178$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:178: PKTLEN = MAX_PACKET_SIZE; // max packet size stored
	mov	dptr,#_PKTLEN
	mov	a,#0x9A
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$179$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:179: CHANNR = param_radio_channel; // channel setting stored
	mov	dptr,#_param_radio_channel
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r5,a
	mov	dptr,#_CHANNR
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$182$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:182: PA_TABLE0 = 0xFF;
	mov	dptr,#_PA_TABLE0
	mov	a,#0xFF
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$187$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:187: FREQ2 = 0x64;
	mov	dptr,#_FREQ2
	mov	a,#0x64
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$188$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:188: FREQ1 = 0x25;
	mov	dptr,#_FREQ1
	mov	a,#0x25
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$189$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:189: FREQ0 = 0x00;
	mov	dptr,#_FREQ0
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$202$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:202: MDMCFG1 = 0x43; // FEC disabled
	mov	dptr,#_MDMCFG1
	mov	a,#0x43
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$203$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:203: MDMCFG0 = 0x87; // Modem Configuration
	mov	dptr,#_MDMCFG0
	mov	a,#0x87
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$207$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:207: FSCTRL1 = 0x0A; // Frequency Synthesizer Control
	mov	dptr,#_FSCTRL1
	mov	a,#0x0A
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$208$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:208: FSCTRL0 = 0x00; // Frequency Synthesizer Control
	mov	dptr,#_FSCTRL0
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$214$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:214: MDMCFG4 = 0x1D;
	mov	dptr,#_MDMCFG4
	mov	a,#0x1D
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$215$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:215: MDMCFG3 = 0xDE; // Modem configuration (data rate = 350 kbps, bandwidth = 600 kHz).
	mov	dptr,#_MDMCFG3
	mov	a,#0xDE
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$222$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:222: MDMCFG2 = 0x73; // Modem Configuration
	mov	dptr,#_MDMCFG2
	mov	a,#0x73
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$227$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:227: FREND1 = 0xB6; // Front End RX Configuration (adjusts various things, not well documented)
	mov	dptr,#_FREND1
	mov	a,#0xB6
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$228$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:228: FREND0 = 0x10; // Front End TX Configuration (adjusts current TX LO buffer, not well documented)
	mov	dptr,#_FREND0
	mov	a,#0x10
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$232$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:232: FOCCFG = 0x1D; // Frequency Offset Compensation Configuration
	mov	dptr,#_FOCCFG
	mov	a,#0x1D
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$233$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:233: BSCFG = 0x1C; // Bit Synchronization Configuration
	mov	dptr,#_BSCFG
	mov	a,#0x1C
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$239$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:239: AGCCTRL2 = 0xC7;
	mov	dptr,#_AGCCTRL2
	mov	a,#0xC7
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$240$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:240: AGCCTRL1 = 0x00;
	mov	dptr,#_AGCCTRL1
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$241$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:241: AGCCTRL0 = 0xB2;
	mov	dptr,#_AGCCTRL0
	mov	a,#0xB2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$244$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:244: FSCAL3 = 0xEA;
	mov	dptr,#_FSCAL3
	mov	a,#0xEA
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$245$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:245: FSCAL2 = 0x0A;
	mov	dptr,#_FSCAL2
	mov	a,#0x0A
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$246$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:246: FSCAL1 = 0x00;
	mov	dptr,#_FSCAL1
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$247$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:247: FSCAL0 = 0x11;
	mov	dptr,#_FSCAL0
	mov	a,#0x11
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$251$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:251: TEST2 = 0x88;
	mov	dptr,#_TEST2
	mov	a,#0x88
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$252$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:252: TEST1 = 0x31; //0x31;//0x11;
	mov	dptr,#_TEST1
	mov	a,#0x31
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$253$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:253: TEST0 = 0x09; //0x09;//0x0B;
	mov	dptr,#_TEST0
	mov	a,#0x09
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$256$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:256: PKTCTRL1 = 0x04; // no address check, append crc, always accept sync word
	mov	dptr,#_PKTCTRL1
	mov	a,#0x04
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$257$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:257: PKTCTRL0 = 0x45; // data whitening, use CRC, variable packet lengths
	mov	dptr,#_PKTCTRL0
	mov	a,#0x45
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$260$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:260: MCSM0 = 0x14; // Main Radio Control State Machine Configuration
	mov	dptr,#_MCSM0
	mov	a,#0x14
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$261$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:261: MCSM1 = 0x00; // Disable CCA.  After RX or TX, go to IDLE;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$262$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:262: MCSM2 = 0x07; // NOTE: MCSM2 also gets set every time we go into RX mode.
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$264$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:264: IEN2 |= 0x01; // Enable RF general interrupt
	orl	_IEN2,#0x01
	C$vibes_lab_radio_protocol.c$265$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:265: RFIM = 0xF0; // Enable these interrupts: DONE, RXOVF, TXUNF, TIMEOUT
	mov	_RFIM,#0xF0
	C$vibes_lab_radio_protocol.c$268$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:268: IP1 |= 1 << 0;
	orl	_IP1,#0x01
	C$vibes_lab_radio_protocol.c$269$2$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:269: IP0 &= 0 << 0;
	mov	a,_IP0
	mov	_IP0,#0x00
	C$vibes_lab_radio_protocol.c$272$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:272: RFST = SIDLE;
	mov	_RFST,#0x04
	C$vibes_lab_radio_protocol.c$273$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:273: RFST = SCAL;
	mov	_RFST,#0x01
	C$vibes_lab_radio_protocol.c$275$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:275: EA = 1; // Enable interrupts in general
	setb	_EA
	C$vibes_lab_radio_protocol.c$278$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:278: if(!isTransmitter)
	jb	_isTransmitter,00103$
	C$vibes_lab_radio_protocol.c$280$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:280: packetID = 255; // change packetID, to ensure the first packet is saved
	mov	r0,#_packetID
	mov	a,#0xFF
	movx	@r0,a
	C$vibes_lab_radio_protocol.c$282$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:282: radioRxReceievePacket(50); // default timeout is 50ms
	mov	dpl,#0x32
	C$vibes_lab_radio_protocol.c$284$2$1 ==.
	XG$radioInit$0$0 ==.
	ljmp	_radioRxReceievePacket
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxAvailable'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioTxAvailable$0$0 ==.
	C$vibes_lab_radio_protocol.c$291$2$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:291: BIT radioTxAvailable(void)
;	-----------------------------------------
;	 function radioTxAvailable
;	-----------------------------------------
_radioTxAvailable:
	C$vibes_lab_radio_protocol.c$293$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:293: if(isTransmitter)
	jnb	_isTransmitter,00102$
	C$vibes_lab_radio_protocol.c$297$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:297: return !txBusy;
	mov	c,_txBusy
	cpl	c
	ret
00102$:
	C$vibes_lab_radio_protocol.c$300$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:300: return FALSE; // If slave, this is an unsupported operation
	clr	c
	C$vibes_lab_radio_protocol.c$301$1$1 ==.
	XG$radioTxAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxCurrentPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioTxCurrentPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$303$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:303: uint8 XDATA * radioTxCurrentPacket()
;	-----------------------------------------
;	 function radioTxCurrentPacket
;	-----------------------------------------
_radioTxCurrentPacket:
	C$vibes_lab_radio_protocol.c$308$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:308: if(!isTransmitter || !freePackets)
	jnb	_isTransmitter,00101$
	mov	a,_freePackets
	jnz	00102$
00101$:
	C$vibes_lab_radio_protocol.c$310$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:310: return 0;
	mov	dptr,#0x0000
	ret
00102$:
	C$vibes_lab_radio_protocol.c$313$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:313: return packetBuffer[mainLoopIndex];
	mov	a,_mainLoopIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	C$vibes_lab_radio_protocol.c$314$1$1 ==.
	XG$radioTxCurrentPacket$0$0 ==.
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxSendPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioTxSendPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$316$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:316: void radioTxSendPacket(void)
;	-----------------------------------------
;	 function radioTxSendPacket
;	-----------------------------------------
_radioTxSendPacket:
	C$vibes_lab_radio_protocol.c$320$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:320: if(isTransmitter && !txBusy) // If slave, this is an unsupported operation
	jb	_isTransmitter,00111$
	ret
00111$:
	jnb	_txBusy,00112$
	ret
00112$:
	C$vibes_lab_radio_protocol.c$322$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:322: txBusy = TRUE; // set txBusy first, so higher level code cannot interrupt
	setb	_txBusy
	C$vibes_lab_radio_protocol.c$324$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:324: if(!reTransmitting) // if retransmitting, this has already been done
	jb	_reTransmitting,00102$
	C$vibes_lab_radio_protocol.c$327$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:327: ++packetBuffer[interruptIndex][0];
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	inc	r4
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$330$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:330: packetBuffer[interruptIndex][packetBuffer[interruptIndex][0]] =
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	dpl,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	mov	r0,#_packetID
	movx	a,@r0
	movx	@dptr,a
00102$:
	C$vibes_lab_radio_protocol.c$335$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:335: dmaConfig.radio.SRCADDRH =
	C$vibes_lab_radio_protocol.c$336$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:336: (unsigned int) packetBuffer[interruptIndex] >> 8;
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r2,a
	mov	dptr,#_dmaConfig
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$337$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:337: dmaConfig.radio.SRCADDRL =
	C$vibes_lab_radio_protocol.c$338$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:338: (unsigned int) packetBuffer[interruptIndex];
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	dptr,#(_dmaConfig + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$339$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:339: dmaConfig.radio.DESTADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
	mov	r2,#_RFD
	mov	r3,#0x00
	mov	a,#0xDF
	add	a,r3
	mov	r2,a
	mov	dptr,#(_dmaConfig + 0x0002)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$340$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:340: dmaConfig.radio.DESTADDRL = XDATA_SFR_ADDRESS(RFD);
	mov	r2,#_RFD
	mov	dptr,#(_dmaConfig + 0x0003)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$341$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:341: dmaConfig.radio.VLEN_LENH = 0b00100000; // Transfer length is FirstByte+1
	mov	dptr,#(_dmaConfig + 0x0004)
	mov	a,#0x20
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$342$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:342: dmaConfig.radio.LENL = 0b10011010; // max length = MAX_PACKET_SIZE
	mov	dptr,#(_dmaConfig + 0x0005)
	mov	a,#0x9A
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$343$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:343: dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
	mov	dptr,#(_dmaConfig + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$344$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:344: dmaConfig.radio.DC7 = 0x42; // SRCINC = 1, DESTINC = 0, IRQMASK = 0, M8 = 0, PRIORITY = 2
	mov	dptr,#(_dmaConfig + 0x0007)
	mov	a,#0x42
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$347$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:347: DMAARM |= 1 << DMA_CHANNEL_RADIO;
	orl	_DMAARM,#0x02
	C$vibes_lab_radio_protocol.c$350$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:350: RFST = STX;
	mov	_RFST,#0x03
	C$vibes_lab_radio_protocol.c$352$2$1 ==.
	XG$radioTxSendPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxDoneWithPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioTxDoneWithPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$354$2$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:354: void radioTxDoneWithPacket(void)
;	-----------------------------------------
;	 function radioTxDoneWithPacket
;	-----------------------------------------
_radioTxDoneWithPacket:
	C$vibes_lab_radio_protocol.c$356$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:356: if(isTransmitter) // If slave, this is an unsupported operation
	jnb	_isTransmitter,00106$
	C$vibes_lab_radio_protocol.c$359$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:359: if(mainLoopIndex == PACKET_BUFFER_SIZE - 1)
	mov	a,#0x13
	cjne	a,_mainLoopIndex,00102$
	C$vibes_lab_radio_protocol.c$361$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:361: mainLoopIndex = 0;
	mov	_mainLoopIndex,#0x00
	sjmp	00103$
00102$:
	C$vibes_lab_radio_protocol.c$365$3$4 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:365: ++mainLoopIndex;
	inc	_mainLoopIndex
00103$:
	C$vibes_lab_radio_protocol.c$369$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:369: --freePackets;
	dec	_freePackets
00106$:
	C$vibes_lab_radio_protocol.c$371$2$1 ==.
	XG$radioTxDoneWithPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRxCurrentPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioRxCurrentPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$378$2$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:378: uint8 XDATA * radioRxCurrentPacket()
;	-----------------------------------------
;	 function radioRxCurrentPacket
;	-----------------------------------------
_radioRxCurrentPacket:
	C$vibes_lab_radio_protocol.c$383$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:383: if(isTransmitter || (freePackets == PACKET_BUFFER_SIZE))
	jb	_isTransmitter,00101$
	mov	a,#0x14
	cjne	a,_freePackets,00102$
00101$:
	C$vibes_lab_radio_protocol.c$385$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:385: return 0;
	mov	dptr,#0x0000
	ret
00102$:
	C$vibes_lab_radio_protocol.c$388$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:388: return packetBuffer[mainLoopIndex];
	mov	a,_mainLoopIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	C$vibes_lab_radio_protocol.c$389$1$1 ==.
	XG$radioRxCurrentPacket$0$0 ==.
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRxCheckRxBuffer'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioRxCheckRxBuffer$0$0 ==.
	C$vibes_lab_radio_protocol.c$391$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:391: BIT radioRxCheckRxBuffer(uint8 threshold)
;	-----------------------------------------
;	 function radioRxCheckRxBuffer
;	-----------------------------------------
_radioRxCheckRxBuffer:
	mov	r2,dpl
	C$vibes_lab_radio_protocol.c$395$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:395: if(!isTransmitter && ((PACKET_BUFFER_SIZE - freePackets) >= threshold))
	jb	_isTransmitter,00102$
	mov	r3,_freePackets
	mov	r4,#0x00
	mov	a,#0x14
	clr	c
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	C$vibes_lab_radio_protocol.c$397$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:397: return TRUE;
	setb	c
	ret
00102$:
	C$vibes_lab_radio_protocol.c$400$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:400: return FALSE;
	clr	c
	C$vibes_lab_radio_protocol.c$401$1$1 ==.
	XG$radioRxCheckRxBuffer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRxDoneWithPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	G$radioRxDoneWithPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$403$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:403: void radioRxDoneWithPacket()
;	-----------------------------------------
;	 function radioRxDoneWithPacket
;	-----------------------------------------
_radioRxDoneWithPacket:
	C$vibes_lab_radio_protocol.c$405$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:405: if(!isTransmitter) // If master, this is an unsupported operation
	jb	_isTransmitter,00106$
	C$vibes_lab_radio_protocol.c$408$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:408: if(mainLoopIndex == PACKET_BUFFER_SIZE - 1)
	mov	a,#0x13
	cjne	a,_mainLoopIndex,00102$
	C$vibes_lab_radio_protocol.c$410$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:410: mainLoopIndex = 0;
	mov	_mainLoopIndex,#0x00
	sjmp	00103$
00102$:
	C$vibes_lab_radio_protocol.c$414$3$4 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:414: ++mainLoopIndex;
	inc	_mainLoopIndex
00103$:
	C$vibes_lab_radio_protocol.c$419$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:419: ++freePackets;
	inc	_freePackets
00106$:
	C$vibes_lab_radio_protocol.c$421$2$1 ==.
	XG$radioRxDoneWithPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioTxShortPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	Fvibes_lab_radio_protocol$radioTxShortPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$434$2$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:434: static void radioTxShortPacket(uint8 response)
;	-----------------------------------------
;	 function radioTxShortPacket
;	-----------------------------------------
_radioTxShortPacket:
	mov	r2,dpl
	C$vibes_lab_radio_protocol.c$437$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:437: shortPacket[0] = 1; // set length byte
	mov	dptr,#_shortPacket
	mov	a,#0x01
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$438$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:438: shortPacket[1] = response; // set response byte
	mov	dptr,#(_shortPacket + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$441$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:441: dmaConfig.radio.SRCADDRH = (unsigned int) shortPacket >> 8;
	mov	r2,#_shortPacket
	mov	r3,#(_shortPacket >> 8)
	mov	ar2,r3
	mov	dptr,#_dmaConfig
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$442$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:442: dmaConfig.radio.SRCADDRL = (unsigned int) shortPacket;
	mov	r2,#_shortPacket
	mov	r3,#(_shortPacket >> 8)
	mov	dptr,#(_dmaConfig + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$443$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:443: dmaConfig.radio.DESTADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
	mov	r2,#_RFD
	mov	r3,#0x00
	mov	a,#0xDF
	add	a,r3
	mov	r2,a
	mov	dptr,#(_dmaConfig + 0x0002)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$444$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:444: dmaConfig.radio.DESTADDRL = XDATA_SFR_ADDRESS(RFD);
	mov	r2,#_RFD
	mov	dptr,#(_dmaConfig + 0x0003)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$445$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:445: dmaConfig.radio.VLEN_LENH = 0b00100000; // Transfer length is FirstByte+1
	mov	dptr,#(_dmaConfig + 0x0004)
	mov	a,#0x20
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$446$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:446: dmaConfig.radio.LENL = 0b00000010; // max length = 2
	mov	dptr,#(_dmaConfig + 0x0005)
	mov	a,#0x02
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$447$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:447: dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
	mov	dptr,#(_dmaConfig + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$448$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:448: dmaConfig.radio.DC7 = 0x42; // SRCINC = 1, DESTINC = 0, IRQMASK = 0, M8 = 0, PRIORITY = 2
	mov	dptr,#(_dmaConfig + 0x0007)
	mov	a,#0x42
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$451$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:451: DMAARM |= 1 << DMA_CHANNEL_RADIO;
	orl	_DMAARM,#0x02
	C$vibes_lab_radio_protocol.c$454$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:454: RFST = STX;
	mov	_RFST,#0x03
	C$vibes_lab_radio_protocol.c$455$1$1 ==.
	XFvibes_lab_radio_protocol$radioTxShortPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRxShortPacket'
;------------------------------------------------------------
;------------------------------------------------------------
	Fvibes_lab_radio_protocol$radioRxShortPacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$463$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:463: static void radioRxShortPacket(uint8 timeout)
;	-----------------------------------------
;	 function radioRxShortPacket
;	-----------------------------------------
_radioRxShortPacket:
	C$vibes_lab_radio_protocol.c$468$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:468: if(timeout)
	mov	a,dpl
	mov	r2,a
	jz	00102$
	C$vibes_lab_radio_protocol.c$470$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:470: MCSM2 = 0x00; // RX_TIME = 0.  Helps determine the units of the RX timeout period.
	mov	dptr,#_MCSM2
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$471$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:471: WORCTRL = 0; // WOR_RES = 0.  Helps determine the units of the RX timeout period.
	mov	_WORCTRL,#0x00
	C$vibes_lab_radio_protocol.c$472$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:472: WOREVT1 = timeout;
	mov	_WOREVT1,r2
	C$vibes_lab_radio_protocol.c$473$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:473: WOREVT0 = 0;
	mov	_WOREVT0,#0x00
	sjmp	00103$
00102$:
	C$vibes_lab_radio_protocol.c$477$2$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:477: MCSM2 = 0x07; // RX_TIME = 7: No timeout.
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
00103$:
	C$vibes_lab_radio_protocol.c$480$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:480: dmaConfig.radio.SRCADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
	mov	r2,#_RFD
	mov	r3,#0x00
	mov	a,#0xDF
	add	a,r3
	mov	r2,a
	mov	dptr,#_dmaConfig
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$481$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:481: dmaConfig.radio.SRCADDRL = XDATA_SFR_ADDRESS(RFD);
	mov	r2,#_RFD
	mov	dptr,#(_dmaConfig + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$482$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:482: dmaConfig.radio.DESTADDRH = (unsigned int) shortPacket >> 8;
	mov	r2,#_shortPacket
	mov	r3,#(_shortPacket >> 8)
	mov	ar2,r3
	mov	dptr,#(_dmaConfig + 0x0002)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$483$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:483: dmaConfig.radio.DESTADDRL = (unsigned int) shortPacket;
	mov	r2,#_shortPacket
	mov	r3,#(_shortPacket >> 8)
	mov	dptr,#(_dmaConfig + 0x0003)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$484$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:484: dmaConfig.radio.VLEN_LENH = 0b10000000; // Transfer length is FirstByte+3
	mov	dptr,#(_dmaConfig + 0x0004)
	mov	a,#0x80
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$485$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:485: dmaConfig.radio.LENL = 0b00000100; // max length = 4
	mov	dptr,#(_dmaConfig + 0x0005)
	mov	a,#0x04
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$486$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:486: dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
	mov	dptr,#(_dmaConfig + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$487$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:487: dmaConfig.radio.DC7 = 0x12; // SRCINC = 0, DESTINC = 1, IRQMASK = 0, M8 = 0, PRIORITY = 2
	mov	dptr,#(_dmaConfig + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$490$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:490: DMAARM |= 1 << DMA_CHANNEL_RADIO;
	orl	_DMAARM,#0x02
	C$vibes_lab_radio_protocol.c$493$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:493: RFST = SRX;
	mov	_RFST,#0x02
	C$vibes_lab_radio_protocol.c$494$1$1 ==.
	XFvibes_lab_radio_protocol$radioRxShortPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radioRxReceievePacket'
;------------------------------------------------------------
;------------------------------------------------------------
	Fvibes_lab_radio_protocol$radioRxReceievePacket$0$0 ==.
	C$vibes_lab_radio_protocol.c$505$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:505: static void radioRxReceievePacket(uint8 timeout)
;	-----------------------------------------
;	 function radioRxReceievePacket
;	-----------------------------------------
_radioRxReceievePacket:
	C$vibes_lab_radio_protocol.c$508$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:508: if(timeout)
	mov	a,dpl
	mov	r2,a
	jz	00102$
	C$vibes_lab_radio_protocol.c$510$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:510: MCSM2 = 0x00; // RX_TIME = 0.  Helps determine the units of the RX timeout period.
	mov	dptr,#_MCSM2
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$511$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:511: WORCTRL = 0; // WOR_RES = 0.  Helps determine the units of the RX timeout period.
	mov	_WORCTRL,#0x00
	C$vibes_lab_radio_protocol.c$512$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:512: WOREVT1 = timeout;
	mov	_WOREVT1,r2
	C$vibes_lab_radio_protocol.c$513$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:513: WOREVT0 = 0;
	mov	_WOREVT0,#0x00
	sjmp	00103$
00102$:
	C$vibes_lab_radio_protocol.c$517$2$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:517: MCSM2 = 0x07; // RX_TIME = 7: No timeout.
	mov	dptr,#_MCSM2
	mov	a,#0x07
	movx	@dptr,a
00103$:
	C$vibes_lab_radio_protocol.c$520$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:520: dmaConfig.radio.SRCADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
	mov	r2,#_RFD
	mov	r3,#0x00
	mov	a,#0xDF
	add	a,r3
	mov	r2,a
	mov	dptr,#_dmaConfig
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$521$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:521: dmaConfig.radio.SRCADDRL = XDATA_SFR_ADDRESS(RFD);
	mov	r2,#_RFD
	mov	dptr,#(_dmaConfig + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$522$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:522: dmaConfig.radio.DESTADDRH =
	C$vibes_lab_radio_protocol.c$523$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:523: (unsigned int) packetBuffer[interruptIndex] >> 8;
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r2,a
	mov	dptr,#(_dmaConfig + 0x0002)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$524$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:524: dmaConfig.radio.DESTADDRL =
	C$vibes_lab_radio_protocol.c$525$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:525: (unsigned int) packetBuffer[interruptIndex];
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	dptr,#(_dmaConfig + 0x0003)
	mov	a,r2
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$526$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:526: dmaConfig.radio.VLEN_LENH = 0b10000000; // Transfer length is FirstByte+3
	mov	dptr,#(_dmaConfig + 0x0004)
	mov	a,#0x80
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$527$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:527: dmaConfig.radio.LENL = 0b10011010; // max length = MAX_PACKET_SIZE
	mov	dptr,#(_dmaConfig + 0x0005)
	mov	a,#0x9A
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$528$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:528: dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
	mov	dptr,#(_dmaConfig + 0x0006)
	mov	a,#0x13
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$529$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:529: dmaConfig.radio.DC7 = 0x12; // SRCINC = 0, DESTINC = 1, IRQMASK = 0, M8 = 0, PRIORITY = 2
	mov	dptr,#(_dmaConfig + 0x0007)
	mov	a,#0x12
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$532$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:532: DMAARM |= 1 << DMA_CHANNEL_RADIO;
	orl	_DMAARM,#0x02
	C$vibes_lab_radio_protocol.c$535$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:535: RFST = SRX;
	mov	_RFST,#0x02
	C$vibes_lab_radio_protocol.c$536$1$1 ==.
	XFvibes_lab_radio_protocol$radioRxReceievePacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_RF'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ISR_RF$0$0 ==.
	C$vibes_lab_radio_protocol.c$538$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:538: ISR(RF, 2)
;	-----------------------------------------
;	 function ISR_RF
;	-----------------------------------------
_ISR_RF:
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
	C$vibes_lab_radio_protocol.c$540$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:540: S1CON &= ~0x03; // Clear the general RFIF interrupt registers
	anl	_S1CON,#0xFC
	C$vibes_lab_radio_protocol.c$543$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:543: DMAARM = 0x80 | (1 << DMA_CHANNEL_RADIO); // Abort any ongoing radio DMA transfer.
	mov	_DMAARM,#0x82
	C$vibes_lab_radio_protocol.c$544$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:544: DMAIRQ &= ~(1 << DMA_CHANNEL_RADIO); // Clear any pending radio DMA interrupt.
	anl	_DMAIRQ,#0xFD
	C$vibes_lab_radio_protocol.c$546$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:546: if(RFIF & 0x10) // Check IRQ_DONE
	mov	a,_RFIF
	jb	acc.4,00165$
	ljmp	00145$
00165$:
	C$vibes_lab_radio_protocol.c$548$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:548: RFIF = ~0x10; // Clear IRQ_DONE
	mov	_RFIF,#0xEF
	C$vibes_lab_radio_protocol.c$550$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:550: if(RFIF & 0x80) // Check IRQ_TXUNF (transmission underflow)
	mov	a,_RFIF
	jnb	acc.7,00137$
	C$vibes_lab_radio_protocol.c$552$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:552: RFIF &= ~0x80; // Clear IRQ_TXUNF
	anl	_RFIF,#0x7F
	C$vibes_lab_radio_protocol.c$555$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:555: RFST = SIDLE;
	mov	_RFST,#0x04
	C$vibes_lab_radio_protocol.c$556$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:556: RFST = SCAL;
	mov	_RFST,#0x01
	C$vibes_lab_radio_protocol.c$564$3$3 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:564: if(isTransmitter)
	jnb	_isTransmitter,00102$
	C$vibes_lab_radio_protocol.c$566$4$4 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:566: awaitingResponse = FALSE; // we are about to retransmit data
	clr	_awaitingResponse
	C$vibes_lab_radio_protocol.c$568$4$4 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:568: txBusy = 0; // clear txBusy so we can initiate a new transmission
	clr	_txBusy
	C$vibes_lab_radio_protocol.c$569$4$4 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:569: reTransmitting = TRUE; // a retransmission is about to occur
	setb	_reTransmitting
	C$vibes_lab_radio_protocol.c$570$4$4 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:570: radioTxSendPacket(); // retransmit data
	mov	psw,#0x00
	lcall	_radioTxSendPacket
	mov	psw,#0x10
	ljmp	00147$
00102$:
	C$vibes_lab_radio_protocol.c$578$4$5 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:578: sendingResponse = FALSE; // clear all the handshake variables
	clr	_sendingResponse
	C$vibes_lab_radio_protocol.c$579$4$5 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:579: sendingACK = FALSE;
	clr	_sendingACK
	C$vibes_lab_radio_protocol.c$580$4$5 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:580: sendingNAK = FALSE;
	clr	_sendingNAK
	C$vibes_lab_radio_protocol.c$582$4$5 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:582: radioRxReceievePacket(50); // restart in reception mode
	mov	dpl,#0x32
	mov	psw,#0x00
	lcall	_radioRxReceievePacket
	mov	psw,#0x10
	ljmp	00147$
00137$:
	C$vibes_lab_radio_protocol.c$585$2$2 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:585: else if(RFIF & 0x40) // Check IRQ_RXOVF (reception overflow)
	mov	a,_RFIF
	jnb	acc.6,00134$
	C$vibes_lab_radio_protocol.c$587$3$6 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:587: RFIF &= ~0x40; // CLear IRQ_RXOVF
	anl	_RFIF,#0xBF
	C$vibes_lab_radio_protocol.c$590$3$6 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:590: RFST = SIDLE;
	mov	_RFST,#0x04
	C$vibes_lab_radio_protocol.c$591$3$6 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:591: RFST = SCAL;
	mov	_RFST,#0x01
	C$vibes_lab_radio_protocol.c$597$3$6 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:597: if(!isTransmitter)
	jb	_isTransmitter,00105$
	C$vibes_lab_radio_protocol.c$599$4$7 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:599: sendingResponse = FALSE; // clear all the handshake variables
	clr	_sendingResponse
	C$vibes_lab_radio_protocol.c$600$4$7 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:600: sendingACK = FALSE;
	clr	_sendingACK
	C$vibes_lab_radio_protocol.c$601$4$7 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:601: sendingNAK = FALSE;
	clr	_sendingNAK
	C$vibes_lab_radio_protocol.c$603$4$7 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:603: radioRxReceievePacket(50); // restart in reception mode
	mov	dpl,#0x32
	mov	psw,#0x00
	lcall	_radioRxReceievePacket
	mov	psw,#0x10
	ljmp	00147$
00105$:
	C$vibes_lab_radio_protocol.c$611$4$8 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:611: awaitingResponse = FALSE; // we are about to retransmit data
	clr	_awaitingResponse
	C$vibes_lab_radio_protocol.c$613$4$8 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:613: txBusy = 0; // clear txBusy so we can initiate a new transmission
	clr	_txBusy
	C$vibes_lab_radio_protocol.c$614$4$8 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:614: reTransmitting = TRUE; // a retransmission is about to occur
	setb	_reTransmitting
	C$vibes_lab_radio_protocol.c$615$4$8 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:615: radioTxSendPacket(); // retransmit data
	mov	psw,#0x00
	lcall	_radioTxSendPacket
	mov	psw,#0x10
	ljmp	00147$
00134$:
	C$vibes_lab_radio_protocol.c$620$3$9 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:620: if(isTransmitter) // This is the master
	jnb	_isTransmitter,00131$
	C$vibes_lab_radio_protocol.c$622$4$10 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:622: if(!awaitingResponse) // we just sent a data packet
	jb	_awaitingResponse,00114$
	C$vibes_lab_radio_protocol.c$624$5$11 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:624: awaitingResponse = TRUE; // check the response on next ISR
	setb	_awaitingResponse
	C$vibes_lab_radio_protocol.c$626$5$11 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:626: shortPacket[1] = 0; // clear the last response
	mov	dptr,#(_shortPacket + 0x0001)
	clr	a
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$627$5$11 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:627: radioRxShortPacket(2); // slave has 2ms to respond
	mov	dpl,#0x02
	mov	psw,#0x00
	lcall	_radioRxShortPacket
	mov	psw,#0x10
	ljmp	00147$
00114$:
	C$vibes_lab_radio_protocol.c$631$5$12 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:631: awaitingResponse = FALSE; // we just got the response
	clr	_awaitingResponse
	C$vibes_lab_radio_protocol.c$635$5$12 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:635: if(shortPacket[1] == ACK_FILTER) // slave ACK'd transmission
	mov	dptr,#(_shortPacket + 0x0001)
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_ACK_FILTER
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r2
	cjne	a,ar3,00111$
	C$vibes_lab_radio_protocol.c$638$6$13 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:638: if(interruptIndex == PACKET_BUFFER_SIZE - 1)
	mov	a,#0x13
	cjne	a,_interruptIndex,00108$
	C$vibes_lab_radio_protocol.c$640$7$14 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:640: interruptIndex = 0;
	mov	_interruptIndex,#0x00
	sjmp	00109$
00108$:
	C$vibes_lab_radio_protocol.c$644$7$15 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:644: ++interruptIndex;
	inc	_interruptIndex
00109$:
	C$vibes_lab_radio_protocol.c$648$6$13 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:648: ++packetID;
	mov	r0,#_packetID
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	C$vibes_lab_radio_protocol.c$652$6$13 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:652: ++freePackets;
	inc	_freePackets
	C$vibes_lab_radio_protocol.c$655$6$13 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:655: sendReceiveComplete = TRUE;
	setb	_sendReceiveComplete
	C$vibes_lab_radio_protocol.c$657$6$13 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:657: reTransmitting = FALSE; // clear reTransmitting
	clr	_reTransmitting
	C$vibes_lab_radio_protocol.c$658$6$13 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:658: txBusy = 0; // clear txBusy b.c transmission is finished
	clr	_txBusy
	ljmp	00147$
00111$:
	C$vibes_lab_radio_protocol.c$669$6$16 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:669: txBusy = 0; // clear txBusy so we can initiate a new transmission
	clr	_txBusy
	C$vibes_lab_radio_protocol.c$670$6$16 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:670: reTransmitting = TRUE; // a retransmission is about to occur
	setb	_reTransmitting
	C$vibes_lab_radio_protocol.c$671$6$16 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:671: radioTxSendPacket(); // retransmit data
	mov	psw,#0x00
	lcall	_radioTxSendPacket
	mov	psw,#0x10
	ljmp	00147$
00131$:
	C$vibes_lab_radio_protocol.c$677$4$17 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:677: if(!sendingResponse) // we just received a data packet
	jb	_sendingResponse,00128$
	C$vibes_lab_radio_protocol.c$679$5$18 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:679: sendingResponse = TRUE; // restart in receive mode next ISR
	setb	_sendingResponse
	C$vibes_lab_radio_protocol.c$681$5$18 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:681: if(PKTSTATUS & 0x80) // Check CRC passed
	mov	dptr,#_PKTSTATUS
	movx	a,@dptr
	mov	r2,a
	jnb	acc.7,00117$
	C$vibes_lab_radio_protocol.c$684$6$19 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:684: sendingACK = TRUE;
	setb	_sendingACK
	C$vibes_lab_radio_protocol.c$685$6$19 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:685: radioTxShortPacket(ACK_FILTER);
	mov	dptr,#_ACK_FILTER
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	mov	psw,#0x00
	lcall	_radioTxShortPacket
	mov	psw,#0x10
	ljmp	00147$
00117$:
	C$vibes_lab_radio_protocol.c$690$6$20 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:690: sendingNAK = TRUE;
	setb	_sendingNAK
	C$vibes_lab_radio_protocol.c$691$6$20 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:691: radioTxShortPacket(NAK_FILTER);
	mov	dptr,#_NAK_FILTER
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	mov	psw,#0x00
	lcall	_radioTxShortPacket
	mov	psw,#0x10
	ljmp	00147$
00128$:
	C$vibes_lab_radio_protocol.c$696$5$21 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:696: sendingResponse = FALSE;
	clr	_sendingResponse
	C$vibes_lab_radio_protocol.c$700$5$21 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:700: if(sendingACK)
	C$vibes_lab_radio_protocol.c$702$6$22 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:702: sendingACK = FALSE; // clear sendingACK
	jbc	_sendingACK,00178$
	ljmp	00125$
00178$:
	C$vibes_lab_radio_protocol.c$707$6$22 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:707: if(packetBuffer[interruptIndex][packetBuffer[interruptIndex][0]]
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	dpl,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	mov	r0,#_packetID
	movx	a,@r0
	cjne	a,ar2,00179$
	sjmp	00123$
00179$:
	C$vibes_lab_radio_protocol.c$712$7$23 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:712: packetBuffer[interruptIndex][packetBuffer[interruptIndex][0]];
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r3,a
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	dpl,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r0,#_packetID
	movx	@r0,a
	C$vibes_lab_radio_protocol.c$716$7$23 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:716: --packetBuffer[interruptIndex][0];
	mov	a,_interruptIndex
	mov	b,#0x9A
	mul	ab
	add	a,#_packetBuffer
	mov	r2,a
	mov	a,#(_packetBuffer >> 8)
	addc	a,b
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	dec	r4
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	C$vibes_lab_radio_protocol.c$719$7$23 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:719: if(interruptIndex == PACKET_BUFFER_SIZE - 1)
	mov	a,#0x13
	cjne	a,_interruptIndex,00120$
	C$vibes_lab_radio_protocol.c$721$8$24 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:721: interruptIndex = 0;
	mov	_interruptIndex,#0x00
	sjmp	00121$
00120$:
	C$vibes_lab_radio_protocol.c$725$8$25 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:725: ++interruptIndex;
	inc	_interruptIndex
00121$:
	C$vibes_lab_radio_protocol.c$730$7$23 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:730: --freePackets;
	dec	_freePackets
	C$vibes_lab_radio_protocol.c$733$7$23 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:733: sendReceiveComplete = TRUE;
	setb	_sendReceiveComplete
00123$:
	C$vibes_lab_radio_protocol.c$737$6$22 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:737: radioRxReceievePacket(50);
	mov	dpl,#0x32
	mov	psw,#0x00
	lcall	_radioRxReceievePacket
	mov	psw,#0x10
	sjmp	00147$
00125$:
	C$vibes_lab_radio_protocol.c$744$6$26 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:744: sendingNAK = FALSE; // Clear sendingNAK
	clr	_sendingNAK
	C$vibes_lab_radio_protocol.c$749$6$26 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:749: radioRxReceievePacket(50);
	mov	dpl,#0x32
	mov	psw,#0x00
	lcall	_radioRxReceievePacket
	mov	psw,#0x10
	sjmp	00147$
00145$:
	C$vibes_lab_radio_protocol.c$755$1$1 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:755: else if(RFIF & 0x20) // Check IRQ_TIMEOUT (Reception Timeout)
	mov	a,_RFIF
	jnb	acc.5,00147$
	C$vibes_lab_radio_protocol.c$757$2$27 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:757: RFIF &= ~0x20; // Clear IRQ_TIMEOUT
	anl	_RFIF,#0xDF
	C$vibes_lab_radio_protocol.c$762$2$27 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:762: if(!isTransmitter)
	jb	_isTransmitter,00140$
	C$vibes_lab_radio_protocol.c$764$3$28 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:764: sendingResponse = FALSE; // clear all the handshake variables
	clr	_sendingResponse
	C$vibes_lab_radio_protocol.c$765$3$28 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:765: sendingACK = FALSE;
	clr	_sendingACK
	C$vibes_lab_radio_protocol.c$766$3$28 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:766: sendingNAK = FALSE;
	clr	_sendingNAK
	C$vibes_lab_radio_protocol.c$769$3$28 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:769: radioRxReceievePacket(50);
	mov	dpl,#0x32
	mov	psw,#0x00
	lcall	_radioRxReceievePacket
	mov	psw,#0x10
	sjmp	00147$
00140$:
	C$vibes_lab_radio_protocol.c$777$3$29 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:777: awaitingResponse = FALSE; // we are about to retransmit data
	clr	_awaitingResponse
	C$vibes_lab_radio_protocol.c$779$3$29 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:779: txBusy = 0; // clear txBusy so we can initiate a new transmission
	clr	_txBusy
	C$vibes_lab_radio_protocol.c$780$3$29 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:780: reTransmitting = TRUE; // a retransmission is about to occur
	setb	_reTransmitting
	C$vibes_lab_radio_protocol.c$781$3$29 ==.
;	libraries/src/vibes_lab_radio_protocol/vibes_lab_radio_protocol.c:781: radioTxSendPacket(); // retransmit data
	mov	psw,#0x00
	lcall	_radioTxSendPacket
	mov	psw,#0x10
00147$:
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
	C$vibes_lab_radio_protocol.c$784$2$1 ==.
	XG$ISR_RF$0$0 ==.
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$param_radio_channel$0$0 == .
_param_radio_channel:
	.byte #0x80,#0x00,#0x00,#0x00	;  128
Fvibes_lab_radio_protocol$NAK_FILTER$0$0 == .
_NAK_FILTER:
	.db #0x01	; 1
Fvibes_lab_radio_protocol$ACK_FILTER$0$0 == .
_ACK_FILTER:
	.db #0xFF	; 255
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
