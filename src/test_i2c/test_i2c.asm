;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Mon Dec 10 17:38:01 2012
;--------------------------------------------------------
	.module test_i2c
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _voltage
	.globl _DAC_COMMAND
	.globl _DAC_ADDRESS
	.globl _main
	.globl _reportResults
	.globl _updateLeds
	.globl _reportResults_PARM_4
	.globl _reportResults_PARM_3
	.globl _reportResults_PARM_2
	.globl _transfers
	.globl _nacks
	.globl _tempTimeStamp
	.globl _operationalTimeStamp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftest_i2c$P0$0$0 == 0x0080
_P0	=	0x0080
Ftest_i2c$SP$0$0 == 0x0081
_SP	=	0x0081
Ftest_i2c$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Ftest_i2c$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Ftest_i2c$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Ftest_i2c$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Ftest_i2c$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Ftest_i2c$PCON$0$0 == 0x0087
_PCON	=	0x0087
Ftest_i2c$TCON$0$0 == 0x0088
_TCON	=	0x0088
Ftest_i2c$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Ftest_i2c$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Ftest_i2c$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Ftest_i2c$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Ftest_i2c$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Ftest_i2c$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Ftest_i2c$P1$0$0 == 0x0090
_P1	=	0x0090
Ftest_i2c$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Ftest_i2c$DPS$0$0 == 0x0092
_DPS	=	0x0092
Ftest_i2c$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Ftest_i2c$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Ftest_i2c$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Ftest_i2c$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Ftest_i2c$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Ftest_i2c$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Ftest_i2c$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Ftest_i2c$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Ftest_i2c$P2$0$0 == 0x00a0
_P2	=	0x00a0
Ftest_i2c$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Ftest_i2c$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Ftest_i2c$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Ftest_i2c$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Ftest_i2c$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Ftest_i2c$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Ftest_i2c$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Ftest_i2c$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Ftest_i2c$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Ftest_i2c$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Ftest_i2c$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Ftest_i2c$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Ftest_i2c$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Ftest_i2c$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Ftest_i2c$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Ftest_i2c$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Ftest_i2c$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Ftest_i2c$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Ftest_i2c$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Ftest_i2c$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Ftest_i2c$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Ftest_i2c$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Ftest_i2c$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Ftest_i2c$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Ftest_i2c$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Ftest_i2c$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Ftest_i2c$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Ftest_i2c$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Ftest_i2c$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Ftest_i2c$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Ftest_i2c$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Ftest_i2c$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Ftest_i2c$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Ftest_i2c$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Ftest_i2c$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Ftest_i2c$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Ftest_i2c$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Ftest_i2c$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Ftest_i2c$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Ftest_i2c$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Ftest_i2c$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Ftest_i2c$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Ftest_i2c$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Ftest_i2c$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Ftest_i2c$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Ftest_i2c$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Ftest_i2c$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Ftest_i2c$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Ftest_i2c$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Ftest_i2c$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Ftest_i2c$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Ftest_i2c$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Ftest_i2c$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Ftest_i2c$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Ftest_i2c$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Ftest_i2c$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Ftest_i2c$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Ftest_i2c$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Ftest_i2c$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Ftest_i2c$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Ftest_i2c$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Ftest_i2c$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Ftest_i2c$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Ftest_i2c$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Ftest_i2c$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Ftest_i2c$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Ftest_i2c$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Ftest_i2c$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Ftest_i2c$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Ftest_i2c$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Ftest_i2c$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Ftest_i2c$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Ftest_i2c$B$0$0 == 0x00f0
_B	=	0x00f0
Ftest_i2c$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Ftest_i2c$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Ftest_i2c$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Ftest_i2c$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Ftest_i2c$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Ftest_i2c$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Ftest_i2c$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Ftest_i2c$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Ftest_i2c$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Ftest_i2c$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Ftest_i2c$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Ftest_i2c$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Ftest_i2c$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Ftest_i2c$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Ftest_i2c$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Ftest_i2c$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Ftest_i2c$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Ftest_i2c$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Ftest_i2c$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftest_i2c$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Ftest_i2c$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Ftest_i2c$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Ftest_i2c$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Ftest_i2c$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Ftest_i2c$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Ftest_i2c$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Ftest_i2c$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Ftest_i2c$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Ftest_i2c$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Ftest_i2c$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Ftest_i2c$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Ftest_i2c$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Ftest_i2c$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Ftest_i2c$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Ftest_i2c$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Ftest_i2c$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Ftest_i2c$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Ftest_i2c$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Ftest_i2c$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Ftest_i2c$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Ftest_i2c$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Ftest_i2c$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Ftest_i2c$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Ftest_i2c$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Ftest_i2c$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Ftest_i2c$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Ftest_i2c$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Ftest_i2c$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Ftest_i2c$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Ftest_i2c$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Ftest_i2c$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Ftest_i2c$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Ftest_i2c$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Ftest_i2c$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Ftest_i2c$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Ftest_i2c$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Ftest_i2c$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Ftest_i2c$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Ftest_i2c$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Ftest_i2c$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Ftest_i2c$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Ftest_i2c$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Ftest_i2c$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Ftest_i2c$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Ftest_i2c$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Ftest_i2c$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Ftest_i2c$EA$0$0 == 0x00af
_EA	=	0x00af
Ftest_i2c$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Ftest_i2c$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Ftest_i2c$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Ftest_i2c$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Ftest_i2c$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Ftest_i2c$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Ftest_i2c$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Ftest_i2c$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Ftest_i2c$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Ftest_i2c$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Ftest_i2c$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Ftest_i2c$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Ftest_i2c$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Ftest_i2c$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Ftest_i2c$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Ftest_i2c$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Ftest_i2c$P$0$0 == 0x00d0
_P	=	0x00d0
Ftest_i2c$F1$0$0 == 0x00d1
_F1	=	0x00d1
Ftest_i2c$OV$0$0 == 0x00d2
_OV	=	0x00d2
Ftest_i2c$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Ftest_i2c$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Ftest_i2c$F0$0$0 == 0x00d5
_F0	=	0x00d5
Ftest_i2c$AC$0$0 == 0x00d6
_AC	=	0x00d6
Ftest_i2c$CY$0$0 == 0x00d7
_CY	=	0x00d7
Ftest_i2c$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Ftest_i2c$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Ftest_i2c$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Ftest_i2c$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Ftest_i2c$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Ftest_i2c$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Ftest_i2c$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Ftest_i2c$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Ftest_i2c$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Ftest_i2c$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Ftest_i2c$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Ftest_i2c$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Ftest_i2c$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Ftest_i2c$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Ftest_i2c$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Ftest_i2c$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Ftest_i2c$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Ftest_i2c$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Ftest_i2c$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Ftest_i2c$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Ftest_i2c$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Ftest_i2c$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Ftest_i2c$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Ftest_i2c$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Ftest_i2c$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Ftest_i2c$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Ftest_i2c$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Ftest_i2c$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Ftest_i2c$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Ftest_i2c$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Ftest_i2c$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Ftest_i2c$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Ftest_i2c$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Ftest_i2c$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Ftest_i2c$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Ftest_i2c$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Ftest_i2c$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Ftest_i2c$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Ftest_i2c$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Ftest_i2c$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$operationalTimeStamp$0$0==.
_operationalTimeStamp::
	.ds 4
