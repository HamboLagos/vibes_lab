M:board
F:G$systemInit$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$boardService$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$boardClockInit$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$boardIoInit$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:Fboard$boardDetectVbus$0$0({2}DF,SV:S),C,0,0,0,0,0
F:Fboard$boardDetectVbus$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$boardStartBootloader$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$boardStartBootloaderIfNeeded$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$usbPowerPresent$0$0({2}DF,SB0$1:U),Z,0,0,0,0,0
F:G$vinPowerPresent$0$0({2}DF,SB0$1:U),Z,0,0,0,0,0
F:G$disableUsbPullup$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$enableUsbPullup$0$0({2}DF,SV:S),Z,0,0,0,0,0
T:Fboard$__00010000[({0}S:S$SRCADDRH$0$0({1}SC:U),Z,0,0)({1}S:S$SRCADDRL$0$0({1}SC:U),Z,0,0)({2}S:S$DESTADDRH$0$0({1}SC:U),Z,0,0)({3}S:S$DESTADDRL$0$0({1}SC:U),Z,0,0)({4}S:S$VLEN_LENH$0$0({1}SC:U),Z,0,0)({5}S:S$LENL$0$0({1}SC:U),Z,0,0)({6}S:S$DC6$0$0({1}SC:U),Z,0,0)({7}S:S$DC7$0$0({1}SC:U),Z,0,0)]
T:Fboard$DMA14_CONFIG[({0}S:S$radio$0$0({8}ST__00010000:S),Z,0,0)({8}S:S$_2$0$0({8}ST__00010000:S),Z,0,0)({16}S:S$_3$0$0({8}ST__00010000:S),Z,0,0)({24}S:S$_4$0$0({8}ST__00010000:S),Z,0,0)]
S:Fboard$vbusHighBit$0$0({1}SB0$1:U),H,0,0
S:LboardDetectVbus$savedState$2$2({1}SB0$1:U),H,0,0
S:LboardDetectVbus$lastCheck$1$1({1}SC:U),P,0,0
S:Fboard$SYNC1$0$0({1}SC:U),F,0,0
S:Fboard$SYNC0$0$0({1}SC:U),F,0,0
S:Fboard$PKTLEN$0$0({1}SC:U),F,0,0
S:Fboard$PKTCTRL1$0$0({1}SC:U),F,0,0
S:Fboard$PKTCTRL0$0$0({1}SC:U),F,0,0
S:Fboard$ADDR$0$0({1}SC:U),F,0,0
S:Fboard$CHANNR$0$0({1}SC:U),F,0,0
S:Fboard$FSCTRL1$0$0({1}SC:U),F,0,0
S:Fboard$FSCTRL0$0$0({1}SC:U),F,0,0
S:Fboard$FREQ2$0$0({1}SC:U),F,0,0
S:Fboard$FREQ1$0$0({1}SC:U),F,0,0
S:Fboard$FREQ0$0$0({1}SC:U),F,0,0
S:Fboard$MDMCFG4$0$0({1}SC:U),F,0,0
S:Fboard$MDMCFG3$0$0({1}SC:U),F,0,0
S:Fboard$MDMCFG2$0$0({1}SC:U),F,0,0
S:Fboard$MDMCFG1$0$0({1}SC:U),F,0,0
S:Fboard$MDMCFG0$0$0({1}SC:U),F,0,0
S:Fboard$DEVIATN$0$0({1}SC:U),F,0,0
S:Fboard$MCSM2$0$0({1}SC:U),F,0,0
S:Fboard$MCSM1$0$0({1}SC:U),F,0,0
S:Fboard$MCSM0$0$0({1}SC:U),F,0,0
S:Fboard$FOCCFG$0$0({1}SC:U),F,0,0
S:Fboard$BSCFG$0$0({1}SC:U),F,0,0
S:Fboard$AGCCTRL2$0$0({1}SC:U),F,0,0
S:Fboard$AGCCTRL1$0$0({1}SC:U),F,0,0
S:Fboard$AGCCTRL0$0$0({1}SC:U),F,0,0
S:Fboard$FREND1$0$0({1}SC:U),F,0,0
S:Fboard$FREND0$0$0({1}SC:U),F,0,0
S:Fboard$FSCAL3$0$0({1}SC:U),F,0,0
S:Fboard$FSCAL2$0$0({1}SC:U),F,0,0
S:Fboard$FSCAL1$0$0({1}SC:U),F,0,0
S:Fboard$FSCAL0$0$0({1}SC:U),F,0,0
S:Fboard$TEST2$0$0({1}SC:U),F,0,0
S:Fboard$TEST1$0$0({1}SC:U),F,0,0
S:Fboard$TEST0$0$0({1}SC:U),F,0,0
S:Fboard$PA_TABLE0$0$0({1}SC:U),F,0,0
S:Fboard$IOCFG2$0$0({1}SC:U),F,0,0
S:Fboard$IOCFG1$0$0({1}SC:U),F,0,0
S:Fboard$IOCFG0$0$0({1}SC:U),F,0,0
S:Fboard$PARTNUM$0$0({1}SC:U),F,0,0
S:Fboard$VERSION$0$0({1}SC:U),F,0,0
S:Fboard$FREQEST$0$0({1}SC:U),F,0,0
S:Fboard$LQI$0$0({1}SC:U),F,0,0
S:Fboard$RSSI$0$0({1}SC:U),F,0,0
S:Fboard$MARCSTATE$0$0({1}SC:U),F,0,0
S:Fboard$PKTSTATUS$0$0({1}SC:U),F,0,0
S:Fboard$VCO_VC_DAC$0$0({1}SC:U),F,0,0
S:Fboard$I2SCFG0$0$0({1}SC:U),F,0,0
S:Fboard$I2SCFG1$0$0({1}SC:U),F,0,0
S:Fboard$I2SDATL$0$0({1}SC:U),F,0,0
S:Fboard$I2SDATH$0$0({1}SC:U),F,0,0
S:Fboard$I2SWCNT$0$0({1}SC:U),F,0,0
S:Fboard$I2SSTAT$0$0({1}SC:U),F,0,0
S:Fboard$I2SCLKF0$0$0({1}SC:U),F,0,0
S:Fboard$I2SCLKF1$0$0({1}SC:U),F,0,0
S:Fboard$I2SCLKF2$0$0({1}SC:U),F,0,0
S:Fboard$USBADDR$0$0({1}SC:U),F,0,0
S:Fboard$USBPOW$0$0({1}SC:U),F,0,0
S:Fboard$USBIIF$0$0({1}SC:U),F,0,0
S:Fboard$USBOIF$0$0({1}SC:U),F,0,0
S:Fboard$USBCIF$0$0({1}SC:U),F,0,0
S:Fboard$USBIIE$0$0({1}SC:U),F,0,0
S:Fboard$USBOIE$0$0({1}SC:U),F,0,0
S:Fboard$USBCIE$0$0({1}SC:U),F,0,0
S:Fboard$USBFRML$0$0({1}SC:U),F,0,0
S:Fboard$USBFRMH$0$0({1}SC:U),F,0,0
S:Fboard$USBINDEX$0$0({1}SC:U),F,0,0
S:Fboard$USBMAXI$0$0({1}SC:U),F,0,0
S:Fboard$USBCSIL$0$0({1}SC:U),F,0,0
S:Fboard$USBCSIH$0$0({1}SC:U),F,0,0
S:Fboard$USBMAXO$0$0({1}SC:U),F,0,0
S:Fboard$USBCSOL$0$0({1}SC:U),F,0,0
S:Fboard$USBCSOH$0$0({1}SC:U),F,0,0
S:Fboard$USBCNTL$0$0({1}SC:U),F,0,0
S:Fboard$USBCNTH$0$0({1}SC:U),F,0,0
S:Fboard$USBF0$0$0({1}SC:U),F,0,0
S:Fboard$USBF1$0$0({1}SC:U),F,0,0
S:Fboard$USBF2$0$0({1}SC:U),F,0,0
S:Fboard$USBF3$0$0({1}SC:U),F,0,0
S:Fboard$USBF4$0$0({1}SC:U),F,0,0
S:Fboard$USBF5$0$0({1}SC:U),F,0,0
S:G$dmaConfig$0$0({32}STDMA14_CONFIG:S),F,0,0
S:Fboard$P0$0$0({1}SC:U),I,0,0
S:Fboard$SP$0$0({1}SC:U),I,0,0
S:Fboard$DPL0$0$0({1}SC:U),I,0,0
S:Fboard$DPH0$0$0({1}SC:U),I,0,0
S:Fboard$DPL1$0$0({1}SC:U),I,0,0
S:Fboard$DPH1$0$0({1}SC:U),I,0,0
S:Fboard$U0CSR$0$0({1}SC:U),I,0,0
S:Fboard$PCON$0$0({1}SC:U),I,0,0
S:Fboard$TCON$0$0({1}SC:U),I,0,0
S:Fboard$P0IFG$0$0({1}SC:U),I,0,0
S:Fboard$P1IFG$0$0({1}SC:U),I,0,0
S:Fboard$P2IFG$0$0({1}SC:U),I,0,0
S:Fboard$PICTL$0$0({1}SC:U),I,0,0
S:Fboard$P1IEN$0$0({1}SC:U),I,0,0
S:Fboard$P0INP$0$0({1}SC:U),I,0,0
S:Fboard$P1$0$0({1}SC:U),I,0,0
S:Fboard$RFIM$0$0({1}SC:U),I,0,0
S:Fboard$DPS$0$0({1}SC:U),I,0,0
S:Fboard$MPAGE$0$0({1}SC:U),I,0,0
S:Fboard$ENDIAN$0$0({1}SC:U),I,0,0
S:Fboard$S0CON$0$0({1}SC:U),I,0,0
S:Fboard$IEN2$0$0({1}SC:U),I,0,0
S:Fboard$S1CON$0$0({1}SC:U),I,0,0
S:Fboard$T2CT$0$0({1}SC:U),I,0,0
S:Fboard$T2PR$0$0({1}SC:U),I,0,0
S:Fboard$T2CTL$0$0({1}SC:U),I,0,0
S:Fboard$P2$0$0({1}SC:U),I,0,0
S:Fboard$WORIRQ$0$0({1}SC:U),I,0,0
S:Fboard$WORCTRL$0$0({1}SC:U),I,0,0
S:Fboard$WOREVT0$0$0({1}SC:U),I,0,0
S:Fboard$WOREVT1$0$0({1}SC:U),I,0,0
S:Fboard$WORTIME0$0$0({1}SC:U),I,0,0
S:Fboard$WORTIME1$0$0({1}SC:U),I,0,0
S:Fboard$IEN0$0$0({1}SC:U),I,0,0
S:Fboard$IP0$0$0({1}SC:U),I,0,0
S:Fboard$FWT$0$0({1}SC:U),I,0,0
S:Fboard$FADDRL$0$0({1}SC:U),I,0,0
S:Fboard$FADDRH$0$0({1}SC:U),I,0,0
S:Fboard$FCTL$0$0({1}SC:U),I,0,0
S:Fboard$FWDATA$0$0({1}SC:U),I,0,0
S:Fboard$ENCDI$0$0({1}SC:U),I,0,0
S:Fboard$ENCDO$0$0({1}SC:U),I,0,0
S:Fboard$ENCCS$0$0({1}SC:U),I,0,0
S:Fboard$ADCCON1$0$0({1}SC:U),I,0,0
S:Fboard$ADCCON2$0$0({1}SC:U),I,0,0
S:Fboard$ADCCON3$0$0({1}SC:U),I,0,0
S:Fboard$IEN1$0$0({1}SC:U),I,0,0
S:Fboard$IP1$0$0({1}SC:U),I,0,0
S:Fboard$ADCL$0$0({1}SC:U),I,0,0
S:Fboard$ADCH$0$0({1}SC:U),I,0,0
S:Fboard$RNDL$0$0({1}SC:U),I,0,0
S:Fboard$RNDH$0$0({1}SC:U),I,0,0
S:Fboard$SLEEP$0$0({1}SC:U),I,0,0
S:Fboard$IRCON$0$0({1}SC:U),I,0,0
S:Fboard$U0DBUF$0$0({1}SC:U),I,0,0
S:Fboard$U0BAUD$0$0({1}SC:U),I,0,0
S:Fboard$U0UCR$0$0({1}SC:U),I,0,0
S:Fboard$U0GCR$0$0({1}SC:U),I,0,0
S:Fboard$CLKCON$0$0({1}SC:U),I,0,0
S:Fboard$MEMCTR$0$0({1}SC:U),I,0,0
S:Fboard$WDCTL$0$0({1}SC:U),I,0,0
S:Fboard$T3CNT$0$0({1}SC:U),I,0,0
S:Fboard$T3CTL$0$0({1}SC:U),I,0,0
S:Fboard$T3CCTL0$0$0({1}SC:U),I,0,0
S:Fboard$T3CC0$0$0({1}SC:U),I,0,0
S:Fboard$T3CCTL1$0$0({1}SC:U),I,0,0
S:Fboard$T3CC1$0$0({1}SC:U),I,0,0
S:Fboard$PSW$0$0({1}SC:U),I,0,0
S:Fboard$DMAIRQ$0$0({1}SC:U),I,0,0
S:Fboard$DMA1CFGL$0$0({1}SC:U),I,0,0
S:Fboard$DMA1CFGH$0$0({1}SC:U),I,0,0
S:Fboard$DMA0CFGL$0$0({1}SC:U),I,0,0
S:Fboard$DMA0CFGH$0$0({1}SC:U),I,0,0
S:Fboard$DMAARM$0$0({1}SC:U),I,0,0
S:Fboard$DMAREQ$0$0({1}SC:U),I,0,0
S:Fboard$TIMIF$0$0({1}SC:U),I,0,0
S:Fboard$RFD$0$0({1}SC:U),I,0,0
S:Fboard$T1CC0L$0$0({1}SC:U),I,0,0
S:Fboard$T1CC0H$0$0({1}SC:U),I,0,0
S:Fboard$T1CC1L$0$0({1}SC:U),I,0,0
S:Fboard$T1CC1H$0$0({1}SC:U),I,0,0
S:Fboard$T1CC2L$0$0({1}SC:U),I,0,0
S:Fboard$T1CC2H$0$0({1}SC:U),I,0,0
S:Fboard$ACC$0$0({1}SC:U),I,0,0
S:Fboard$RFST$0$0({1}SC:U),I,0,0
S:Fboard$T1CNTL$0$0({1}SC:U),I,0,0
S:Fboard$T1CNTH$0$0({1}SC:U),I,0,0
S:Fboard$T1CTL$0$0({1}SC:U),I,0,0
S:Fboard$T1CCTL0$0$0({1}SC:U),I,0,0
S:Fboard$T1CCTL1$0$0({1}SC:U),I,0,0
S:Fboard$T1CCTL2$0$0({1}SC:U),I,0,0
S:Fboard$IRCON2$0$0({1}SC:U),I,0,0
S:Fboard$RFIF$0$0({1}SC:U),I,0,0
S:Fboard$T4CNT$0$0({1}SC:U),I,0,0
S:Fboard$T4CTL$0$0({1}SC:U),I,0,0
S:Fboard$T4CCTL0$0$0({1}SC:U),I,0,0
S:Fboard$T4CC0$0$0({1}SC:U),I,0,0
S:Fboard$T4CCTL1$0$0({1}SC:U),I,0,0
S:Fboard$T4CC1$0$0({1}SC:U),I,0,0
S:Fboard$B$0$0({1}SC:U),I,0,0
S:Fboard$PERCFG$0$0({1}SC:U),I,0,0
S:Fboard$ADCCFG$0$0({1}SC:U),I,0,0
S:Fboard$P0SEL$0$0({1}SC:U),I,0,0
S:Fboard$P1SEL$0$0({1}SC:U),I,0,0
S:Fboard$P2SEL$0$0({1}SC:U),I,0,0
S:Fboard$P1INP$0$0({1}SC:U),I,0,0
S:Fboard$P2INP$0$0({1}SC:U),I,0,0
S:Fboard$U1CSR$0$0({1}SC:U),I,0,0
S:Fboard$U1DBUF$0$0({1}SC:U),I,0,0
S:Fboard$U1BAUD$0$0({1}SC:U),I,0,0
S:Fboard$U1UCR$0$0({1}SC:U),I,0,0
S:Fboard$U1GCR$0$0({1}SC:U),I,0,0
S:Fboard$P0DIR$0$0({1}SC:U),I,0,0
S:Fboard$P1DIR$0$0({1}SC:U),I,0,0
S:Fboard$P2DIR$0$0({1}SC:U),I,0,0
S:Fboard$DMA0CFG$0$0({2}SI:U),I,0,0
S:Fboard$DMA1CFG$0$0({2}SI:U),I,0,0
S:Fboard$FADDR$0$0({2}SI:U),I,0,0
S:Fboard$ADC$0$0({2}SI:U),I,0,0
S:Fboard$P0_0$0$0({1}SX:U),J,0,0
S:Fboard$P0_1$0$0({1}SX:U),J,0,0
S:Fboard$P0_2$0$0({1}SX:U),J,0,0
S:Fboard$P0_3$0$0({1}SX:U),J,0,0
S:Fboard$P0_4$0$0({1}SX:U),J,0,0
S:Fboard$P0_5$0$0({1}SX:U),J,0,0
S:Fboard$P0_6$0$0({1}SX:U),J,0,0
S:Fboard$P0_7$0$0({1}SX:U),J,0,0
S:Fboard$_TCON_0$0$0({1}SX:U),J,0,0
S:Fboard$RFTXRXIF$0$0({1}SX:U),J,0,0
S:Fboard$_TCON_2$0$0({1}SX:U),J,0,0
S:Fboard$URX0IF$0$0({1}SX:U),J,0,0
S:Fboard$_TCON_4$0$0({1}SX:U),J,0,0
S:Fboard$ADCIF$0$0({1}SX:U),J,0,0
S:Fboard$_TCON_6$0$0({1}SX:U),J,0,0
S:Fboard$URX1IF$0$0({1}SX:U),J,0,0
S:Fboard$P1_0$0$0({1}SX:U),J,0,0
S:Fboard$P1_1$0$0({1}SX:U),J,0,0
S:Fboard$P1_2$0$0({1}SX:U),J,0,0
S:Fboard$P1_3$0$0({1}SX:U),J,0,0
S:Fboard$P1_4$0$0({1}SX:U),J,0,0
S:Fboard$P1_5$0$0({1}SX:U),J,0,0
S:Fboard$P1_6$0$0({1}SX:U),J,0,0
S:Fboard$P1_7$0$0({1}SX:U),J,0,0
S:Fboard$ENCIF_0$0$0({1}SX:U),J,0,0
S:Fboard$ENCIF_1$0$0({1}SX:U),J,0,0
S:Fboard$_SOCON2$0$0({1}SX:U),J,0,0
S:Fboard$_SOCON3$0$0({1}SX:U),J,0,0
S:Fboard$_SOCON4$0$0({1}SX:U),J,0,0
S:Fboard$_SOCON5$0$0({1}SX:U),J,0,0
S:Fboard$_SOCON6$0$0({1}SX:U),J,0,0
S:Fboard$_SOCON7$0$0({1}SX:U),J,0,0
S:Fboard$P2_0$0$0({1}SX:U),J,0,0
S:Fboard$P2_1$0$0({1}SX:U),J,0,0
S:Fboard$P2_2$0$0({1}SX:U),J,0,0
S:Fboard$P2_3$0$0({1}SX:U),J,0,0
S:Fboard$P2_4$0$0({1}SX:U),J,0,0
S:Fboard$P2_5$0$0({1}SX:U),J,0,0
S:Fboard$P2_6$0$0({1}SX:U),J,0,0
S:Fboard$P2_7$0$0({1}SX:U),J,0,0
S:Fboard$RFTXRXIE$0$0({1}SX:U),J,0,0
S:Fboard$ADCIE$0$0({1}SX:U),J,0,0
S:Fboard$URX0IE$0$0({1}SX:U),J,0,0
S:Fboard$URX1IE$0$0({1}SX:U),J,0,0
S:Fboard$ENCIE$0$0({1}SX:U),J,0,0
S:Fboard$STIE$0$0({1}SX:U),J,0,0
S:Fboard$_IEN06$0$0({1}SX:U),J,0,0
S:Fboard$EA$0$0({1}SX:U),J,0,0
S:Fboard$DMAIE$0$0({1}SX:U),J,0,0
S:Fboard$T1IE$0$0({1}SX:U),J,0,0
S:Fboard$T2IE$0$0({1}SX:U),J,0,0
S:Fboard$T3IE$0$0({1}SX:U),J,0,0
S:Fboard$T4IE$0$0({1}SX:U),J,0,0
S:Fboard$P0IE$0$0({1}SX:U),J,0,0
S:Fboard$_IEN16$0$0({1}SX:U),J,0,0
S:Fboard$_IEN17$0$0({1}SX:U),J,0,0
S:Fboard$DMAIF$0$0({1}SX:U),J,0,0
S:Fboard$T1IF$0$0({1}SX:U),J,0,0
S:Fboard$T2IF$0$0({1}SX:U),J,0,0
S:Fboard$T3IF$0$0({1}SX:U),J,0,0
S:Fboard$T4IF$0$0({1}SX:U),J,0,0
S:Fboard$P0IF$0$0({1}SX:U),J,0,0
S:Fboard$_IRCON6$0$0({1}SX:U),J,0,0
S:Fboard$STIF$0$0({1}SX:U),J,0,0
S:Fboard$P$0$0({1}SX:U),J,0,0
S:Fboard$F1$0$0({1}SX:U),J,0,0
S:Fboard$OV$0$0({1}SX:U),J,0,0
S:Fboard$RS0$0$0({1}SX:U),J,0,0
S:Fboard$RS1$0$0({1}SX:U),J,0,0
S:Fboard$F0$0$0({1}SX:U),J,0,0
S:Fboard$AC$0$0({1}SX:U),J,0,0
S:Fboard$CY$0$0({1}SX:U),J,0,0
S:Fboard$T3OVFIF$0$0({1}SX:U),J,0,0
S:Fboard$T3CH0IF$0$0({1}SX:U),J,0,0
S:Fboard$T3CH1IF$0$0({1}SX:U),J,0,0
S:Fboard$T4OVFIF$0$0({1}SX:U),J,0,0
S:Fboard$T4CH0IF$0$0({1}SX:U),J,0,0
S:Fboard$T4CH1IF$0$0({1}SX:U),J,0,0
S:Fboard$OVFIM$0$0({1}SX:U),J,0,0
S:Fboard$_TIMIF7$0$0({1}SX:U),J,0,0
S:Fboard$ACC_0$0$0({1}SX:U),J,0,0
S:Fboard$ACC_1$0$0({1}SX:U),J,0,0
S:Fboard$ACC_2$0$0({1}SX:U),J,0,0
S:Fboard$ACC_3$0$0({1}SX:U),J,0,0
S:Fboard$ACC_4$0$0({1}SX:U),J,0,0
S:Fboard$ACC_5$0$0({1}SX:U),J,0,0
S:Fboard$ACC_6$0$0({1}SX:U),J,0,0
S:Fboard$ACC_7$0$0({1}SX:U),J,0,0
S:Fboard$P2IF$0$0({1}SX:U),J,0,0
S:Fboard$UTX0IF$0$0({1}SX:U),J,0,0
S:Fboard$UTX1IF$0$0({1}SX:U),J,0,0
S:Fboard$P1IF$0$0({1}SX:U),J,0,0
S:Fboard$WDTIF$0$0({1}SX:U),J,0,0
S:Fboard$_IRCON25$0$0({1}SX:U),J,0,0
S:Fboard$_IRCON26$0$0({1}SX:U),J,0,0
S:Fboard$_IRCON27$0$0({1}SX:U),J,0,0
S:Fboard$B_0$0$0({1}SX:U),J,0,0
S:Fboard$B_1$0$0({1}SX:U),J,0,0
S:Fboard$B_2$0$0({1}SX:U),J,0,0
S:Fboard$B_3$0$0({1}SX:U),J,0,0
S:Fboard$B_4$0$0({1}SX:U),J,0,0
S:Fboard$B_5$0$0({1}SX:U),J,0,0
S:Fboard$B_6$0$0({1}SX:U),J,0,0
S:Fboard$B_7$0$0({1}SX:U),J,0,0
S:Fboard$U1ACTIVE$0$0({1}SX:U),J,0,0
S:Fboard$U1TX_BYTE$0$0({1}SX:U),J,0,0
S:Fboard$U1RX_BYTE$0$0({1}SX:U),J,0,0
S:Fboard$U1ERR$0$0({1}SX:U),J,0,0
S:Fboard$U1FE$0$0({1}SX:U),J,0,0
S:Fboard$U1SLAVE$0$0({1}SX:U),J,0,0
S:Fboard$U1RE$0$0({1}SX:U),J,0,0
S:Fboard$U1MODE$0$0({1}SX:U),J,0,0
S:G$getMs$0$0({2}DF,SL:U),C,0,0
S:G$ISR_T4$0$0({2}DF,SV:S),C,0,0
S:G$delayMicroseconds$0$0({2}DF,SV:S),C,0,0
S:G$delayMs$0$0({2}DF,SV:S),C,0,0
S:G$timeInit$0$0({2}DF,SV:S),C,0,0
S:G$isrTimerInit$0$0({2}DF,SV:S),C,0,0
S:G$dmaInit$0$0({2}DF,SV:S),C,0,0
S:Fboard$boardDetectVbus$0$0({2}DF,SV:S),C,0,0
S:G$serialNumber$0$0({4}DA4,SC:U),D,0,0
S:G$serialNumberStringDescriptor$0$0({0}DA0,SI:U),D,0,0