G$tempTimeStamp$0$0==.
_tempTimeStamp::
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
G$nacks$0$0==.
_nacks::
	.ds 10
G$transfers$0$0==.
_transfers::
	.ds 40
LreportResults$ns$1$1==.
_reportResults_PARM_2:
	.ds 1
LreportResults$testNum$1$1==.
_reportResults_PARM_3:
	.ds 1
LreportResults$time$1$1==.
_reportResults_PARM_4:
	.ds 1
LreportResults$transPerSecond$2$2==.
_reportResults_transPerSecond_2_2:
	.ds 4
LreportResults$dataRateKbps$2$2==.
_reportResults_dataRateKbps_2_2:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Ftest_i2c$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Ftest_i2c$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Ftest_i2c$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Ftest_i2c$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Ftest_i2c$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Ftest_i2c$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Ftest_i2c$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Ftest_i2c$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Ftest_i2c$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Ftest_i2c$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Ftest_i2c$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Ftest_i2c$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Ftest_i2c$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Ftest_i2c$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Ftest_i2c$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Ftest_i2c$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Ftest_i2c$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Ftest_i2c$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Ftest_i2c$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Ftest_i2c$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Ftest_i2c$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Ftest_i2c$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Ftest_i2c$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Ftest_i2c$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Ftest_i2c$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Ftest_i2c$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Ftest_i2c$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Ftest_i2c$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Ftest_i2c$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Ftest_i2c$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Ftest_i2c$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Ftest_i2c$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Ftest_i2c$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Ftest_i2c$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Ftest_i2c$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Ftest_i2c$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Ftest_i2c$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Ftest_i2c$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Ftest_i2c$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Ftest_i2c$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Ftest_i2c$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Ftest_i2c$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Ftest_i2c$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Ftest_i2c$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Ftest_i2c$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Ftest_i2c$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Ftest_i2c$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Ftest_i2c$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Ftest_i2c$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Ftest_i2c$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Ftest_i2c$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Ftest_i2c$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Ftest_i2c$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Ftest_i2c$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Ftest_i2c$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Ftest_i2c$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Ftest_i2c$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Ftest_i2c$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Ftest_i2c$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Ftest_i2c$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Ftest_i2c$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Ftest_i2c$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Ftest_i2c$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Ftest_i2c$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Ftest_i2c$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Ftest_i2c$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Ftest_i2c$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Ftest_i2c$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Ftest_i2c$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Ftest_i2c$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Ftest_i2c$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Ftest_i2c$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Ftest_i2c$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Ftest_i2c$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Ftest_i2c$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Ftest_i2c$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Ftest_i2c$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Ftest_i2c$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Ftest_i2c$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Ftest_i2c$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Ftest_i2c$USBF5$0$0 == 0xde2a
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
	reti
	.ds	7
	ljmp	_ISR_T4
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
;Allocation info for local variables in function 'updateLeds'
;------------------------------------------------------------
;------------------------------------------------------------
	G$updateLeds$0$0 ==.
	C$test_i2c.c$52$0$0 ==.
;	src/test_i2c/test_i2c.c:52: void updateLeds()
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
	C$test_i2c.c$54$1$1 ==.
;	src/test_i2c/test_i2c.c:54: usbShowStatusWithGreenLed();
	lcall	_usbShowStatusWithGreenLed
	C$test_i2c.c$55$2$2 ==.
;	src/test_i2c/test_i2c.c:55: LED_YELLOW(vinPowerPresent());
	lcall	_vinPowerPresent
	jnc	00105$
	orl	_P2DIR,#0x04
	sjmp	00106$
00105$:
	anl	_P2DIR,#0xFB
00106$:
	C$test_i2c.c$57$1$1 ==.
;	src/test_i2c/test_i2c.c:57: if (getMs() - operationalTimeStamp > 50)
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
	mov	a,#0x32
	subb	a,r2
	clr	a
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00103$
	C$test_i2c.c$60$2$3 ==.
;	src/test_i2c/test_i2c.c:60: operationalTimeStamp = getMs();
	lcall	_getMs
	mov	_operationalTimeStamp,dpl
	mov	(_operationalTimeStamp + 1),dph
	mov	(_operationalTimeStamp + 2),b
	mov	(_operationalTimeStamp + 3),a
	C$test_i2c.c$62$3$4 ==.
;	src/test_i2c/test_i2c.c:62: LED_RED_TOGGLE();
	xrl	_P2DIR,#0x02
00103$:
	C$test_i2c.c$64$3$1 ==.
	XG$updateLeds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reportResults'
;------------------------------------------------------------
;buffer                    Allocated with name '_reportResults_buffer_2_2'
;------------------------------------------------------------
	G$reportResults$0$0 ==.
	C$test_i2c.c$66$3$1 ==.
;	src/test_i2c/test_i2c.c:66: void reportResults(uint32 ts, uint8 ns, uint8 testNum, uint8 time)
;	-----------------------------------------
;	 function reportResults
;	-----------------------------------------
_reportResults:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	C$test_i2c.c$68$1$1 ==.
;	src/test_i2c/test_i2c.c:68: if (usbComTxAvailable() > 64)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_usbComTxAvailable
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,#0x40
	cjne	a,ar6,00106$
00106$:
	jc	00107$
	ret
00107$:
	C$test_i2c.c$73$2$2 ==.
;	src/test_i2c/test_i2c.c:73: uint32 transPerSecond = (uint32) (ts / time);
	mov	r0,#_reportResults_PARM_4
	mov	r1,#__divulong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__divulong
	mov	r0,#_reportResults_transPerSecond_2_2
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$test_i2c.c$74$2$1 ==.
;	src/test_i2c/test_i2c.c:74: uint32 dataRateKbps = (uint32) ((ts * 24) / (time * 1000));
	mov	r0,#__mullong_PARM_2
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#(0x18&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	r0,#_reportResults_PARM_4
	mov	r1,#__mulint_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	mov	dptr,#0x03E8
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	r0,#__divulong_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	r0,#_reportResults_dataRateKbps_2_2
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	C$test_i2c.c$80$2$2 ==.
;	src/test_i2c/test_i2c.c:80: transPerSecond, dataRateKbps, ns, testNum);
	mov	r0,#_reportResults_PARM_3
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#_reportResults_PARM_2
	movx	a,@r0
	mov	r2,a
	mov	r3,#0x00
	C$test_i2c.c$79$2$2 ==.
;	src/test_i2c/test_i2c.c:79: "nacks: %d        Test: %d \r\n\r\n",
	C$test_i2c.c$77$2$2 ==.
;	src/test_i2c/test_i2c.c:77: buffer, "Transmissions/second: %Lu x "
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	r0,#_reportResults_dataRateKbps_2_2
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_reportResults_transPerSecond_2_2
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
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
	add	a,#0xee
	mov	sp,a
	mov	r0,#_usbComTxSend_PARM_2
	mov	a,r2
	movx	@r0,a
	C$test_i2c.c$82$2$2 ==.
;	src/test_i2c/test_i2c.c:82: usbComTxSend(buffer, bufferLength);
	mov	dptr,#_reportResults_buffer_2_2
	C$test_i2c.c$84$2$1 ==.
	XG$reportResults$0$0 ==.
	ljmp	_usbComTxSend
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$test_i2c.c$88$2$1 ==.
;	src/test_i2c/test_i2c.c:88: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$test_i2c.c$93$1$1 ==.
;	src/test_i2c/test_i2c.c:93: systemInit();
	lcall	_systemInit
	C$test_i2c.c$94$1$1 ==.
;	src/test_i2c/test_i2c.c:94: usbInit();
	lcall	_usbInit
	C$test_i2c.c$95$1$1 ==.
;	src/test_i2c/test_i2c.c:95: dacInit();
	lcall	_dacInit
	C$test_i2c.c$97$1$1 ==.
;	src/test_i2c/test_i2c.c:97: tempTimeStamp = getMs();
	lcall	_getMs
	mov	_tempTimeStamp,dpl
	mov	(_tempTimeStamp + 1),dph
	mov	(_tempTimeStamp + 2),b
	mov	(_tempTimeStamp + 3),a
	C$test_i2c.c$100$1$1 ==.
;	src/test_i2c/test_i2c.c:100: while (getMs() - tempTimeStamp < 4000)
00101$:
	lcall	_getMs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,r2
	clr	c
	subb	a,_tempTimeStamp
	mov	r2,a
	mov	a,r3
	subb	a,(_tempTimeStamp + 1)
	mov	r3,a
	mov	a,r4
	subb	a,(_tempTimeStamp + 2)
	mov	r4,a
	mov	a,r5
	subb	a,(_tempTimeStamp + 3)
	mov	r5,a
	clr	c
	mov	a,r2
	subb	a,#0xA0
	mov	a,r3
	subb	a,#0x0F
	mov	a,r4
	subb	a,#0x00
	mov	a,r5
	subb	a,#0x00
	jnc	00127$
	C$test_i2c.c$102$2$2 ==.
;	src/test_i2c/test_i2c.c:102: updateLeds(); // blinks red LED every 50ms if we are receiving packets
	lcall	_updateLeds
	C$test_i2c.c$103$2$2 ==.
;	src/test_i2c/test_i2c.c:103: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
	lcall	_boardService
	C$test_i2c.c$104$2$2 ==.
;	src/test_i2c/test_i2c.c:104: usbComService(); // so we can start bootloader from wixel config GUI
	lcall	_usbComService
	C$test_i2c.c$107$1$1 ==.
;	src/test_i2c/test_i2c.c:107: for (i = 0; i < 10; i++)
	sjmp	00101$
00127$:
	mov	r2,#0x00
00116$:
	cjne	r2,#0x0A,00134$
00134$:
	jc	00135$
	ljmp	00119$
00135$:
	C$test_i2c.c$109$2$3 ==.
;	src/test_i2c/test_i2c.c:109: transfers[i] = 0;
	mov	a,r2
	add	a,r2
	add	a,acc
	mov	r3,a
	add	a,#_transfers
	mov	r0,a
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	C$test_i2c.c$110$2$3 ==.
;	src/test_i2c/test_i2c.c:110: nacks[i] = FALSE;
	mov	a,r2
	add	a,#_nacks
	mov	r0,a
	clr	a
	movx	@r0,a
	C$test_i2c.c$113$2$3 ==.
;	src/test_i2c/test_i2c.c:113: tempTimeStamp = getMs();
	push	ar2
	push	ar3
	lcall	_getMs
	mov	_tempTimeStamp,dpl
	mov	(_tempTimeStamp + 1),dph
	mov	(_tempTimeStamp + 2),b
	mov	(_tempTimeStamp + 3),a
	pop	ar3
	pop	ar2
	C$test_i2c.c$114$3$4 ==.
;	src/test_i2c/test_i2c.c:114: while (getMs() - tempTimeStamp < 2000)
00104$:
	push	ar2
	push	ar3
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
	mov	a,r4
	clr	c
	subb	a,_tempTimeStamp
	mov	r4,a
	mov	a,r5
	subb	a,(_tempTimeStamp + 1)
	mov	r5,a
	mov	a,r6
	subb	a,(_tempTimeStamp + 2)
	mov	r6,a
	mov	a,r7
	subb	a,(_tempTimeStamp + 3)
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0xD0
	mov	a,r5
	subb	a,#0x07
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00136$
	ljmp	00106$
00136$:
	C$test_i2c.c$116$3$4 ==.
;	src/test_i2c/test_i2c.c:116: dacStart();
	push	ar2
	push	ar3
	lcall	_dacStart
	pop	ar3
	pop	ar2
	C$test_i2c.c$117$3$4 ==.
;	src/test_i2c/test_i2c.c:117: nacks[i] |= dacSendByte(DAC_ADDRESS);
	mov	a,r2
	add	a,#_nacks
	mov	r0,a
	movx	a,@r0
	mov	r4,a
	mov	dptr,#_DAC_ADDRESS
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar0
	lcall	_dacSendByte
	clr	a
	rlc	a
	mov	r5,a
	pop	ar0
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r4
	movx	@r0,a
	C$test_i2c.c$118$3$4 ==.
;	src/test_i2c/test_i2c.c:118: nacks[i] |= dacSendByte(
	mov	a,r2
	add	a,#_nacks
	mov	r0,a
	movx	a,@r0
	mov	r4,a
	C$test_i2c.c$119$3$4 ==.
;	src/test_i2c/test_i2c.c:119: DAC_COMMAND | (uint8) ((voltage & 0xF00) >> 8));
	mov	dptr,#_voltage
	clr	a
	movc	a,@a+dptr
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x0F
	mov	ar5,r6
	mov	dptr,#_DAC_COMMAND
	clr	a
	movc	a,@a+dptr
	orl	a,r5
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar0
	lcall	_dacSendByte
	clr	a
	rlc	a
	mov	r5,a
	pop	ar0
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	orl	a,r4
	movx	@r0,a
	C$test_i2c.c$120$3$4 ==.
;	src/test_i2c/test_i2c.c:120: nacks[i] |= dacSendByte((uint8) (voltage & 0xFF));
	mov	a,r2
	add	a,#_nacks
	mov	r0,a
	movx	a,@r0
	mov	r4,a
	mov	dptr,#_voltage
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar0
	lcall	_dacSendByte
	clr	a
	rlc	a
	mov	r5,a
	pop	ar0
	pop	ar4
	mov	a,r5
	orl	a,r4
	movx	@r0,a
	C$test_i2c.c$121$3$4 ==.
;	src/test_i2c/test_i2c.c:121: dacStop();
	lcall	_dacStop
	pop	ar3
	pop	ar2
	C$test_i2c.c$123$3$4 ==.
;	src/test_i2c/test_i2c.c:123: transfers[i]++;
	mov	a,r3
	add	a,#_transfers
	mov	r0,a
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	dec	r0
	dec	r0
	dec	r0
	inc	r4
	cjne	r4,#0x00,00137$
	inc	r5
	cjne	r5,#0x00,00137$
	inc	r6
	cjne	r6,#0x00,00137$
	inc	r7
00137$:
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	dec	r0
	dec	r0
	dec	r0
	ljmp	00104$
00106$:
	C$test_i2c.c$126$3$5 ==.
;	src/test_i2c/test_i2c.c:126: LED_RED_TOGGLE();
	xrl	_P2DIR,#0x02
	C$test_i2c.c$107$1$1 ==.
;	src/test_i2c/test_i2c.c:107: for (i = 0; i < 10; i++)
	inc	r2
	ljmp	00116$
00119$:
	C$test_i2c.c$129$1$1 ==.
;	src/test_i2c/test_i2c.c:129: i = 0;
	mov	r2,#0x00
	C$test_i2c.c$132$1$1 ==.
;	src/test_i2c/test_i2c.c:132: while (TRUE)
00114$:
	C$test_i2c.c$134$2$6 ==.
;	src/test_i2c/test_i2c.c:134: updateLeds(); // blinks red LED every 50ms if we are receiving packets
	push	ar2
	lcall	_updateLeds
	C$test_i2c.c$135$2$6 ==.
;	src/test_i2c/test_i2c.c:135: boardService(); // so we can start bootloader by shorting P2_2 to 3V3
	lcall	_boardService
	C$test_i2c.c$136$2$6 ==.
;	src/test_i2c/test_i2c.c:136: usbComService(); // so we can start bootloader from wixel config GUI
	lcall	_usbComService
	pop	ar2
	C$test_i2c.c$138$2$6 ==.
;	src/test_i2c/test_i2c.c:138: if ((i % 5 == 0) && (i / 5 <= 9))
	mov	b,#0x05
	mov	a,r2
	div	ab
	mov	a,b
	jnz	00110$
	mov	b,#0x05
	mov	a,r2
	div	ab
	mov	r3,a
	mov	a,#0x09
	cjne	a,ar3,00139$
00139$:
	jc	00110$
	C$test_i2c.c$140$1$1 ==.
;	src/test_i2c/test_i2c.c:140: reportResults(transfers[i / 5], nacks[i / 5], i / 5, 2);
	push	ar2
	mov	a,r3
	add	a,r3
	add	a,acc
	add	a,#_transfers
	mov	r0,a
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	dec	r0
	dec	r0
	dec	r0
	mov	a,r3
	add	a,#_nacks
	mov	r0,a
	movx	a,@r0
	mov	r2,a
	mov	r0,#_reportResults_PARM_2
	movx	@r0,a
	mov	r0,#_reportResults_PARM_3
	mov	a,r3
	movx	@r0,a
	mov	r0,#_reportResults_PARM_4
	mov	a,#0x02
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	lcall	_reportResults
	pop	ar2
	pop	ar2
	sjmp	00111$
00110$:
	C$test_i2c.c$142$2$6 ==.
;	src/test_i2c/test_i2c.c:142: else if (i / 5 > 9)
	mov	b,#0x05
	mov	a,r2
	div	ab
	mov	r3,a
	mov	a,#0x09
	cjne	a,ar3,00141$
00141$:
	jnc	00111$
	C$test_i2c.c$144$3$8 ==.
;	src/test_i2c/test_i2c.c:144: i--;
	dec	r2
00111$:
	C$test_i2c.c$147$2$6 ==.
;	src/test_i2c/test_i2c.c:147: i++;
	inc	r2
	C$test_i2c.c$150$1$1 ==.
	XG$main$0$0 ==.
	ljmp	00114$
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$DAC_ADDRESS$0$0 == .
_DAC_ADDRESS:
	.db #0xC0	; 192
G$DAC_COMMAND$0$0 == .
_DAC_COMMAND:
	.db #0x00	; 0
G$voltage$0$0 == .
_voltage:
	.byte #0xAA,#0x0A	; 2730
Ftest_i2c$_str_0$0$0 == .
__str_0:
	.ascii "Transmissions/second: %Lu x bits/transmission: 24 equals: %L"
	.ascii "uKbps (Effective)"
	.db 0x0D
	.db 0x0A
	.ascii " nacks: %d        Test: %d "
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
