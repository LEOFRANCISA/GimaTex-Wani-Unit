CoDeSys+Ш                    @        @   2.3.9.59    @?    @                                     Ѕћ` A   C:\TwinCAT\Plc\Upload\ @      Dаџџџџџџ             япV   |C:\TwinCAT\Plc\Upload\VisuBmp\=   C:\TwinCAT\Plc\Upload\PLCCONF\;C:\TwinCAT\Plc\Upload\PLCCONF\  @   t   C:\TwinCAT\Plc\Upload\standard.lib @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         Ќ66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             Ќ66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             Ќ66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             Ќ66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         Ќ66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Ќ66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     Ќ66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         Ќ66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         Ќ66     џџџџ           LEN               STR               §џ                 LEN                                     Ќ66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         Ќ66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Ќ66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         Ќ66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         Ќ66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       Ќ66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       Ќ66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       Ќ66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             Ќ66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             Ќ66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             Ќ66     џџџџ    v   C:\TwinCAT\Plc\Upload\TcEtherCAT.lib @                                                                                C          CONVERTDCTIMETOPATHPOS           fbCall       O    ( funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTDCTIMETOPATHPOS )        FW_CallGenericFb ` §џ              in   	                       ` §џ       #    12 byte = nGrpId, nSubIdx, dcTime       nGrpId           §џ       
    Group ID    nSubIdx           §џ              dcTime            
   T_DCTIME32   §џ           32 bit distributed clock time    	   fPosition                        §џ              iErr           §џ	                       ЪXO      џџџџ           CONVERTDCTIMETOPOS           fbCall       K    ( funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTDCTIMETOPOS )        FW_CallGenericFb ` §џ              in   	                       ` §џ       $    12 byte = nAxisId, nSubIdx, dcTime       nAxisId           §џ              nSubIdx           §џ              dcTime            
   T_DCTIME32   §џ           32 bit distributed clock time    	   fPosition                        §џ              iErr           §џ	                       ЪXO      џџџџ           CONVERTPATHPOSTODCTIME           fbCall       P    ( 	funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTPATHPOSTODCTIME )        FW_CallGenericFb ` §џ              in   	                       ` §џ       &    16 byte = nGrpId, nSubIdx, fPosition       nGrpId           §џ       
    Group ID    nSubIdx           §џ           	   fPosition                        §џ                 dcTime            
   T_DCTIME32   §џ           32 bit distributed clock time    iErr           §џ	                       ЪXO      џџџџ           CONVERTPOSTODCTIME           fbCall       K    ( funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTPOSTODCTIME )        FW_CallGenericFb ` §џ              in   	                       ` §џ       '    16 byte = nAxisId, nSubIdx, fPosition       nAxisId           §џ              nSubIdx           §џ           	   fPosition                        §џ                 dcTime            
   T_DCTIME32   §џ           32 bit distributed clock time    iErr           §џ	                       ЪXO      џџџџ           DCTIME_TO_DCTIMESTRUCT     
      D         ` §џ              M         ` §џ              Y         ` §џ           
   uiPastDays                T_ULARGE_INTEGER ` §џ	              uiPastYears                T_ULARGE_INTEGER ` §џ
              uiNsRest                T_ULARGE_INTEGER ` §џ              uiMsOfLastDay                T_ULARGE_INTEGER ` §џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ                 in               T_DCTIME   §џ                 DCTIME_TO_DCTIMESTRUCT        
                DCTIMESTRUCT                             ЪXO      џџџџ           DCTIME_TO_FILETIME           dc                T_ULARGE_INTEGER ` §џ           	   remainder                T_ULARGE_INTEGER ` §џ	                 in               T_DCTIME   §џ       -    Number of nanoseconds since January 1, 2000       DCTIME_TO_FILETIME             
   T_FILETIME                             ЪXO      џџџџ           DCTIME_TO_STRING           result                T_ULARGE_INTEGER ` §џ           	   remainder                T_ULARGE_INTEGER ` §џ              ft             
   T_FILETIME ` §џ              ts             
   TIMESTRUCT ` §џ                 in               T_DCTIME   §џ           Distributed clock time       DCTIME_TO_STRING                                         ЪXO      џџџџ           DCTIME_TO_SYSTEMTIME           dct        
                DCTIMESTRUCT ` §џ                 in               T_DCTIME   §џ           Distributed clock time       DCTIME_TO_SYSTEMTIME             
   TIMESTRUCT                             ЪXO      џџџџ           DCTIMESTRUCT_TO_DCTIME           tmp1                T_ULARGE_INTEGER ` §џ	              tmp2                T_ULARGE_INTEGER ` §џ
              pastDays         ` §џ              n         ` §џ                 in        
                DCTIMESTRUCT   §џ                 DCTIMESTRUCT_TO_DCTIME               T_DCTIME                             ЪXO      џџџџ           F_CHECKVENDORID        	   nVendorId         ` §џ              nMask_lower_3_byte    џџџ  ` §џ
                 stSlaveIdentity                  ST_EcSlaveIdentity   §џ                 F_CheckVendorId                                      ЪXO      џџџџ            F_CONVBK1120COUPLERSTATETOSTRING           sLocalString    Q       Q  ` §џ                 nState           §џ                  F_ConvBK1120CouplerStateToString    Q       Q                              ЪXO      џџџџ           F_CONVEXTTIMETODCTIME           DcTime               T_DCTIME ` §џ                 ExtTime               T_DCTIME   §џ              DcToExtTimeOffset                T_LARGE_INTEGER   §џ                 F_ConvExtTimeToDcTime               T_DCTIME                             ЪXO      џџџџ           F_CONVMASTERDEVSTATETOSTRING           sLocalString    Q       Q  ` §џ                 nState           §џ                 F_ConvMasterDevStateToString    Q       Q                              ЪXO      џџџџ           F_CONVPRODUCTCODETOSTRING           sLocalString    Q       Q  ` §џ              eTy           PCTYPE_XXDDDD       ProductCode ` §џ           
   stLocXXDDD                    ST_TPCTYPE_CODE_XXDDD ` §џ	              stLocXXDDXD                     ST_TPCTYPE_CODE_XXDDXD ` §џ
              stLocXXDXDD                     ST_TPCTYPE_CODE_XXDXDD ` §џ              stLocXXDXDXD                      ST_TPCTYPE_CODE_XXDXDXD ` §џ              nPC_CHAR_START         ` §џ              nMask_ty        ` §џ              nMask_1_to_6    ?    ` §џ              nMask_7_to_16    Рџ   ` §џ              nMask_5_to_10    №   ` §џ              nMask_11_to_16     ќ   ` §џ              nMask_1_to_16    џџ   ` §џ              nMask_17_to_32      џџ ` §џ              nMask_17_to_22      ?  ` §џ              nMask_22_to_32      Рџ ` §џ                 stSlaveIdentity                  ST_EcSlaveIdentity   §џ                 F_ConvProductCodeToString    Q       Q                              ЪXO      џџџџ           F_CONVSLAVESTATETOBITS           stEcSlaveStateBits                              ST_EcSlaveStateBits    §џ                 stEcSlaveState                ST_EcSlaveState   §џ                 F_ConvSlaveStateToBits                              ST_EcSlaveStateBits                             ЪXO      џџџџ           F_CONVSLAVESTATETOSTRING               state                ST_EcSlaveState   §џ                 F_ConvSlaveStateToString    Q       Q                              ЪXO      џџџџ           F_CONVSTATETOSTRING           sLocalString    Q       Q  ` §џ                 nState           §џ                 F_ConvStateToString    Q       Q                              ЪXO      џџџџ           F_CONVTCTIMETODCTIME           DcTime               T_DCTIME ` §џ                 TcTime               T_DCTIME   §џ              DcToTcTimeOffset                T_LARGE_INTEGER   §џ                 F_ConvTcTimeToDcTime               T_DCTIME                             ЪXO      џџџџ           F_CONVTCTIMETOEXTTIME           ExtTime               T_DCTIME ` §џ	                 TcTime               T_DCTIME   §џ              DcToTcTimeOffset                T_LARGE_INTEGER   §џ              DcToExtTimeOffset                T_LARGE_INTEGER   §џ                 F_ConvTcTimeToExtTime               T_DCTIME                             ЪXO      џџџџ           F_GETACTUALDCTIME        
   cbReturned         ` §џ                     F_GetActualDcTime               T_DCTIME                             ЪXO      џџџџ           F_GETCURDCTASKTIME        
   cbReturned         ` §џ                     F_GetCurDcTaskTime               T_DCTIME                             ЪXO      џџџџ           F_GETCURDCTICKTIME           fbGetSystemTime                GETSYSTEMTIME ` §џ              ft                T_ULARGE_INTEGER ` §џ              bOV          ` §џ	           
   cbReturned         ` §џ
                     F_GetCurDcTickTime               T_DCTIME                             ЪXO      џџџџ           F_GETCUREXTTIME           TcTime               T_DCTIME ` §џ              ExtTime               T_DCTIME ` §џ	                 DcToExtTimeOffset                T_LARGE_INTEGER   §џ              DcToTcTimeOffset                T_LARGE_INTEGER   §џ                 F_GetCurExtTime               T_DCTIME                             ЪXO      џџџџ           F_GETVERSIONTCETHERCAT               nVersionElement           §џ                 F_GetVersionTcEtherCAT                                     ЪXO      џџџџ           FB_ECCOESDOREAD           nOffset         ` §џ              fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.	   nSubIndex           §џ           CANopen Sdo subindex.   nIndex           §џ           CANopen Sdo index.   pDstBuf           §џ       ;    Contains the address of the buffer for the received data.    cbBufLen           §џ	       3    Contains the max. number of bytes to be received.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECCOESDOREADEX           nOffset         ` §џ              fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ           	      sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.	   nSubIndex           §џ           CANopen Sdo subindex.   nIndex           §џ           CANopen Sdo index.   pDstBuf           §џ       ;    Contains the address of the buffer for the received data.    cbBufLen           §џ	       3    Contains the max. number of bytes to be received.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    bCompleteAccess            §џ           access complete object      bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECCOESDOWRITE           nOffset         ` §џ           
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.	   nSubIndex           §џ           CANopen Sdo subindex.   nIndex           §џ           CANopen Sdo index.   pSrcBuf           §џ       D    Contains the address of the buffer containing the data to be send.    cbBufLen           §џ	       3    Contains the max. number of bytes to be received.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECCOESDOWRITEEX           nOffset         ` §џ           
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ           	      sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.	   nSubIndex           §џ           CANopen Sdo subindex.   nIndex           §џ           CANopen Sdo index.   pSrcBuf           §џ       D    Contains the address of the buffer containing the data to be send.    cbBufLen           §џ	       3    Contains the max. number of bytes to be received.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    bCompleteAccess            §џ           access complete object      bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECDCTICKTIMEBASECALC        
   uiPastDays                T_ULARGE_INTEGER ` §џ              uiPastYears                T_ULARGE_INTEGER ` §џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ              in_old               T_DCTIME ` §џ                 in               T_DCTIME ` §џ              bDate          ` §џ       J    TRUE => perform date calculation, FALSE => perform only time calculation       uiNsRest                T_ULARGE_INTEGER ` §џ	              uiMsOfLastDay                T_ULARGE_INTEGER ` §џ
              D         ` §џ           Day, Month, Year, Day of week    M         ` §џ           Day, Month, Year, Day of week    Y         ` §џ           Day, Month, Year, Day of week    DOW         ` §џ           Day, Month, Year, Day of week             ЪXO      џџџџ           FB_ECDCTIMECTRL           fbCalc                            FB_EcDcTickTimeBaseCalc ` §џ                 put           §џ           Input parameter       bError            §џ
       !    TRUE => Error, FALSE => No error   get           §џ           Output parameter       in                T_DCTIME  §џ       .    Distributed Clock System Time input variable         ЪXO      џџџџ           FB_ECEXTSYNCCALCTIMEDIFF           DcTime               T_DCTIME ` §џ              TmpTime               T_DCTIME ` §џ              ExtTimePrev               T_DCTIME ` §џ              TestCalcExtTime               T_DCTIME ` §џ                  	   nTimeDiff           §џ       :    with difference greater than 32bit timeDiff = 0xffffffff    nOffsetFromSyncMaster           §џ       W    less than 32 bit int Offset = 0x80000000,  greater than 32 bit int Offset = 0x7FFFFFFF      DcToTcTimeOffset                 T_LARGE_INTEGER  §џ              DcToExtTimeOffset                 T_LARGE_INTEGER  §џ              ExtTime                T_DCTIME  §џ              IntTime                T_DCTIME  §џ                   ЪXO      џџџџ           FB_ECEXTSYNCCHECK           fbCalcTimeDiff        
                FB_EcExtSyncCalcTimeDiff ` §џ              nCntSyncCyc         ` §џ              nSyncThreshold        ` §џ                 nSyncWindow           §џ              bNotConnected            §џ                 bSynchronized            §џ           	   nTimeDiff           §џ              nOffsetFromSyncMaster           §џ                 DcToTcTimeOffset                 T_LARGE_INTEGER  §џ              DcToExtTimeOffset                 T_LARGE_INTEGER  §џ              ExtTime                T_DCTIME  §џ	              IntTime                T_DCTIME  §џ
                   ЪXO      џџџџ           FB_ECFOEACCESS           fbAdsRW             
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              sErrText           ''        T_MaxString ` §џ                 hFoe                  T_HFoe   §џ           File over EtherCAT handle    pBuffer           §џ           Buffer address for read/write    cbBuffer           §џ           Count of bytes for read/write    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrId           §џ              cbDone           §џ              bEOF            §џ           TRUE == End of file             ЪXO     џџџџ           FB_ECFOECLOSE           fbAdsRW             
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              sErrText           ''        T_MaxString ` §џ                 hFoe                  T_HFoe   §џ           File over EtherCAT handle    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ	              nErrId           §џ
                       ЪXO     џџџџ           FB_ECFOELOAD        
   RisingEdge                 R_TRIG ` §џ              fbFwOpen                FB_FileOpen ` §џ           	   fbFwClose                FB_FileClose ` §џ              fbFwRead                FB_FileRead ` §џ           	   fbFwWrite                FB_FileWrite ` §џ              fbFwSeek                FB_FileSeek ` §џ              fbFwTell                FB_FileTell ` §џ           	   fbFoeOpen                FB_EcFoeOpen ` §џ           
   fbFoeClose        	               FB_EcFoeClose ` §џ              fbFoeAccess                           FB_EcFoeAccess ` §џ           
   fbGetState                FB_EcGetSlaveState ` §џ!           
   fbSetState                FB_EcSetSlaveState ` §џ"              fbGetProtErr                FB_EcGetLastProtErrInfo ` §џ$              buffer   	  џ?                    ` §џ&           0x4000 bytes    nStep         ` §џ'              bFw          ` §џ(           TRUE => firmware file opened    bFoe          ` §џ)       #    TRUE => file over EtherCAT opened    bMode          ` §џ*            TRUE => bootstrap mode enabled    oldState         ` §џ+              cbFSize         ` §џ,           
   sFSrvNetID           ''     
   T_AmsNetID ` §џ-              bGetProtErr          ` §џ.                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ       &    Address of the EtherCAT slave device.	   sPathName                T_MaxString   §џ       2    Firmware file path e.g.: 'c:\Firmware\ELXXS.efw'    dwPass           §џ       
    Password    eMode           eFoeMode_Write       E_EcFoeMode   §џ           Read/write access mode    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    @    §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              cbLoad           §џ           	   nProgress           §џ              sInfo           ''        T_MaxString   §џ       )    Extended FoE protocol error information             ЪXO      џџџџ           FB_ECFOEOPEN           fbAdsRW             
   ADSRDWRTEX ` §џ           
   RisingEdge                 R_TRIG ` §џ              sErrText           ''        T_MaxString ` §џ              sDrive             ` §џ              sDir                T_MaxString ` §џ           	   sFileName                T_MaxString ` §џ              sExt                T_MaxString ` §џ              nStep         ` §џ                 sNetId             
   T_AmsNetId   §џ       !    AmsNetId of the EtherCAT device.   nPort             	   T_AmsPort   §џ            Address of the EtherCAT device.	   sPathName                T_MaxString   §џ           Firmware file path name    dwPass           §џ       
    Password    eMode           eFoeMode_Write       E_EcFoeMode   §џ            File over EtherCAT access mode    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hFoe                  T_HFoe   §џ           File over EtherCAT handle             ЪXO     џџџџ           FB_ECGETALLSLAVEADDR           nStep         ` §џ              fbAdsReadEx             	   ADSREADEX ` §џ              fbGetSlaveCount                FB_EcGetSlaveCount ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   pAddrBuf    	  џџ                           §џ       A    Contains the address of the buffer the addresses are copied to.    cbBufLen           §џ       W    Size of the buffer pAddrBuf. The size of the buffer must be at least nSlave * 2 Bytes.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              nSlaves           §џ                       ЪXO     џџџџ           FB_ECGETALLSLAVECRCERRORS           nStep         ` §џ              fbAdsReadEx             	   ADSREADEX ` §џ              fbGetSlaveCount                FB_EcGetSlaveCount ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   pCrcErrorBuf    	  џџ                           §џ       B    Contains the address of the buffer the crc errors are copied to.    cbBufLen           §џ       [    Size of the buffer pCrcErrorBuf. The size of the buffer must be at least nSlave * 4 Bytes.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              nSlaves           §џ                       ЪXO     џџџџ           FB_ECGETALLSLAVESTATES           nStep         ` §џ              fbAdsReadEx             	   ADSREADEX ` §џ              fbGetSlaveCount                FB_EcGetSlaveCount ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.	   pStateBuf    	  џџ                   ST_EcSlaveState                §џ       >    Contains the address of the buffer the states are copied to.    cbBufLen           §џ       X    Size of the buffer pStateBuf. The size of the buffer must be at least nSlave * 2 Bytes.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              nSlaves           §џ                       ЪXO     џџџџ           FB_ECGETCONFSLAVES           nTotalSlaves            §џ              nState    d    ` §џ           	   fbTrigger                 R_TRIG ` §џ           	   fbAdsRead                ADSREAD ` §џ              nIdxOffs         ` §џ              nIndex         ` §џ              nBlockIndex         ` §џ              nSlavesRead         ` §џ              stLocalInfo        	               ST_EcSlaveConfigData ` §џ           !   nSDO_IDX_SBP_SLAVECONFIGDATASTART        ` §џ              nSDO_IDX_SBP_CONFIGUREDSLAVES     №   ` §џ            !   nADSIOFFS_ECAT_COE_COMPLETEACCESS        ` §џ!                 sNetId             
   T_AmsNetId   §џ       '   AmsNetId of the EtherCAT master device.   pArrEcConfSlaveInfo    	  џџ           	               ST_EcSlaveConfigData                §џ              cbBufLen           §џ       v    Size of the buffer arrEcConfSlaveInfo. The size of the buffer must be at least nSlave * SIZEOF(ST_EcSlaveConfigData).   bExecute            §џ              tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrorId           §џ              nSlaves           §џ                       ЪXO     џџџџ           FB_ECGETLASTPROTERRINFO        	   fbAdsRead                ADSREAD ` §џ              fbLocalNetID                FB_GetLocalAmsNetId ` §џ              fbTaskIndex                GETCURTASKINDEX ` §џ              nStep         ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ       &    Address of the EtherCAT slave device.	   eProtocol           eEcMbxProt_FoE       E_EcMbxProtType   §џ           Mailbox protocol type    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              info                  ST_EcLastProtErrInfo   §џ                       ЪXO     џџџџ           FB_ECGETMASTERSTATE           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ              state           §џ       (   Current State of EtherCAT master device.            ЪXO     џџџџ           FB_ECGETSCANNEDSLAVES           nTotalSlaves            §џ              nState    d    ` §џ           	   fbTrigger                 R_TRIG ` §џ           	   fbAdsRead                ADSREAD ` §џ           
   fbAdsWrite                ADSWRITE ` §џ              stScanStatus                 ST_EcScannedSlaveStatus ` §џ              nIdxOffs         ` §џ              nIndex         ` §џ              nBlockIndex         ` §џ              nSlavesRead         ` §џ              stLocalInfo                  ST_EcSlaveScannedData ` §џ              nScanCommand    џџ   ` §џ              nSDO_IDX_SBP_SLAVEINFODATASTART        ` §џ!              nSDO_IDX_SBP_SCANCOMMANDSTART    №   ` §џ"              nSDO_IDX_SBP_SCANNEDSLAVES    @№   ` §џ#           !   nADSIOFFS_ECAT_COE_COMPLETEACCESS        ` §џ$                 bExecute            §џ              sNetId             
   T_AmsNetId   §џ       '   AmsNetId of the EtherCAT master device.   pArrEcScannedSlaveInfo    	  џџ                     ST_EcSlaveScannedData                §џ              cbBufLen           §џ       w    Size of the buffer arrEcConfSlaveInfo. The size of the buffer must be at least nSlave * SIZEOF(ST_EcSlaveScannedData).   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrorId           §џ              nSlaves           §џ                       ЪXO     џџџџ           FB_ECGETSLAVECOUNT           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ              nSlaves           §џ           Count of EtherCAT slave devices.            ЪXO     џџџџ           FB_ECGETSLAVECRCERROR           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrId           §џ              crcError                 ST_EcCrcError   §џ       &   Crc error of the EtherCAT slave devie.            ЪXO     џџџџ           FB_ECGETSLAVECRCERROREX           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrId           §џ              crcError                  ST_EcCrcErrorEx   §џ       &   Crc error of the EtherCAT slave devie.            ЪXO     џџџџ           FB_ECGETSLAVEIDENTITY           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ          Address of the slave device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrId           §џ              identity                  ST_EcSlaveIdentity   §џ       +   Slave identity of the EtherCAT slave devie.            ЪXO     џџџџ           FB_ECGETSLAVESTATE           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrId           §џ              state                ST_EcSlaveState   §џ       +   Current State of the EtherCAT slave device.            ЪXO     џџџџ           FB_ECLOGICALREADCMD           fbAdsRW             
   ADSRDWRTEX ` §џ              cmd                ST_EcMaxCmd ` §џ           
   RisingEdge                 R_TRIG ` §џ              nStep         ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   logAddr           §џ           logical address to read from.   len           §џ           length of data to read.    pDstBuf           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              wkc           §џ          received working counter            ЪXO     џџџџ           FB_ECLOGICALWRITECMD           fbAdsRW             
   ADSRDWRTEX ` §џ              cmd                ST_EcMaxCmd ` §џ           
   RisingEdge                 R_TRIG ` §џ              nStep         ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   logAddr           §џ           logical address to read from.   len           §џ           length of data to read.    pSrcBuf           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              wkc           §џ          received working counter            ЪXO     џџџџ           FB_ECMASTERFRAMESTATISTIC           fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ           internal used struct    nStep    d    ` §џ              nOldTimeStamp         ` §џ              nOldSendFrames         ` §џ              nOldSendQueuedFrames         ` §џ           
   fDeltaTime                      ` §џ              nDeltaFrames         ` §џ              nDeltaQueuedFrames         ` §џ              stFrameStatistic                   ST_EcMasterStatistic ` §џ              ECADS_IGRP_MASTER_STATISTIC        ` §џ                  sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout           §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ              nLostFrames           §џ              fFramesPerSecond                        §џ              nLostQueuedFrames           §џ              fQueuedFramesPerSecond                        §џ                       ЪXO      џџџџ        !   FB_ECMASTERFRAMESTATISTICCLEARCRC        
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ           internal used struct    nStep    d    ` §џ              ECADS_IGRP_MASTER_CRC        ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout           §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       ЪXO      џџџџ        $   FB_ECMASTERFRAMESTATISTICCLEARFRAMES        
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ           internal used struct    nStep    d    ` §џ              ECADS_IGRP_MASTER_STATISTIC        ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout           §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       ЪXO      џџџџ        %   FB_ECMASTERFRAMESTATISTICCLEARTXRXERR        
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ           internal used struct    nStep    d    ` §џ              ECADS_IGRP_MASTER_CRC        ` §џ                 sNetId             
   T_AmsNetId   §џ           AmsNetId of the CPU.   nEcMasterDevID           §џ           Device ID of EtherCAT Master    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout           §џ       3    States the time before the function is cancelled.       bBusy            §џ
              bError            §џ              nErrId           §џ                       ЪXO      џџџџ           FB_ECPHYSICALREADCMD           fbAdsRW             
   ADSRDWRTEX ` §џ              cmd                ST_EcMaxCmd ` §џ           
   RisingEdge                 R_TRIG ` §џ              nStep         ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   adp           §џ       a    Configured address (fixed addressing) or position(autoincrement addressing) of the slave device.   ado           §џ       8    Offset of register/dpram  in EtherCAT Slave Controller.   len           §џ           length of data to read.    eType           eAdressingType_Fixed       E_EcAdressingType   §џ           adressing type   pDstBuf           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ	       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ
       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              wkc           §џ          received working counter            ЪXO     џџџџ           FB_ECPHYSICALWRITECMD           fbAdsRW             
   ADSRDWRTEX ` §џ              cmd                ST_EcMaxCmd ` §џ           
   RisingEdge                 R_TRIG ` §џ              nStep         ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   adp           §џ       a    Configured address (fixed addressing) or position(autoincrement addressing) of the slave device.   ado           §џ       8    Offset of register/dpram  in EtherCAT Slave Controller.   len           §џ           length of data to read.    eType           eAdressingType_Fixed       E_EcAdressingType   §џ           adressing type   pSrcBuf           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ	       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ
       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              wkc           §џ          received working counter            ЪXO     џџџџ           FB_ECREQMASTERSTATE        
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    state           §џ       3    State requested from  the EtherCAT master  device.      bBusy            §џ
              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECREQSLAVESTATE        
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    state           §џ       1    State requested from  the EtherCAT slave device.      bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECSETMASTERSTATE     	      fbReq        	               FB_EcReqMasterState ` §џ              fbGet        	               FB_EcGetMasterState ` §џ           	   waitTimer                    TON ` §џ           	   pollTimer                    TON ` §џ           
   RisingEdge                 R_TRIG ` §џ           	   globState         ` §џ              subState         ` §џ              newState         ` §џ              bBreak          ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    '     §џ       3    States the time before the function is cancelled.    reqState           §џ       2    State requested from the EtherCAT master  device.      bBusy            §џ	              bError            §џ
              nErrId           §џ           	   currState           §џ       4    Current state received from EtherCAT master device             ЪXO      џџџџ           FB_ECSETSLAVESTATE     	      fbReq        
                FB_EcReqSlaveState ` §џ              fbGet        
                FB_EcGetSlaveState ` §џ           	   waitTimer                    TON ` §џ           	   pollTimer                    TON ` §џ           
   RisingEdge                 R_TRIG ` §џ           	   globState         ` §џ              subState         ` §џ              newState         ` §џ              bBreak          ` §џ                 sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    '     §џ       3    States the time before the function is cancelled.    reqState           §џ       0    State requested from the EtherCAT slave device.      bBusy            §џ
              bError            §џ              nErrId           §џ           	   currState                ST_EcSlaveState   §џ       3    Current state received from EtherCAT slave device             ЪXO      џџџџ           FB_ECSOEREAD           nOffset         ` §џ              fbAdsReadEx             	   ADSREADEX ` §џ           
   RisingEdge                 R_TRIG ` §џ           
      sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   nIdn           §џ       	    SoE idn.   nElement           §џ           SoE element.   nDriveNo           §џ           Drive number   bCommand            §џ	       D    bCommand must be set, if internal command excecution should be used   pDstBuf           §џ
       ;    Contains the address of the buffer for the received data.    cbBufLen           §џ       3    Contains the max. number of bytes to be received.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_ECSOEWRITE           nOffset         ` §џ           
   fbAdsWrite                ADSWRITE ` §џ           
   RisingEdge                 R_TRIG ` §џ           
      sNetId             
   T_AmsNetId   §џ       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           §џ           Address of the slave device.   nIdn           §џ       	    SoE idn.   nElement           §џ           SoE element.   nDriveNo           §џ           Drive number   bCommand            §џ	       D    bCommand must be set, if internal command excecution should be used   pSrcBuf           §џ
       D    Contains the address of the buffer containing the data to be send.    cbBufLen           §џ       3    Contains the max. number of bytes to be received.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       ЪXO     џџџџ           FB_SOEREAD_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead    §џ              iState            §џ           
   bExecute_I             §џ              iErrId            §џ              dwData   	                          §џ              
   stDriveRef                  ST_DriveRef   §џ       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           §џ       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   nElement           §џ           SoE element.   pDstBuf           §џ       ;    Contains the address of the buffer for the received data.    cbBufLen           §џ       3    Contains the max. number of bytes to be received.    bExecute            §џ	       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ
       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ           	   iAdsErrId           §џ              iSercosErrId           §џ              dwAttribute           §џ                       ЪXO     џџџџ           FB_SOEWRITE_BYDRIVEREF           fbEcSoEWrite                              FB_EcSoEWrite    §џ              iErrId            §џ              iState            §џ           
   bExecute_I             §џ              
   stDriveRef                  ST_DriveRef   §џ       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           §џ       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   nElement           §џ           SoE element.   pSrcBuf           §џ       D    Contains the address of the buffer containing the data to be send.    cbBufLen           §џ       3    Contains the max. number of bytes to be received.    bExecute            §џ	       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ
       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ           	   iAdsErrId           §џ              iSercosErrId           §џ                       ЪXO     џџџџ           FILETIME_TO_DCTIME           ft                T_ULARGE_INTEGER ` §џ	              bOV          ` §џ
                 in             
   T_FILETIME   §џ       :    Number of 100-nanosecond intervals since January 1, 1601       FILETIME_TO_DCTIME               T_DCTIME                             ЪXO      џџџџ           STRING_TO_DCTIME           b   	                 З   16#32, 16#30, 16#30, 16#30, 	(* year 2000 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30, 16#30, 16#30, 16#30, 16#30, 16#30, 16#30(*000000000*), (* nanoseconds *)
								16#00      2      0      0      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0      0      0      0      0      0      0           ` §џ           null delimiter    dct               T_DCTIME ` §џ              ts             
   TIMESTRUCT ` §џ              ft             
   T_FILETIME ` §џ              mcs         ` §џ              n         ` §џ              bFmt          ` §џ           	   Index7001                            in               §џ       7    Input string, format: '2007-03-07-12:23:33.123456789'       STRING_TO_DCTIME               T_DCTIME                             ЪXO      џџџџ           SYSTEMTIME_TO_DCTIME           dct        
                DCTIMESTRUCT ` §џ
                 in             
   TIMESTRUCT   §џ           System time as struct    micro             ч             §џ           Microseconds: 0..999    nano             ч             §џ           Nanoseconds: 0..999       SYSTEMTIME_TO_DCTIME               T_DCTIME                             ЪXO      џџџџ    w   C:\TwinCAT\Plc\Upload\TcUtilities.lib @                                                                                ђ          ARG_TO_CSVFIELD           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       #    Pointer to the destination buffer    cbMax         ` §џ           Max. number of input bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes       in                 T_Arg   §џ       T    Input data in PLC format (any data type, string, integer, floating point value...)    bQM            §џ	       h    TRUE => Enclose result data in quotation marks, FALSE => Don't enclose result data in quotation marks.    pOutput           §џ
       /    Address of output buffer (destination buffer)    cbOutput           §џ       !    Max. byte size of output buffer       ARG_TO_CSVFIELD                                     4ХюP      џџџџ        
   BCD_TO_DEC        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              BIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              DOUT           §џ
       П   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            4ХюP      џџџџ           BE128_TO_HOST               in                T_UHUGE_INTEGER   §џ                 BE128_TO_HOST                T_UHUGE_INTEGER                             4ХюP      џџџџ           BE16_TO_HOST               in           §џ                 BE16_TO_HOST                                     4ХюP      џџџџ           BE32_TO_HOST           parr    	                            ` §џ                 in           §џ                 BE32_TO_HOST                                     4ХюP      џџџџ           BE64_TO_HOST               in                T_ULARGE_INTEGER   §џ                 BE64_TO_HOST                T_ULARGE_INTEGER                             4ХюP      џџџџ           BYTEARR_TO_MAXSTRING               in   	  џ                       §џ                 BYTEARR_TO_MAXSTRING                T_MaxString                             4ХюP     џџџџ           CSVFIELD_TO_ARG           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       $     Pointer to the destination buffer    cbMax         ` §џ           Max. number of output bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes    bQMPrior          ` §џ       c    TRUE => Previous character was quotation mark. FALSE => Previous character was not quotation mark       pInput           §џ       G    Address of input buffer with data in CSV field format (source buffer )   cbInput           §џ	           Byte size of input data    bQM            §џ
       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.    out                 T_Arg   §џ       U    Output data in PLC format (any data type, string, integer, floating point value...)       CSVFIELD_TO_ARG                                     4ХюP      џџџџ           CSVFIELD_TO_STRING           cbField         ` §џ                 in                T_MaxString   §џ       "    Input string in CSV field format    bQM            §џ	       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.       CSVFIELD_TO_STRING                T_MaxString                             4ХюP      џџџџ           DATA_TO_HEXSTR           iCase         ` §џ              pCells    	  џ                          ` §џ              idx         ` §џ                 pData           §џ           Pointer to data buffer    cbData             U              §џ           Byte size of data buffer    bLoCase            §џ       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR                T_MaxString                             4ХюP     џџџџ        
   DCF77_TIME     "      DataBits   	  <                         §џ              BitNo            §џ              dtCurr            §џ              dtNext            §џ              tziCurr               E_TimeZoneID    §џ       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ       8    Time zone information extracted from previous telegram    tDiff            §џ           Two telegram time difference    bCheck             §џ              Step         ` §џ!           	   StartEdge                 R_TRIG ` §џ"              RisingPulse                 R_TRIG ` §џ$              FallingPulse                 F_TRIG ` §џ%           	   LongPulse                    TON ` §џ&           
   ShortPulse                    TON ` §џ'           
   DetectSync                    TOF ` §џ(              NoDCFSignal                    TON ` §џ)              DCFCycleLen                    TON ` §џ*           	   bIsRising          ` §џ,           
   bIsFalling          ` §џ-              bIsLong          ` §џ.              bIsShort          ` §џ/              Working          ` §џ0           	   DataValid          ` §џ2           
   ParitySum1         ` §џ3           
   ParitySum2         ` §џ4           
   ParitySum3         ` §џ5              i         ` §џ7           	   DummyByte         ` §џ8              DummyString    Q       Q  ` §џ9              Hour         ` §џ;              Minute         ` §џ<              Year         ` §џ=              Month         ` §џ>              Day         ` §џ?              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.       BUSY            §џ           TRUE = Decoding in progress    ERR            §џ	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ
           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information             4ХюP      џџџџ           DCF77_TIME_EX     #      DataBits   	  <                         §џ           Decoded data bits    BitNo            §џ           Decoded bit number    dtCurr            §џ       %    Time extracted from latest telegram    dtNext            §џ            Supposed next time    tziCurr               E_TimeZoneID    §џ!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ"       8    Time zone information extracted from previous telegram    tDiff            §џ#       )    Time difference of two latest telegrams    bCheck             §џ$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` §џ&           	   StartEdge                 R_TRIG ` §џ'              RisingPulse                 R_TRIG ` §џ)              FallingPulse                 F_TRIG ` §џ*           	   LongPulse                    TON ` §џ+           
   ShortPulse                    TON ` §џ,           
   DetectSync                    TOF ` §џ-              NoDCFSignal                    TON ` §џ.              DCFCycleLen                    TON ` §џ/           	   bIsRising          ` §џ1           
   bIsFalling          ` §џ2              bIsLong          ` §џ3              bIsShort          ` §џ4              Working          ` §џ5           	   DataValid          ` §џ7           
   ParitySum1         ` §џ8           
   ParitySum2         ` §џ9           
   ParitySum3         ` §џ:              i         ` §џ<           	   DummyByte         ` §џ=              DummyString    Q       Q  ` §џ>              Hour         ` §џ@              Minute         ` §џA              Year         ` §џB              Month         ` §џC              Day         ` §џD           	   DayOfWeek         ` §џE              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.    TLP          §џ           Short/long pulse split point       BUSY            §џ	           TRUE = Decoding in progress    ERR            §џ
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information    DOW                         §џ       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID   §џ           time zone information    ADVTZI            §џ       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            §џ           TRUE = Leap second    RAWDT   	  <                        §џ           Raw decoded data bits             4ХюP      џџџџ        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              DIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              BOUT           §џ
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            4ХюP      џџџџ        
   DEG_TO_RAD               ANGLE                        §џ              
   DEG_TO_RAD                                                  4ХюP      џџџџ           DINT_TO_DECSTR               in           §џ           
   iPrecision           §џ	                 DINT_TO_DECSTR                T_MaxString                             4ХюP      џџџџ           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER ` §џ                 DTIN           §џ                 DT_TO_FILETIME             
   T_FILETIME                             4ХюP      џџџџ           DT_TO_SYSTEMTIME           sDT             ` §џ              nDay         ` §џ              b   	                 
    24(16#30)      0    ` §џ              TS                   
   TIMESTRUCT ` §џ           	   Index7001                            DTIN           §џ                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                             4ХюP      џџџџ           DWORD_TO_BINSTR           bits   	                        ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant bits    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_BINSTR                T_MaxString                             4ХюP      џџџџ           DWORD_TO_DECSTR           dec   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ              divider     Ъ; ` §џ              number         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_DECSTR                T_MaxString                             4ХюP      џџџџ           DWORD_TO_HEXSTR           hex   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ              bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR                T_MaxString                             4ХюP      џџџџ           DWORD_TO_LREALEX               in           §џ                 DWORD_TO_LREALEX                                                  4ХюP      џџџџ           DWORD_TO_OCTSTR           oct   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_OCTSTR                T_MaxString                             4ХюP      џџџџ           F_ARGCMP               typeSafe            §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ                 F_ARGCMP                                     4ХюP      џџџџ           F_ARGCPY               typeSafe            §џ                 F_ARGCPY                               dest                  T_Arg  §џ
              src                  T_Arg  §џ                   4ХюP      џџџџ           F_ARGISZERO               arg                 T_Arg   §џ                 F_ARGIsZero                                      4ХюP      џџџџ        	   F_BIGTYPE               pData           §џ            Address pointer of data buffer    cbLen           §џ           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                             4ХюP      џџџџ           F_BOOL                   F_BOOL                 T_Arg                       in            §џ                   4ХюP      џџџџ           F_BYTE                   F_BYTE                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_BYTE_TO_CRC16_CCITT               value           §џ           Data value    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     4ХюP      џџџџ           F_CHECKSUM16        	   wChkSum_I         ` §џ	       %    internal ChkSum                        dataWord         ` §џ
       %    current data byte                      iIdx         ` §џ       %    current data buffer index              ptrData               ` §џ       %    pointer to current data byte           	   dwSrcAddr           §џ       %    address of data buffer                 cbLen           §џ       %    length of data buffer                  wChkSum           §џ       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     4ХюP      џџџџ           F_CRC16_CCITT           wCRC_I         ` §џ
       $    internal CRC                          dataWord         ` §џ       $    current data byte                     iIdx         ` §џ       $    current data buffer index             ptrData               ` §џ       $    pointer to current data byte          	   dwSrcAddr           §џ       $    address of data buffer                cbLen           §џ       $    length of data buffer                 wLastCRC           §џ       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     4ХюP      џџџџ           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      ` §џ              i         ` §џ                 pEntries                     T_HashTableEntry        §џ       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           §џ       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE  §џ           Hash table handle         4ХюP      џџџџ           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node    i         ` §џ           loop iterator       pEntries                   T_LinkedListEntry        §џ       @    Pointer to the first linked list node database (element array) 	   cbEntries           §џ       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST  §џ           Linked list handle         4ХюP      џџџџ           F_DATA_TO_CRC16_CCITT           i         ` §џ                 pData           §џ           Pointer to data    cbData           §џ           Length of data    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     4ХюP      џџџџ           F_DINT                   F_DINT                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_DWORD                   F_DWORD                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_FORMATARGTOSTR     	      pOut               ` §џ              longword         ` §џ              double                      ` §џ              single          ` §џ              short         ` §џ              small         ` §џ              longint         ` §џ              iPaddingLen         ` §џ              iCurrLen         ` §џ           
      bSign            §џ           Sign prefix flag    bBlank            §џ           Blank prefix flag    bNull            §џ           Null prefix flag    bHash            §џ           Hash prefix flag    bLAlign            §џ       4    FALSE => Right align (default), TRUE => Left align    bWidth            §џ       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           §џ	           Width length parameter 
   iPrecision           §џ
           Precision length parameter    eFmtType               E_TypeFieldParam   §џ           Format type field parameter    arg                 T_Arg   §џ           Format argument       F_FormatArgToStr                               sOut                 T_MaxString  §џ                   4ХюP      џџџџ           F_GETDAYOFMONTHEX           dom         ` §џ           Day of month    dow         ` §џ           Day of week    n         ` §џ              dwYears         ` §џ              dwDays         ` §џ                 wYear     A  A  kx             §џ           Year: 1601..30827    wMonth                         §џ           Month: 1..12    wWOM                         §џ       Г     Week of month. Occurrence of the day of the week within the month (1..5, where 5 indicates the final occurrence during the month if that day of the week does not occur 5 times).   wDOW                           §џ       4    Day of week (0 = Sunday, 1 = Monday.. 6 = Saturday       F_GetDayOfMonthEx                                     4ХюP      џџџџ           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT ` §џ	                 in           §џ                 F_GetDayOfWeek                                     4ХюP      џџџџ           F_GETDOYOFYEARMONTHDAY           bLY          ` §џ
                 wYear           §џ           Year: 0..2xxx    wMonth           §џ           Month 1..12    wDay           §џ           Day: 1..31       F_GetDOYOfYearMonthDay                                     4ХюP      џџџџ           F_GETFLOATREC     
   	   ptrDouble    	                               §џ              fValue                         §џ
              fBegin                         §џ              nBegin            §џ              fDiv                         §џ              nDig            §џ              nDigit            §џ              fMaxPrecision                         §џ              i            §џ              nLastDecDigit            §џ                 fVal                        §џ           
   iPrecision           §џ              bRound            §џ                 F_GetFloatRec              
   T_FloatRec                             4ХюP      џџџџ           F_GETMAXMONTHDAYS               wYear           §џ	              wMonth           §џ
                 F_GetMaxMonthDays                                     4ХюP      џџџџ           F_GETMONTHOFDOY           bLY          ` §џ	              wMonth         ` §џ
                 wYear           §џ           Year: 0..2xxx    wDOY           §џ           Year's day number: 1..366       F_GetMonthOfDOY                                     4ХюP      џџџџ           F_GETVERSIONTCUTILITIES               nVersionElement           §џ       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     4ХюP      џџџџ           F_GETWEEKOFTHEYEAR           date_sec         ` §џ           date seconds    dow         ` §џ	           day of week    year         ` §џ
              KWStart         ` §џ              first    yG ` §џ              ff                      ` §џ                 in           §џ                 F_GetWeekOfTheYear                                     4ХюP      џџџџ           F_HUGE                   F_HUGE                 T_Arg                       in                 T_HUGE_INTEGER  §џ                   4ХюP      џџџџ           F_INT                   F_INT                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_LARGE                   F_LARGE                 T_Arg                       in                 T_LARGE_INTEGER  §џ                   4ХюP      џџџџ           F_LREAL                   F_LREAL                 T_Arg                       in                        §џ                   4ХюP      џџџџ           F_LTRIM           pChar               ` §џ              pStr                 T_MaxString      ` §џ	                 in                T_MaxString   §џ                 F_LTrim                T_MaxString                             4ХюP      џџџџ           F_REAL                   F_REAL                 T_Arg                       in            §џ                   4ХюP      џџџџ           F_RTRIM           n         ` §џ              pChar               ` §џ	                 in                T_MaxString   §џ                 F_RTrim                T_MaxString                             4ХюP      џџџџ           F_SINT                   F_SINT                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_STRING                   F_STRING                 T_Arg                       in                 T_MaxString  §џ                   4ХюP      џџџџ        
   F_SWAPREAL           pReal    	                               §џ              pResult    	                               §џ                 fVal            §џ              
   F_SwapReal                                      4ХюP      џџџџ           F_SWAPREALEX           pIN    	                            ` §џ              wSave         ` §џ	                     F_SwapRealEx                                fVal            §џ                   4ХюP      џџџџ        	   F_TOLCASE           pDest               ` §џ              idx                   MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in                T_MaxString   §џ              	   F_ToLCase                T_MaxString                             4ХюP     џџџџ        	   F_TOUCASE           pDest               ` §џ              idx                   MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in                T_MaxString   §џ              	   F_ToUCase                T_MaxString                             4ХюP     џџџџ           F_TRANSLATEFILETIMEBIAS           ui64In                T_ULARGE_INTEGER ` §џ       E    Input file time as 64 bit unsigned integer (number of 100ns ticks)     ui64Bias                T_ULARGE_INTEGER ` §џ       ?    Bias value as 64 bit unsigned integer (number of 100ns ticks)    ui64Out                T_ULARGE_INTEGER ` §џ       @    Local time as 64 bit unsigned integer (number of 100ns ticks)        in             
   T_FILETIME   §џ       1    Input time in file time format to be translated    bias           §џ       y    Bias value in minutes. The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time.    toUTC            §џ       U    TRUE => Translate from local time to UTC, FALSE => Translate from UTC to local Time       F_TranslateFileTimeBias             
   T_FILETIME                             4ХюP      џџџџ           F_UDINT                   F_UDINT                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_UHUGE                   F_UHUGE                 T_Arg                       in                 T_UHUGE_INTEGER  §џ                   4ХюP      џџџџ           F_UINT                   F_UINT                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_ULARGE                   F_ULARGE                 T_Arg                       in                 T_ULARGE_INTEGER  §џ                   4ХюP      џџџџ           F_USINT                   F_USINT                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_WORD                   F_WORD                 T_Arg                       in           §џ                   4ХюP      џџџџ           F_YEARISLEAPYEAR               wYear           §џ                 F_YearIsLeapYear                                      4ХюP      џџџџ           FB_ADDROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ADDREMOTE, IDXOFFS := 0 )        ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID             
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       4ХюP     џџџџ           FB_AMSLOGGER        
   fbAdsWrite       [    ( PORT:= AMSPORT_AMSLOGGER, IDXGRP:= AMSLOGGER_IGR_GENERAL, IDXOFFS:= AMSLOGGER_IOF_MODE )        ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              stReq                ST_AmsLoggerReq ` §џ                 sNetId           ''     
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    eMode           AMSLOGGER_RUN       E_AmsLoggerMode   §џ              sCfgFilePath           ''        T_MaxString   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrId           §џ                       4ХюP     џџџџ           FB_BASICPID           nERR_NOERROR           §џ           no error						   nERR_INVALIDPARAM          §џ           invalid parameter				   nERR_INVALIDCYCLETIME          §џ           invalid cycle time				   fE               0.0            §џ            error input					   fE_1               0.0            §џ!           error input z^(-1)				   fY               0.0            §џ"           control output				   fY_1               0.0            §џ#           control output  z^(-1)			   fYP               0.0            §џ$           P-part						   fYI               0.0            §џ%           I-part						   fYI_1               0.0            §џ&           I-part  z^(-1)					   fYD               0.0            §џ'           D-T1-part					   fYD_1               0.0            §џ(           D-T1-part  z^(-1)				   bInit            §џ*       %    initialization flag for first cycle	   bIsIPart             §џ+           I-part active ?				   bIsDPart             §џ,           D-part active ?				   fDi               0.0            §џ.           internal I param				   fDd               0.0            §џ/           internal D param				   fCd               0.0            §џ0           internal D param				   fCtrlCycleTimeOld               0.0            §џ2              fKpOld               0.0            §џ3              fTnOld               0.0            §џ4              fTvOld               0.0            §џ5              fTdOld               0.0            §џ6                 fSetpointValue                        §џ           setpoint value							   fActualValue                        §џ           actual value							   bReset            §џ           controller values    fCtrlCycleTime                        §џ	       (    controller cycle time in seconds [s]			   fKp                        §џ           proportional gain Kp	(P)					   fTn                        §џ           integral gain Tn (I) [s]						   fTv                        §џ       "    derivative gain Tv (D-T1) [s]				   fTd                        §џ       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        §џ           controller output command				   nErrorStatus           §џ       1    controller error output (0: no error; >0:error)	            4ХюP      џџџџ           FB_BUFFEREDTEXTFILEWRITER           fbFile                FB_TextFileRingBuffer ` §џ           
   closeTimer                    TON ` §џ           auto close timer    bRemove          ` §џ              nStep         ` §џ                 sNetId           ''     
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'        T_MaxString ` §џ	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ
           default: Open generic file    bAppend         ` §џ       )    TRUE = append lines, FALSE = not append 
   tAutoClose       ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ                 fbBuffer                 FB_StringRingBuffer` §џ           string ring buffer         4ХюP     џџџџ           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription    §џ              nState            §џ              nErrorState            §џ           
   fbAdsWrite                ADSWRITE    §џ              fbQueryRegistry                FB_RegQueryValue    §џ              sScopeServerDir                §џ              sScopeServerPath                §џ              fbStartServer                NT_StartProcess    §џ              fbWait                    TON    §џ               bTriggerServerStart            §џ!              nDwellTimeCounter            §џ"              nPort           27110     	   T_AmsPort   §џ%              Connect_IdxGrp     u     §џ&          0x7500      sNetId           ''     
   T_AmsNetId   §џ              bExecute            §џ              sConfigFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       4ХюP     џџџџ           FB_CSVMEMBUFFERREADER           state         ` §џ              getBufferIndex         ` §џ              scanPtr               ` §џ              scanSize         ` §џ              bField          ` §џ              cbCopied         ` §џ           
   bFirstChar          ` §џ              bDQField          ` §џ           	   bDQBefore          ` §џ              pField         ` §џ       U    If successfull then this variable returns the address of the first/next field value    cbField         ` §џ       W    If successfull then this variable returns the byte size of the first/next field value    bEOF          ` §џ           TRUE => End of field found    bBreak          ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ       )    Command type: read first or next field ?   pBuffer           §џ       #    Address ( pointer) of data buffer    cbBuffer           §џ           Max. byte size of data buffer       bOk            §џ	       &    TRUE => Successfull, FALSE => Failed    getValue           ''        T_MaxString   §џ
       N    If successfull then this output returns the first/next field value as string    pValue           §џ       s    Pointer to the first value byte (HINT: String values are not null terminated. Empty string returns Null pointer )    cbValue           §џ           Field value byte size    bCRLF            §џ       .    TRUE => End of record separator found (CRLF)    cbRead           §џ       )    Number of successfully parse data bytes             4ХюP      џџџџ           FB_CSVMEMBUFFERWRITER           fbReader                                    FB_CSVMemBufferReader ` §џ              temp   	  ,                    ` §џ           Temp buffer    cbTemp         ` §џ       %    Number of data bytes in temp buffer    cbCopied         ` §џ       9    Number of data bytes copied to the external data buffer    bNewLine         ` §џ           TRUE => start with new line       eCmd           eEnumCmd_First       E_EnumCmdType   §џ       *    Command type: write first or next field ?   putValue           ''        T_MaxString   §џ       &    New first/next field value as string    pValue           §џ       C    OPTIONAL: Pointer to external buffer containing field value data.    cbValue           §џ       F    OPTIONAL: Byte size of external buffer containing field value data.     bCRLF            §џ       0    TRUE = > Append end of record separator (CRLF)    pBuffer           §џ	       #    Address ( pointer) of data buffer    cbBuffer           §џ
           Max. byte size of data buffer       bOk            §џ       &    TRUE => Successfull, FALSE => Failed    cbSize           §џ           Number fo used data bytes    cbFree           §џ           Number of free data bytes    nFields           §џ           Number of fields    nRecords           §џ           Number of records    cbWrite           §џ       +    Number of successfully written data bytes             4ХюP      џџџџ           FB_DBGOUTPUTCTRL           fbFormat                FB_FormatString ` §џ              fbBuffer                FB_StringRingBuffer ` §џ              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter ` §џ              buffer   	  '                   ` §џ              state         ` §џ              nItems         ` §џ              k         ` §џ               bInit         ` §џ!           Hex logging    i         ` §џ$              cells   	                               ` §џ%              pCells                 T_MaxString      ` §џ&              cbL1         ` §џ'              cbL2         ` §џ'              idx         ` §џ'              pSrc1               ` §џ(              pSrc2               ` §џ(                 dwCtrl         ` §џ       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''        T_MaxString ` §џ           Debug message format string    arg1                 T_Arg ` §џ           Format string argument    arg2                 T_Arg ` §џ              arg3                 T_Arg ` §џ	              arg4                 T_Arg ` §џ
              arg5                 T_Arg ` §џ              arg6                 T_Arg ` §џ              arg7                 T_Arg ` §џ              arg8                 T_Arg ` §џ              arg9                 T_Arg ` §џ              arg10                 T_Arg ` §џ              sFilter           ''        T_MaxString ` §џ                 bError          ` §џ              nError         ` §џ           	   nOverflow         ` §џ                       4ХюP     џџџџ           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                ADSWRITE    §џ              nState            §џ                 sNetId             
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       4ХюP     џџџџ           FB_ENUMFINDFILEENTRY        
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )        ADSRDWRT ` §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )        ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                            ST_AmsFindFileSystemEntry ` §џ              eFindCmd               E_EnumCmdType ` §џ                 sNetId             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName                T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   stFindFile                     ST_FindFileEntry   §џ           Find file entry             4ХюP     џџџџ           FB_ENUMFINDFILELIST           fbEnum                              FB_EnumFindFileEntry ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbEntry         ` §џ              nEntries         ` §џ              pEntry                      ST_FindFileEntry      ` §џ                 sNetId             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName                T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command 	   pFindList           §џ       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           §џ       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeout         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   nFindFiles           §џ           Number of find files             4ХюP     џџџџ           FB_ENUMROUTEENTRY        	   fbAdsRead       Z    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ENUMREMOTE (*, IDXGRP := index *) )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              index    џџџџ ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID             
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              bEOE            §џ       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters             4ХюP     џџџџ           FB_ENUMSTRINGNUMBERS           pSrc               ` §џ              pDest               ` §џ              pNext               ` §џ              char         ` §џ              state         ` §џ              bEat          ` §џ                 sSearch                T_MaxString   §џ           Source string    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes   §џ           String number format type       sNumber                T_MaxString   §џ           Found string number    nPos           §џ	       )    <> 0 => Next scan/search start position    bEOS            §џ
           TRUE = End of string             4ХюP      џџџџ           FB_FILERINGBUFFER           fbOpen                FB_FileOpen ` §џ              fbClose                FB_FileClose ` §џ              fbWrite                FB_FileWrite ` §џ              fbRead                FB_FileRead ` §џ               fbSeek                FB_FileSeek ` §џ!              nStep         ` §џ"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` §џ#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` §џ$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` §џ%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` §џ&       %    TRUE=file opened, FALSE=file closed    bGet          ` §џ'       $    TRUE=get entry, FALSE=remove entry    bOW          ` §џ(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` §џ)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` §џ*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` §џ+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` §џ,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ.                 sNetId           ''     
   T_AmsNetId   §џ           ams net id 	   sPathName           'c:\Temp\data.dat'        T_MaxString   §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath   §џ           default: Open generic file    nID           §џ           user defined version ID    cbBuffer          §џ           max. file buffer byte size 
   bOverwrite            §џ	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           §џ
       "    pointer to external write buffer 
   cbWriteLen           §џ       $    byte size of external write buffer 	   pReadBuff           §џ       !    pointer to external read buffer 	   cbReadLen           §џ       #    byte size of external read buffer    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ       х    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           §џ       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead   §џ           buffer status             4ХюP     џџџџ            FB_FILETIMETOTZSPECIFICLOCALTIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )     "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ           Time to be converted (UTC, file time format), 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       *    Converted time in local file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            4ХюP      џџџџ           FB_FORMATSTRING     	      pFormat               ` §џ           pointer to the format string    pOut               ` §џ           pointer to the result string 
   iRemOutLen         ` §џ       $    Max remaining length of sOut buffer   bValid          ` §џ       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters ` §џ           
   nArrayElem         ` §џ           	   nArgument         ` §џ              parArgs   	  
                     T_Arg              ` §џ              sArgStr                T_MaxString ` §џ                 sFormat                T_MaxString   §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ              arg3                 T_Arg   §џ              arg4                 T_Arg   §џ              arg5                 T_Arg   §џ              arg6                 T_Arg   §џ	              arg7                 T_Arg   §џ
              arg8                 T_Arg   §џ              arg9                 T_Arg   §џ              arg10                 T_Arg   §џ                 bError            §џ              nErrId           §џ              sOut                T_MaxString   §џ                       4ХюP     џџџџ           FB_GETADAPTERSINFO     
   	   fbAdsRead       f    ( PORT:=AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_ADAPTERSINFO )        ADSREAD ` §џ           
   fbRegQuery       P    ( sSubKey:= '\Software\Beckhoff\TwinCAT\Remote', sValName := 'DefaultAdapter' )        FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbInfo         ` §џ              idx         ` §џ              info   	                                      ST_IP_ADAPTER_INFO         ` §џ           buffer for 12 entries    pInfo                                 ST_IP_ADAPTER_INFO      ` §џ           
   nRealCount         ` §џ           	   sDefaultA                T_MaxString ` §џ                 sNetID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              arrAdapters   	                                    ST_IpAdapterInfo           §џ              nCount           §џ           Max. number of found adapters    nGet           §џ       %    Number of read adapter info entries             4ХюP     џџџџ           FB_GETDEVICEIDENTIFICATION        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId             
   T_AmsNetId   §џ           ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentification   §џ       5    structure with available device identification data             4ХюP     џџџџ           FB_GETDEVICEIDENTIFICATIONEX        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId             
   T_AmsNetId   §џ           Ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentificationEx   §џ       5    structure with available device identification data             4ХюP     џџџџ           FB_GETHOSTADDRBYNAME           fbAdsRW       j    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_IPADDRBYHOSTNAME )     
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sHostName           ''        T_MaxString   §џ       1    String containing host name. E.g. 'DataServer1'    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout    ШЏ     §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              sAddr           ''     
   T_IPv4Addr   §џ       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0        T_IPv4AddrArr   §џ       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             4ХюP      џџџџ           FB_GETHOSTNAME        	   fbAdsRead       R    ( PORT :=  AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHOSTNAME, IDXOFFS := 0 )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ           	   sHostName                T_MaxString   §џ           The local host name             4ХюP     џџџџ           FB_GETLOCALAMSNETID           fbRegQueryValue       W    ( sNetId:= '', sSubKey := 'SOFTWARE\Beckhoff\TwinCAT\System', sValName := 'AmsNetId' )        FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpBytes                T_AmsNetIdArr ` §џ                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrId           §џ
           
   AddrString           '0.0.0.0.0.0'     
   T_AmsNetId   §џ       -    TwinCAT -specific network address as string 	   AddrBytes           0,0,0,0,0,0        T_AmsNetIdArr   §џ       3    TwinCAT-specific network address as array of byte             4ХюP     џџџџ           FB_GETROUTERSTATUSINFO        	   fbAdsRead       &    ( PORT:= 1, IDXGRP:= 1, IDXOFFS:= 1 )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              adsRes   	                       ` §џ                 sNetId           ''     
   T_AmsNetID   §џ           Ams net id    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              info                   ST_TcRouterStatusInfo   §џ       #    TwinCAT Router status information             4ХюP     џџџџ           FB_GETTIMEZONEINFORMATION        	   fbAdsRead       p    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_TIMEZONINFORMATION )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              res                ST_AmsGetTimeZoneInformation ` §џ                 sNetID             
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrID           §џ
              tzID               E_TimeZoneID   §џ              tzInfo                     ST_TimeZoneInformation   §џ                       4ХюP     џџџџ           FB_HASHTABLECTRL           p                     T_HashTableEntry      ` §џ              n                     T_HashTableEntry      ` §џ              nHash         ` §џ                 key           §џ       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           §џ           Entry value 	   putPosPtr                     T_HashTableEntry        §џ	                 bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           	   getPosPtr                     T_HashTableEntry        §џ       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE  §џ           Hash table handle variable         4ХюP      џџџџ           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node       putValue           §џ           Linked list node value 	   putPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           Linked list node value 	   getPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       hList         	               T_HLINKEDLIST  §џ           Linked list table handle         4ХюP      џџџџ           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG ` §џ              state         ` §џ              fbNT             
   NT_GetTime ` §џ              fbTZ                          FB_GetTimeZoneInformation ` §џ              fbSET                NT_SetTimeToRTCTime ` §џ              fbRTC                RTC_EX2 ` §џ              timer                    TON ` §џ              nSync         ` §џ              bNotSup          ` §џ                 sNetID           ''     
   T_AmsNetID   §џ       +    The target TwinCAT system network address    bEnable            §џ       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           Q            §џ       &    Time synchronisation cycle (seconds)    dwOpt          §џ       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout         §џ       J    Max. ADS function block execution time (internal communication timeout).       bValid            §џ       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT   §џ       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID   §џ       )    Daylight/standard time zone information             4ХюP     џџџџ           FB_MEMBUFFERMERGE           pDest         ` §џ              cbDest         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to destination buffer    cbBuffer           §џ       &    Max. byte size of destination buffer    pSegment           §џ       .    Pointer to data segment (optional, may be 0) 	   cbSegment           §џ       -    Number of data segments (optional, may be 0)      bOk            §џ       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           §џ           Data buffer fill state             4ХюP      џџџџ           FB_MEMBUFFERSPLIT           pSrc         ` §џ              cbSrc         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to source data buffer    cbBuffer           §џ       !    Byte size of source data buffer    cbSize           §џ           Max. segment byte size       bOk            §џ
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           §џ           Pointer to data segment 	   cbSegment           §џ           Byte size of data segment    bEOS            §џ       7    TRUE = End/last segment, FALSE = Next segment follows             4ХюP      џџџџ           FB_MEMRINGBUFFER           idxLast         ` §џ            byte index of last buffer byte    idxFirst         ` §џ       "    byte buffer of first buffer byte    idxGet         ` §џ              pTmp         ` §џ              cbTmp         ` §џ              cbCopied         ` §џ                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             4ХюP      џџџџ           FB_MEMRINGBUFFEREX           idxLast         ` §џ       *    byte index of last (newest) buffer entry    idxFirst         ` §џ       +    byte index of first (oldest) buffer entry    idxGet         ` §џ           temporary index    idxEnd         ` §џ       "    index of unused/free end segment    cbEnd         ` §џ       &    byte size of unused/free end segment    cbAdd         ` §џ!                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           §џ       (    A_GetHead returns pointer to read data    cbRead           §џ       *    A_GetHead returns byte size of read data    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbFree           §џ            biggest available free segment             4ХюP      џџџџ           FB_MEMSTACKBUFFER               pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to LIFO buffer data bytes    cbBuffer           §џ           max. LIFO buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = LIFO overflow or LIFO empty    nCount           §џ           number of LIFO entries    cbSize           §џ       "    current byte length of LIFO data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             4ХюP      џџџџ           FB_REGQUERYVALUE           fbAdsRdWrtEx       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )     
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              ptr         ` §џ              cbBuff         ` §џ              tmpBuff                ST_HKeySrvRead ` §џ                 sNetId             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey                T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName                T_MaxString   §џ           Value name    cbData           §џ           Number of data bytes to read    pData           §џ       $    Points to registry key data buffer    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ	           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ       '    Number of succesfully read data bytes             4ХюP     џџџџ           FB_REGSETVALUE        
   fbAdsWrite       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )        ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              s3Len         ` §џ              ptr         ` §џ              nType         ` §џ              cbBuff         ` §џ              cbRealWrite         ` §џ              tmpBuff                  ST_HKeySrvWrite ` §џ                 sNetId             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey                T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName                T_MaxString   §џ           Value name    eValType               E_RegValueType   §џ           Value type    cbData           §џ           Size of value data in bytes    pData           §џ           Pointer to value data buffer   bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeOut         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       +    Number of successfully written data bytes             4ХюP     џџџџ           FB_REMOVEROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_DELREMOTE, IDXOFFS := 0 )        ADSWRITE ` §џ                 sNetID             
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    sName                 §џ           Route name as string    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       4ХюP     џџџџ           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                ADSWRITE    §џ              nState            §џ                 sNetId             
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       4ХюP     џџџџ           FB_SAVESCOPESERVERDATA           nState            §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SCOPESERVER, IDXGRP := 16#750E, IDXOFFS := 0 )        ADSWRITE    §џ                 sNetId             
   T_AmsNetId   §џ              bExecute            §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ	              bDone            §џ
              bError            §џ              nErrorId           §џ                       4ХюP     џџџџ           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState    §џ           	   fbConnect                                   FB_ConnectScopeServer    §џ              fbStart                FB_StartScopeServer    §џ              fbStop                FB_StopScopeServer    §џ              fbSave        
                FB_SaveScopeServerData    §џ              fbDisconnect        	               FB_DisconnectScopeServer    §џ              fbReset        	               FB_ResetScopeServerControl    §џ                  sNetId             
   T_AmsNetId   §џ           	   eReqState               E_ScopeServerState   §џ              sConfigFile    Q       Q    §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       4ХюP     џџџџ           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite       o    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS	:= TIMESERVICE_TIMEZONINFORMATION )        ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              req                ST_AmsGetTimeZoneInformation ` §џ                 sNetID           ''     
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    Фџџџ        W. Europe Standard Time          
   TIMESTRUCT             
                                W. Europe Daylight Time          
   TIMESTRUCT                                 Фџџџ   ST_TimeZoneInformation   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ                       4ХюP     џџџџ           FB_STARTSCOPESERVER           nState            §џ           
   fbAdsWrite                ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId             
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       4ХюP     џџџџ           FB_STOPSCOPESERVER           nState            §џ           
   fbAdsWrite                ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId             
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       4ХюP     џџџџ           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer ` §џ       4    Internal (low level) buffer control function block    
   bOverwrite            §џ       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''        T_MaxString   §џ       %    String to add (write) to the buffer    pBuffer           §џ	       #    Pointer to ring buffer data bytes    cbBuffer           §џ
           Max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''        T_MaxString   §џ       #    String removed (read) from buffer    nCount           §џ           Number of fifo entries    cbSize           §џ       "    Current byte length of fifo data             4ХюP      џџџџ        "   FB_SYSTEMTIMETOTZSPECIFICLOCALTIME           fbBase             "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       p    Time to be converted (UTC, system time format). Structure that specifies the system time since January 1, 1601    tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       ,    Converted time in local system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            4ХюP      џџџџ           FB_TEXTFILERINGBUFFER           fbOpen                FB_FileOpen ` §џ              fbClose                FB_FileClose ` §џ              fbPuts                FB_FilePuts ` §џ              nStep         ` §џ       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ                 sNetId           ''     
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'        T_MaxString ` §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ           default: Open generic file    bAppend         ` §џ       #    TRUE = append, FALSE = not append    putLine           ''        T_MaxString ` §џ	              cbBuffer        ` §џ
       5    max. file buffer byte size(RESERVED for future use)    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              bOpened          ` §џ       )    TRUE = file opened, FALSE = file closed    getLine           ''        T_MaxString ` §џ                       4ХюP     џџџџ        "   FB_TRANSLATELOCALTIMETOUTCBYZONEID           inLocal                   
   TIMESTRUCT ` §џ       9    Input time in local system time format (time structure) 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziLocalSommerJump             
   T_FILETIME ` §џ              tziLocalWinterJump             
   T_FILETIME ` §џ              ui64LocalIn                T_ULARGE_INTEGER ` §џ       (    Local input time as unsigned 64 number    ui64LocalSommer                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.daylightDate as unsigned 64 bit number    ui64LocalWinter                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       <    Input time[Local] to tzInfo.daylightDate[Local] cmp result    in_to_w         ` §џ       <    Input time[Local] to tzInfo.standardDate[Local] cmp result    s_to_w         ` §џ       E    tzInfo.daylightDate[Local] to tzInfo.standardDate[Local] cmp result    in_to_s_jump         ` §џ        2    Input time[Local] to tzInfo jump time cmp result    in_to_w_jump         ` §џ!       2    Input time[Local] to tzInfo jump time cmp result    iStandardBias         ` §џ#              iDaylightBias         ` §џ$              ui64PreviousIn                T_ULARGE_INTEGER ` §џ&              ui64FallDiff                T_ULARGE_INTEGER ` §џ'           	   bFallDiff          ` §џ(           Nur zu Testzwecken    dtSommerJump         ` §џ*              dtWinterJump         ` §џ+                 in             
   T_FILETIME   §џ       /    Time to be converted (Local file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       '    Converted time (UTC file time format)    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       +    Detected daylight saving time information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             4ХюP      џџџџ        "   FB_TRANSLATEUTCTOLOCALTIMEBYZONEID           inUtc                   
   TIMESTRUCT ` §џ       7    Input time in UTC system time format (time structure)    bInAsStruct          ` §џ       k    TRUE => inUtc is valid/converted to UTC system time format, FALSE => inUtc is not valid/not converted yet 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziUtcSommer             
   T_FILETIME ` §џ       =    tzInfo.daylightDate transition time in UTC file time format    tziUtcWinter             
   T_FILETIME ` §џ       =    tzinfo.standardDate transition time in UTC file time format 	   ui64UtcIn                T_ULARGE_INTEGER ` §џ       &    UTC input time as unsigned 64 number    ui64UtcSommer                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.daylightDate as unsigned 64 bit number    ui64UtcWinter                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       8    Input time[UTC] to tzInfo.daylightDate[UTC] cmp result    in_to_w         ` §џ       8    Input time[UTC] to tzInfo.standardDate[UTC] cmp result    s_to_w         ` §џ        A    tzInfo.daylightDate[UTC] to tzInfo.standardDate[UTC] cmp result    out_to_s         ` §џ!       =    Output time[local] to tzInfo.daylightDate[local] cmp result    out_to_w         ` §џ"       =    Output time[local] to tzInfo.standardDate[local] cmp result       in             
   T_FILETIME   §џ       .    Time to be converted (UTC, file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       (    Converted time (local file time format)   eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       0    Detected daylight saving time/zone information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             4ХюP      џџџџ            FB_TZSPECIFICLOCALTIMETOFILETIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ       }    Time zone's specific local file time. 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       E    Converted time in Coordinated Universal Time (UTC) file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            4ХюP      џџџџ        "   FB_TZSPECIFICLOCALTIMETOSYSTEMTIME           fbBase                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       g    Time zone's specific local system time. Structure that specifies the system time since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       8    Coordinated Universal Time (UTC) in system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            4ХюP      џџџџ           FB_WRITEPERSISTENTDATA           fbAdsWrtCtl       9    ( ADSSTATE := ADSSTATE_SAVECFG, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL `§џ                 NETID             
   T_AmsNetId  §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time    MODE           SPDM_2PASS       E_PersistentMode   §џ       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            §џ              ERR            §џ              ERRID           §џ                       4ХюP     џџџџ           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER ` §џ	                 fileTime             
   T_FILETIME   §џ           Windows file time.       FILETIME_TO_DT                                     4ХюP      џџџџ           FILETIME_TO_SYSTEMTIME     	      D         ` §џ              M         ` §џ              Y         ` §џ           
   uiPastDays                T_ULARGE_INTEGER ` §џ	              uiPastYears                T_ULARGE_INTEGER ` §џ
              uiRemainder                T_ULARGE_INTEGER ` §џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ                 fileTime             
   T_FILETIME   §џ                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             4ХюP      џџџџ           FIX16_TO_LREAL               in                 T_FIX16   §џ                 FIX16_TO_LREAL                                                  4ХюP      џџџџ           FIX16_TO_WORD               in                 T_FIX16   §џ           16 bit fixed point number       FIX16_TO_WORD                                     4ХюP      џџџџ           FIX16ADD               augend                 T_FIX16   §џ              addend                 T_FIX16   §џ                 FIX16Add                 T_FIX16                             4ХюP      џџџџ        
   FIX16ALIGN               in                 T_FIX16   §џ       #    16 bit signed fixed point number.    n                           §џ       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                             4ХюP      џџџџ           FIX16DIV           tmpA         ` §џ	                 dividend                 T_FIX16   §џ              divisor                 T_FIX16   §џ                 FIX16Div                 T_FIX16                             4ХюP      џџџџ           FIX16MUL           tmp         ` §џ	                 multiA                 T_FIX16   §џ              multiB                 T_FIX16   §џ                 FIX16Mul                 T_FIX16                             4ХюP      џџџџ           FIX16SUB               minuend                 T_FIX16   §џ           
   subtrahend                 T_FIX16   §џ                 FIX16Sub                 T_FIX16                             4ХюP      џџџџ           GETREMOTEPCINFO        	   fbAdsRead       #    ( PORT:=1, IDXGRP:=3, IDXOFFS:=1 )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           
   RouterInfo   	  c            
                ST_AmsRouterInfoEntry         ` §џ              iIndex         ` §џ                 NETID             
   T_AmsNetId   §џ       D    Target NetID, usually left as empty string for reading local infos    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ       
    Ads busy    ERR            §џ	           Ads error    ERRID           §џ
           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT   §џ       N    field with all NetIDДs and PC names found in router, ordered as router gives             4ХюP     џџџџ           HEXSTR_TO_DATA           pSrc               ` §џ
              pDest               ` §џ              ascii         ` §џ              nibble         ` §џ              bAdd          ` §џ              bLN          ` §џ           hi/lo nibble       sHex                T_MaxString   §џ           Hex string to convert    pData           §џ           Pointer to destination buffer    cbData           §џ       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     4ХюP      џџџџ           HOST_TO_BE128               in                T_UHUGE_INTEGER   §џ                 HOST_TO_BE128                T_UHUGE_INTEGER                             4ХюP      џџџџ           HOST_TO_BE16               in           §џ                 HOST_TO_BE16                                     4ХюP      џџџџ           HOST_TO_BE32           parr    	                            ` §џ                 in           §џ                 HOST_TO_BE32                                     4ХюP      џџџџ           HOST_TO_BE64               in                T_ULARGE_INTEGER   §џ                 HOST_TO_BE64                T_ULARGE_INTEGER                             4ХюP      џџџџ           INT64_TO_LREAL               in                T_LARGE_INTEGER   §џ                 INT64_TO_LREAL                                                  4ХюP      џџџџ        
   INT64ADD64           bOV          ` §џ	                 i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ              
   Int64Add64                T_LARGE_INTEGER                             4ХюP      џџџџ           INT64ADD64EX               augend                T_LARGE_INTEGER   §џ              addend                T_LARGE_INTEGER   §џ                 Int64Add64Ex                T_LARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         4ХюP      џџџџ        
   INT64CMP64               i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ	              
   Int64Cmp64                                     4ХюP      џџџџ           INT64DIV64EX           bIsNegative          ` §џ           
   sRemainder                T_ULARGE_INTEGER ` §џ                 dividend                T_LARGE_INTEGER   §џ              divisor                T_LARGE_INTEGER   §џ                 Int64Div64Ex                T_LARGE_INTEGER                    	   remainder                 T_LARGE_INTEGER  §џ                   4ХюP      џџџџ           INT64ISZERO               i64                T_LARGE_INTEGER   §џ                 Int64IsZero                                      4ХюP      џџџџ           INT64NEGATE               i64                T_LARGE_INTEGER   §џ                 Int64Negate                T_LARGE_INTEGER                             4ХюP      џџџџ           INT64NOT               i64                T_LARGE_INTEGER   §џ                 Int64Not                T_LARGE_INTEGER                             4ХюP      џџџџ        
   INT64SUB64               i64a                T_LARGE_INTEGER   §џ       	    minuend    i64b                T_LARGE_INTEGER   §џ           substrahend    
   Int64Sub64                T_LARGE_INTEGER                             4ХюP      џџџџ           ISFINITE        	   ptrDouble    	                            ` §џ           	   ptrSingle               ` §џ	                 x                 T_ARG   §џ                 IsFinite                                      4ХюP      џџџџ           LARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 LARGE_INTEGER                T_LARGE_INTEGER                             4ХюP      џџџџ           LARGE_TO_ULARGE               in                T_LARGE_INTEGER   §џ                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                             4ХюP      џџџџ           LREAL_TO_FIX16               in                        §џ           LREAL number to convert    n                          §џ       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                             4ХюP      џџџџ           LREAL_TO_FMTSTR           rec              
   T_FloatRec ` §џ              pOut               ` §џ              iStart         ` §џ              iEnd         ` §џ              i         ` §џ                 in                        §џ
           
   iPrecision           §џ              bRound            §џ                 LREAL_TO_FMTSTR    џ      џ                             4ХюP      џџџџ           LREAL_TO_INT64               in                        §џ                 LREAL_TO_INT64                T_LARGE_INTEGER                             4ХюP      џџџџ           LREAL_TO_UINT64           tmp                      ` §џ                 in                        §џ                 LREAL_TO_UINT64                T_ULARGE_INTEGER                             4ХюP      џџџџ           MAXSTRING_TO_BYTEARR           cbCopy         ` §џ           	   Index7001                            in                T_MaxString   §џ                 MAXSTRING_TO_BYTEARR   	  џ                                                 4ХюP     џџџџ           NT_ABORTSHUTDOWN           fbAdsWrtCtl       N    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_POWERGOOD, DEVSTATE := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       4ХюP     џџџџ        
   NT_GETTIME        	   fbAdsRead       i    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_DATEANDTIME )        ADSREAD ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
              TIMESTR                   
   TIMESTRUCT   §џ           Local windows system time             4ХюP     џџџџ        	   NT_REBOOT           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 1 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Reboot delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           NT_SETLOCALTIME        
   fbAdsWrite       d    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_TIMESERVICES, IDXOFFS:=TIMESERVICE_DATEANDTIME)        ADSWRITE ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    TIMESTR                   
   TIMESTRUCT   §џ           New local system time    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           NT_SETTIMETORTCTIME        
   fbAdsWrite       :    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := 4, IDXOFFS := 0 )        ADSWRITE ` §џ           
   fbRegQuery       K    ( sSubKey := 'Software\Beckhoff\TwinCAT\System', sValName := 'NumOfCPUs' )                         FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              bTmp         ` §џ              state         ` §џ              bInit         ` §џ           	   numOfCPUs         ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       4ХюP     џџџџ           NT_SHUTDOWN           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Shutdown delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           NT_STARTPROCESS        
   fbAdsWrite       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP:=SYSTEMSERVICE_STARTPROCESS, IDXOFFS:=0 )        ADSWRITE `§џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              LenPath         ` §џ              LenDir         ` §џ           
   LenComLine         ` §џ              req                  ST_AmsStartProcessReq ` §џ           data buffer       NETID             
   T_AmsNetId  §џ       &    TwinCAT network address (ams net id)    PATHSTR                T_MaxString  §џ              DIRNAME                T_MaxString  §џ           	   COMNDLINE                T_MaxString  §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ                       4ХюP     џџџџ           OTSTRUCT_TO_TIME           tmpMilli         ` §џ                 OTIN                    OTSTRUCT   §џ                 OTSTRUCT_TO_TIME                                     4ХюP      џџџџ           PBOOL_TO_BOOL               in                  §џ                 PBOOL_TO_BOOL                                      4ХюP      џџџџ           PBYTE_TO_BYTE               in                 §џ                 PBYTE_TO_BYTE                                     4ХюP      џџџџ           PDATE_TO_DATE               in                 §џ                 PDATE_TO_DATE                                     4ХюP      џџџџ           PDINT_TO_DINT               in                 §џ                 PDINT_TO_DINT                                     4ХюP      џџџџ        	   PDT_TO_DT               in                 §џ              	   PDT_TO_DT                                     4ХюP      џџџџ           PDWORD_TO_DWORD               in                 §џ                 PDWORD_TO_DWORD                                     4ХюP      џџџџ           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER        §џ                 PHUGE_TO_HUGE                T_HUGE_INTEGER                             4ХюP      џџџџ           PINT_TO_INT               in                 §џ                 PINT_TO_INT                                     4ХюP      џџџџ           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER        §џ                 PLARGE_TO_LARGE                T_LARGE_INTEGER                             4ХюP      џџџџ           PLC_READSYMINFO        	   fbAdsRead       3    ( IDXGRP := ADSIGRP_SYM_UPLOADINFO, IDXOFFS := 0 )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              SymInfoStruct   	                       ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              SYMCOUNT           §џ              SYMSIZE           §џ                       4ХюP     џџџџ           PLC_READSYMINFOBYNAME           fbReadEx                PLC_ReadSymInfoByNameEx ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME                T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ                       4ХюP     џџџџ           PLC_READSYMINFOBYNAMEEX        
   fbAdsRdWrt       5    ( IDXGRP := ADSIGRP_SYM_INFOBYNAMEEX, IDXOFFS := 0 )        ADSRDWRT ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              symInfoBuffer                            ST_AmsSymbolInfoEntry ` §џ           
   nameLength         ` §џ           
   typeLength         ` §џ              commentLength         ` §џ              nameAdrOffset         ` §џ              typeAdrOffset         ` §џ              commentAdrOffset         ` §џ              nameCpyLength         ` §џ              typeCpyLength         ` §џ               commentCpyLength         ` §џ!              endOfBufAdrOffset         ` §џ"                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME                T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ              OVTYPE            §џ       @    TRUE => Type name string length overflow, FALSE => no overflow 	   OVCOMMENT            §џ       >    TRUE => Comment string length overflow, FALSE => no overflow             4ХюP     џџџџ        	   PLC_RESET           fbAdsWrtCtl       F    ( ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              RESET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ        	   PLC_START           fbAdsWrtCtl       D    ( ADSSTATE := ADSSTATE_RUN, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           PLC_STOP           fbAdsWrtCtl       E    ( ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           PLREAL_TO_LREAL               in                              §џ                 PLREAL_TO_LREAL                                                  4ХюP      џџџџ           PMAXSTRING_TO_MAXSTRING               in                 T_MaxString        §џ                 PMAXSTRING_TO_MAXSTRING                T_MaxString                             4ХюP      џџџџ           PREAL_TO_REAL               in                  §џ                 PREAL_TO_REAL                                      4ХюP      џџџџ           PROFILER     
      MAX_DATABUFF_SIZE    d   @  §џ              RisingEdgeStart                 R_TRIG ` §џ              RisingEdgeReset                 R_TRIG ` §џ              FallingEdgeStart                 F_TRIG ` §џ              GETCPUACCOUNT1                GETCPUACCOUNT ` §џ              OldCpuCntDW         ` §џ              MeasureData   	  d                     ` §џ              TimeSum         ` §џ              MaxData        ` §џ              idx         ` §џ                 START            §џ       0   rising edge starts measurement and falling stops   RESET            §џ                 BUSY            §џ              DATA                   PROFILERSTRUCT   §џ                       4ХюP     џџџџ           PSINT_TO_SINT               in                 §џ                 PSINT_TO_SINT                                     4ХюP      џџџџ           PSTRING_TO_STRING               in     Q       Q         §џ                 PSTRING_TO_STRING    Q       Q                              4ХюP      џџџџ           PTIME_TO_TIME               in                 §џ                 PTIME_TO_TIME                                     4ХюP      џџџџ           PTOD_TO_TOD               in                 §џ                 PTOD_TO_TOD                                     4ХюP      џџџџ           PUDINT_TO_UDINT               in                 §џ                 PUDINT_TO_UDINT                                     4ХюP      џџџџ           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER        §џ                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                             4ХюP      џџџџ           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER        §џ                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                             4ХюP      џџџџ           PUINT_TO_UINT               in                 §џ                 PUINT_TO_UINT                                     4ХюP      џџџџ           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER        §џ                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                             4ХюP      џџџџ           PUSINT_TO_USINT               in                 §џ                 PUSINT_TO_USINT                                     4ХюP      џџџџ           PWORD_TO_WORD               in                 §џ                 PWORD_TO_WORD                                     4ХюP      џџџџ        
   RAD_TO_DEG               ANGLE                        §џ              
   RAD_TO_DEG                                                  4ХюP      џџџџ           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType   §џ                 ROUTETRANSPORT_TO_STRING    Q       Q                              4ХюP      џџџџ           RTC           fbGetCpuCounter                GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ                 Q            §џ              CDT           §џ	                       4ХюP      џџџџ           RTC_EX           fbGetCpuCounter                GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ              PMSEK           §џ                 Q            §џ	              CDT           §џ
              CMSEK           §џ                       4ХюP      џџџџ           RTC_EX2     	      fbGetCpuCounter                GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              dateTime         ` §џ              init         ` §џ                 EN            §џ              PDT                   
   TIMESTRUCT   §џ              PMICRO           §џ                 Q            §џ	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    В                  
   TIMESTRUCT   §џ
              CMICRO           §џ                       4ХюP      џџџџ           SCOPEASCIIEXPORT        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ           	   sFilePath                T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       4ХюP     џџџџ        	   SCOPEEXIT        
   fbAdsWrite                ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              step            §џ              fbDelay                    TON    §џ                 bExecute            §џ       -    Rising edge starts function block execution    tTimeOut         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ              iErrorId           §џ	                       4ХюP     џџџџ           SCOPEGETRECORDLEN        	   fbAdsRead                ADSREAD    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ           
   fRecordLen                        §џ	                       4ХюP      џџџџ           SCOPEGETSTATE        	   fbAdsRead                ADSREAD    §џ              State            §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ              bOnline            §џ	                       4ХюP      џџџџ           SCOPELOADFILE        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ           	   sFilePath                T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       4ХюP     џџџџ           SCOPEMANUALTRIGGER        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       4ХюP      џџџџ           SCOPESAVEAS        
   RisingEdge                 R_TRIG ` §џ           
   fbAdsWrite       D    ( NETID := '', PORT := 14000, IDXGRP := 16#2000, IDXOFFS := 16#11 )        ADSWRITE ` §џ              step         ` §џ                 bExecute            §џ       -    Rising edge starts function block execution 	   sFilePath                T_MaxString   §џ           e.g. c:\Axis1.scp   tTimeout         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ	              iErrorId           §џ
                       4ХюP     џџџџ           SCOPESETOFFLINE        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       4ХюP      џџџџ           SCOPESETONLINE        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       4ХюP      џџџџ           SCOPESETRECORDLEN        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ           
   fRecordLen                        §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ	                       4ХюP      џџџџ           SCOPEVIEWEXPORT        
   fbAdsWrite                ADSWRITE    §џ                 bExecute            §џ           	   sFilePath                T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       4ХюP     џџџџ           STRING_TO_CSVFIELD           cbField         ` §џ                 in                T_MaxString   §џ       !    Input data in PLC string format    bQM            §џ	       l    TRUE => Enclose result string in quotation marks, FALSE => Don't enclose result string in quotation marks.       STRING_TO_CSVFIELD                T_MaxString                             4ХюP      џџџџ           STRING_TO_SYSTEMTIME           b   	                    16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT ` §џ              n         ` §џ              bFmt          ` §џ              dwYears         ` §џ              dwDays         ` §џ           	   Index7001                            in               §џ       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                             4ХюP      џџџџ           STRING_TO_UINT64           ptr               ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in               §џ                 STRING_TO_UINT64                T_ULARGE_INTEGER                             4ХюP      џџџџ           SYSTEMTIME_TO_DT           b   	                 ќ    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` §џ              str             ` §џ
              nSeconds         ` §џ           	   Index7001                            TIMESTR                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_DT                                     4ХюP      џџџџ           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER ` §џ	              tmp2                T_ULARGE_INTEGER ` §џ
              pastDays         ` §џ              i         ` §џ              
   systemTime                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                             4ХюP      џџџџ           SYSTEMTIME_TO_STRING           b   	                 Љ   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           	   Index7001                            in                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_STRING                                         4ХюP      џџџџ        	   TC_CONFIG           fbAdsWrtCtl       e    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RECONFIG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           TC_CPUUSAGE        	   fbAdsRead       5    ( PORT:= AMSPORT_R0_RTIME, IDXGRP:= 1, IDXOFFS:= 6 )        ADSREAD ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              USAGE           §џ          in %            4ХюP     џџџџ        
   TC_RESTART           fbAdsWrtCtl       b    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    RESTART            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           TC_STOP           fbAdsWrtCtl       a    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       4ХюP     џџџџ           TC_SYSLATENCY        	   fbAdsRead       8    ( PORT := AMSPORT_R0_RTIME, IDXGRP := 1, IDXOFFS := 2 )        ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpData   	                      ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              ACTUAL           §џ           Actual latency in Еs    MAXIMUM           §џ           Maximum latency in Еs             4ХюP     џџџџ           TIME_TO_OTSTRUCT           tmpMilli         ` §џ                 TIN           §џ                 TIME_TO_OTSTRUCT                    OTSTRUCT                             4ХюP      џџџџ           UINT32X32TO64           Tmp1         ` §џ	              Tmp2         ` §џ
              Tmp3         ` §џ              Tmp4         ` §џ              DW1         ` §џ              DW2         ` §џ              DW3         ` §џ              DW4         ` §џ                 ui32a           §џ              ui32b           §џ                 UInt32x32To64                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64_TO_LREAL               in                T_ULARGE_INTEGER   §џ                 UINT64_TO_LREAL                                                  4ХюP      џџџџ           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in                T_ULARGE_INTEGER   §џ                 UINT64_TO_STRING                                         4ХюP      џџџџ           UINT64ADD64           bOV          ` §џ	                 ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Add64                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64ADD64EX               augend                T_ULARGE_INTEGER   §џ              addend                T_ULARGE_INTEGER   §џ                 UInt64Add64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         4ХюP      џџџџ        	   UINT64AND               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64And                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64CMP64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ	                 UInt64Cmp64                                     4ХюP      џџџџ           UINT64DIV16EX        	   pDividend    	                            ` §џ              pResult    	                            ` §џ              rest         ` §џ                 dividend                T_ULARGE_INTEGER   §џ              divisor           §џ                 UInt64Div16Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   4ХюP      џџџџ           UINT64DIV64        	   remainder                T_ULARGE_INTEGER ` §џ	                 dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )               T_ULARGE_INTEGER ` §џ              bitShift         ` §џ              cmp         ` §џ              in   	                      T_ULARGE_INTEGER         ` §џ              out   	                      T_ULARGE_INTEGER         ` §џ           
   cbReturned         ` §џ           	   Index7001                            dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   4ХюP      џџџџ           UINT64ISZERO               ui64                T_ULARGE_INTEGER   §џ                 UInt64isZero                                      4ХюP      џџџџ           UINT64LIMIT               ui64min                T_ULARGE_INTEGER   §џ              ui64in                T_ULARGE_INTEGER   §џ              ui64max                T_ULARGE_INTEGER   §џ                 UInt64Limit                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64MAX               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Max                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64MIN               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Min                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64MOD64               dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Mod64                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64MUL64           bOV          ` §џ	                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64MUL64EX           bCarry          ` §џ           	   bSumCarry          ` §џ              n         ` §џ              m         ` §џ                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => Arithmetic overflow, FALSE => no overflow         4ХюP      џџџџ        	   UINT64NOT               ui64                T_ULARGE_INTEGER   §џ              	   UInt64Not                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64OR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Or                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64ROL           bMSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Rol                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64ROR           bLSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Ror                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64SHL               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shl                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64SHR               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shr                T_ULARGE_INTEGER                             4ХюP      џџџџ           UINT64SUB64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Sub64                T_ULARGE_INTEGER                             4ХюP      џџџџ        	   UINT64XOR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Xor                T_ULARGE_INTEGER                             4ХюP      џџџџ           ULARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 ULARGE_INTEGER                T_ULARGE_INTEGER                             4ХюP      џџџџ           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER   §џ                 ULARGE_TO_LARGE                T_LARGE_INTEGER                             4ХюP      џџџџ           WORD_TO_FIX16               in           §џ           16 bit fixed point number    n                           §џ           number of fractional bits       WORD_TO_FIX16                 T_FIX16                             4ХюP      џџџџ           WRITEPERSISTENTDATA           fbAdsWrtCtl       H    ( ADSSTATE := ADSSTATE_SAVECFG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` §џ                 NETID             
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ
              ERR            §џ              ERRID           §џ                       4ХюP     џџџџ    r   C:\TwinCAT\Plc\Upload\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              bClear            §џ              nMode           §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       ЈЏJ     џџџџ           FW_ADSLOGDINT            	   nCtrlMask           §џ              sMsgFmt               §џ              nArg           §џ                 FW_AdsLogDINT                                     ЈЏJ     џџџџ           FW_ADSLOGEVENT        
   STAMPREQ_I            §џ           
   STAMPRES_I            §џ           
   STAMPSIG_I            §џ           
   STAMPCON_I            §џ              ACCESSCNT_I            §џ           	   AMSADDR_I   	                         §џ              EVENT_I                      
   FW_TcEvent    §џ              pTCEVENTSTREAM_I            §џ              CBEVENTSTREAM_I            §џ              nSTATE_I            §џ              nSTATEREQ_I            §џ              nSTATERES_I            §џ              nSTATESIG_I            §џ               nSTATECON_I            §џ!              ERR_I             §џ"              ERRID_I            §џ#              bEVENT_SAV_I             §џ$              bEVENTQUIT_SAV_I             §џ%              TICKSTART_I            §џ&           	      sNetId               §џ              nPort           §џ              bEvent            §џ           
   bEventQuit            §џ              stEventConfigData                      
   FW_TcEvent   §џ              pEventDataAddress           §џ       	    pointer    cbEventDataLength           §џ	           
   bFbCleanup            §џ
              tTimeout           §џ                 nEventState           §џ              bError            §џ              nErrId           §џ              bQuit            §џ                       ЈЏJ     џџџџ           FW_ADSLOGLREAL            	   nCtrlMask           §џ              sMsgFmt               §џ              fArg                        §џ                 FW_AdsLogLREAL                                     ЈЏJ     џџџџ           FW_ADSLOGSTR            	   nCtrlMask           §џ              sMsgFmt               §џ              sArg               §џ                 FW_AdsLogSTR                                     ЈЏJ     џџџџ           FW_ADSRDWRT           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRTRD_SAV_I             §џ              PDESTADDR_I            §џ              TICKSTART_I            §џ           
      sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           	   cbReadLen           §џ           
   pWriteBuff           §џ	           	   pReadBuff           §џ
              bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             ЈЏJ     џџџџ           FW_ADSRDWRTIND           CLEAR_I             §џ                 bClear            §џ           	      bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       ЈЏJ     џџџџ           FW_ADSRDWRTRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           ЈЏJ     џџџџ        
   FW_ADSREAD           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             ЈЏJ     џџџџ           FW_ADSREADDEVICEINFO           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDINFO_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sDevName               §џ              nDevVersion           §џ                       ЈЏJ     џџџџ           FW_ADSREADIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ                       ЈЏJ     џџџџ           FW_ADSREADRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           ЈЏJ     џџџџ           FW_ADSREADSTATE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDSTATE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ           	   nAdsState           §џ           	   nDevState           §џ                       ЈЏJ     џџџџ           FW_ADSWRITE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       ЈЏJ     џџџџ           FW_ADSWRITECONTROL           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ           	   nAdsState           §џ           	   nDevState           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       ЈЏJ     џџџџ           FW_ADSWRITEIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       ЈЏJ     џџџџ           FW_ADSWRITERES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ              bRespond            §џ                           ЈЏJ     џџџџ           FW_DRAND           FirstCall_i             §џ	           
   HoldRand_i            §џ
              R250_Buffer_i   	  љ                        §џ           
   R250_Index            §џ                 nSeed           §џ                 fRndNum                        §џ                       ЈЏJ     џџџџ           FW_GETCPUACCOUNT                   dwCpuAccount           §џ                       ЈЏJ     џџџџ           FW_GETCPUCOUNTER                
   dwCpuCntLo           §џ           
   dwCpuCntHi           §џ                       ЈЏJ     џџџџ           FW_GETCURTASKINDEX                   nIndex           §џ                       ЈЏJ     џџџџ           FW_GETSYSTEMTIME                   dwTimeLo           §џ              dwTimeHi           §џ                       ЈЏJ     џџџџ           FW_GETVERSIONTCBASE               nVersionElement           §џ                 FW_GetVersionTcBase                                     ЈЏJ     џџџџ           FW_LPTSIGNAL            	   nPortAddr           §џ              nPinNo           §џ              bOnOff            §џ	                 FW_LptSignal                                      ЈЏJ     џџџџ        	   FW_MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    cbLen           §џ           Number of characters    	   FW_MemCmp                                     ЈЏJ     џџџџ        	   FW_MEMCPY               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    	   FW_MemCpy                                     ЈЏJ     џџџџ        
   FW_MEMMOVE               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    
   FW_MemMove                                     ЈЏJ     џџџџ        	   FW_MEMSET               pDest           §џ           Pointer to destination 	   nFillByte           §џ           Character to set    cbLen           §џ           Number of characters    	   FW_MemSet                                     ЈЏJ     џџџџ           FW_PORTREAD            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ                 FW_PortRead                                     ЈЏJ     џџџџ           FW_PORTWRITE            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ              nValue           §џ                 FW_PortWrite                                      ЈЏJ     џџџџ    y   C:\TwinCAT\Plc\Upload\FB_Date_Time .lib @                                                                                          FB_DATETIME           FBLTIME                               FB_LocalSystemTime    §џ                 NET_ID    Q       Q    §џ           	   	   DATE_TIME    Q       Q    §џ              DATE_OUT    Q       Q    §џ              TIME_OUT    Q       Q    §џ              DAY_OUT           §џ	           	   MONTH_OUT           §џ
              YEAR_OUT           §џ           
   SECOND_OUT           §џ           
   MINUTE_OUT           §џ              HOUR_OUT           §џ                       јѓ>W      џџџџ    t   C:\TwinCAT\Plc\Upload\TcSystem.lib @                                                                                P          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents ` §џ                 NetID            
   T_AmsNetId   §џ              bClear            §џ              iMode           §џ              tTimeout         §џ                 bBusy            §џ	              bErr            §џ
              iErrId           §џ                       AKO     џџџџ        
   ADSLOGDINT               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              dintArg           §џ              
   ADSLOGDINT                                     AKO      џџџџ           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent ` §џ           	      NETID            
   T_AmsNetId   §џ              PORT           §џ              Event            §џ           	   EventQuit            §џ              EventConfigData               TcEvent   §џ              EventDataAddress           §џ       	    pointer    EventDataLength           §џ	           	   FbCleanup            §џ
              TMOUT         §џ              
   EventState           §џ              Err            §џ              ErrId           §џ              Quit            §џ                       AKO     џџџџ           ADSLOGLREAL               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              lrealArg                        §џ                 ADSLOGLREAL                                     AKO      џџџџ        	   ADSLOGSTR               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              strArg               T_MaxString   §џ              	   ADSLOGSTR                                     AKO      џџџџ           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDINFO            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVNAME               §џ              DEVVER           §џ                       AKO     џџџџ        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDSTATE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              ADSSTATE           §џ              DEVSTATE           §џ                       AKO     џџџџ           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       AKO     џџџџ        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             AKO     џџџџ           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd    §џ                 CLEAR            §џ           	      VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              RDLENGTH           §џ           	   WRTLENGTH           §џ              DATAADDR           §џ                       AKO      џџџџ           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           AKO      џџџџ           ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       AKO     џџџџ        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             AKO     џџџџ        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ                       AKO      џџџџ        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           AKO      џџџџ           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       AKO     џџџџ           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ              DATAADDR           §џ                       AKO      џџџџ           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              RESPOND            §џ                           AKO      џџџџ        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              ADSSTATE           §џ              DEVSTATE           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       AKO     џџџџ           ANALYZEEXPRESSION               InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ           	   OutString               §џ                       AKO      џџџџ           ANALYZEEXPRESSIONCOMBINED           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ           	   OutString               §џ	                       AKO      џџџџ           ANALYZEEXPRESSIONTABLE           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ                       AKO      џџџџ           APPENDERRORSTRING               strOld               §џ              strNew               §џ                 AppendErrorString                                         AKO      џџџџ           BAVERSION_TO_DWORD               nVersion         ` §џ           	   nRevision         ` §џ	              nBuild         ` §џ
                 BAVERSION_TO_DWORD                                     AKO      џџџџ        
   CLEARBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ              
   CLEARBIT32                                     AKO      џџџџ        	   CSETBIT32           dwConst        ` §џ	                 inVal32           §џ              bitNo           §џ              bitVal            §џ       &    value to which the bit should be set    	   CSETBIT32                                     AKO      џџџџ           DRAND           fbDRand                    FW_DRand ` §џ
                 Seed           §џ                 Num                        §џ                       AKO      џџџџ           F_COMPAREFWVERSION           soll         ` §џ              ist         ` §џ                 major         ` §џ           requiered major version    minor         ` §џ	           requiered minor version    revision         ` §џ
       )    requiered revision/service pack version    patch         ` §џ       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      AKO      џџџџ           F_CREATEAMSNETID           idx         ` §џ                 nIds               T_AmsNetIdArr   §џ           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                             AKO      џџџџ           F_CREATEIPV4ADDR           idx         ` §џ                 nIds               T_IPv4AddrArr   §џ       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                             AKO      џџџџ           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe ` §џ                     F_GetStructMemberAlignment                                     AKO      џџџџ           F_GETVERSIONTCSYSTEM               nVersionElement           §џ                 F_GetVersionTcSystem                                     AKO      џџџџ           F_IOPORTREAD               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to read       F_IOPortRead                                     AKO      џџџџ           F_IOPORTWRITE               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to write    nValue           §џ           Value to write       F_IOPortWrite                                      AKO      џџџџ           F_SCANAMSNETIDS           pNetID               ` §џ              b               T_AmsNetIdArr ` §џ              w         ` §џ	              id         ` §џ
           	   Index7001                            sNetID            
   T_AmsNetID   §џ       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                             AKO      џџџџ           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr ` §џ           	   Index7001                            sIPv4            
   T_IPv4Addr   §џ       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                             AKO      џџџџ           F_SPLITPATHNAME           pPath               ` §џ              pSlash               ` §џ              pDot               ` §џ              p               ` §џ              length         ` §џ              	   sPathName               T_MaxString   §џ                 F_SplitPathName                                sDrive               §џ              sDir                T_MaxString  §џ           	   sFileName                T_MaxString  §џ              sExt                T_MaxString  §џ	                   AKO      џџџџ           F_TOASC           pChar               ` §џ                 str    Q       Q    §џ                 F_ToASC                                     AKO      џџџџ           F_TOCHR           pChar    	                            ` §џ                 c           §џ                 F_ToCHR    Q       Q                              AKO      џџџџ           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX ` §џ              req                ST_AdsBaDevApiReq ` §џ              state         ` §џ              rtrig                 R_TRIG ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY ` §џ       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` §џ       +    Optional command modifier (0 == not used)    nIdxGrp         ` §џ           Api function group    nIdxOffs         ` §џ           Api function offset 
   cbWriteLen         ` §џ	           Input data byte size 	   cbReadLen         ` §џ
           Output data byte size 
   pWriteBuff         ` §џ           Pointer to input data buffer 	   pReadBuff         ` §џ           Pointer to output data buffer    bExecute          ` §џ       &    Rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ           Count of bytes actually read             AKO     џџџџ           FB_BAGENGETVERSION           fbCtrl           ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl ` §џ              rtrig                 R_TRIG ` §џ              state         ` §џ              rsp         ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           ams net id    bExecute          ` §џ       &    rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ	              bError          ` §џ
              nErrID         ` §џ              nVersion         ` §џ           	   nRevision         ` §џ              nBuild         ` §џ                       AKO     џџџџ           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Create directory at generic path    bExecute            §џ       %    rising edge start command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       AKO     џџџџ           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '                            FW_AdsRdWrt ` §џ              iEOF         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              bEOF            §џ                       AKO     џџџџ           FB_FILECLOSE        
   fbAdsRdWrt           ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ       %    file handle obtained through 'open'    bExecute            §џ           close control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       AKO     џџџџ           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           file path and name    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       AKO     џџџџ           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sLine               T_MaxString   §џ              bEOF            §џ                       AKO     џџџџ           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ              tmpHndl         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    nMode           §џ           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              hFile           §џ           file handle             AKO     џџџџ           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    sLine               T_MaxString   §џ           string to write    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       AKO     џџџџ           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 	   pReadBuff           §џ           buffer address for read 	   cbReadLen           §џ           count of bytes for read    bExecute            §џ           read control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read    bEOF            §џ                       AKO     џџџџ           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ           
   sBothNames   	                    T_MaxString         ` §џ           = SIZEOF( T_MaxString ) * 2    nOldLen         ` §џ              nNewLen         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    sOldName               T_MaxString   §џ           max filename length = 255    sNewName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: generic file path   bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       AKO     џџџџ           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt ` §џ           
   tmpSeekPos   	                       ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ	           file handle    nSeekPos           §џ
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin   §џ              bExecute            §џ           seek control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       AKO     џџџџ           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              nSeekPos           §џ          	On error, nSEEKPOS returns -1             AKO     џџџџ           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 
   pWriteBuff           §џ           buffer address for write 
   cbWriteLen           §џ           count of bytes for write    bExecute            §џ           write control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       !    count of bytes actually written             AKO     џџџџ           FB_PCWATCHDOG           bRetVal          ` §џ              iTime         ` §џ              iIdx         ` §џ              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` §џ              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	                              і            0            Њ    ` §џ              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	                              і             0             Њ    ` §џ                 tTimeOut           §џ       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            §џ           Enable / Disable Watchdog       bEnabled            §џ       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ           FB still busy    bError            §џ	           FB has error     nErrId           §џ
           FB error ID               AKO      џџџџ           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Delete directory at generic path    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       AKO     џџџџ           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          :         ADSLOGEVENT ` §џ              cfgEvent               TcEvent ` §џ              bInit         ` §џ                 SourceID           §џ              EventID           §џ           	   bSetEvent           §џ              bQuit            §џ                 ErrId           §џ	              Error            §џ
                       AKO     џџџџ        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ       )    file handle obtained through 'FILEOPEN'    CLOSE            §џ           close control input    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       AKO     џџџџ           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ           ams net id 	   FPATHNAME               T_MaxString   §џ       #    default max filename length = 255    OPENMODE           §џ           open mode flags    OPEN            §џ           open control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              HFILE           §џ           file handle             AKO     џџџџ           FILEREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for read    COUNT           §џ           count of bytes for read    READ            §џ           read control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             AKO     џџџџ           FILESEEK        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    SEEKPOS           §џ           new seek pointer position    SEEK            §џ           seek control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       AKO     џџџџ        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ              tmpCount            §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for write    COUNT           §џ           count of bytes for write    WRITE            §џ           write control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_W           §џ       !    count of bytes actually written             AKO     џџџџ           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     СО                 4                          FW_AdsRdWrt ` §џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ       *    Byte length of input parameter structure    pRead         ` §џ	           Points ot output buffer    cbRead         ` §џ
           Points to input buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             AKO      џџџџ           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ТО                 4                          FW_AdsRdWrt ` §џ           don't use it!        funGrp         ` §џ           Function group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ	       *    Byte length of input parameter structure    pRead         ` §џ
           Points ot output buffer    cbRead         ` §џ           Points to input buffer    pcbReturned               ` §џ       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     AKO      џџџџ           GETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 GETBIT32                                      AKO      џџџџ           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount ` §џ                     cpuAccountDW           §џ                       AKO      џџџџ           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter ` §џ                  
   cpuCntLoDW           §џ           
   cpuCntHiDW           §џ                       AKO      џџџџ           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex ` §џ                     index           §џ           Task index [1..4]             AKO      џџџџ           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime ` §џ                     timeLoDW           §џ              timeHiDW           §џ                       AKO      џџџџ           GETTASKTIME           out   	                       ` §џ	           
   cbReturned         ` §џ
                     timeLoDW           §џ              timeHiDW           §џ                       AKO      џџџџ        	   LPTSIGNAL               PortAddr           §џ              PinNo           §џ              OnOff            §џ	              	   LPTSIGNAL                                      AKO      џџџџ           MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    n           §џ           Number of characters       MEMCMP                                     AKO      џџџџ           MEMCPY               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMCPY                                     AKO      џџџџ           MEMMOVE               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMMOVE                                     AKO      џџџџ           MEMSET               destAddr           §џ           Pointer to destination    fillByte           §џ           Character to set    n           §џ           Number of characters       MEMSET                                     AKO      џџџџ           ROL32               inVal32           §џ              n           §џ                 ROL32                                     AKO      џџџџ           ROR32               inVal32           §џ              n           §џ                 ROR32                                     AKO      џџџџ           SETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 SETBIT32                                     AKO      џџџџ           SFCACTIONCONTROL     
      S_FF                 RS    §џ              L_TMR                    TON    §џ              D_TMR                    TON    §џ              P_TRIG                 R_TRIG    §џ              SD_TMR                    TON    §џ              SD_FF                 RS    §џ              DS_FF                 RS    §џ              DS_TMR                    TON    §џ              SL_FF                 RS    §џ              SL_TMR                    TON    §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       AKO      џџџџ           SHL32               inVal32           §џ              n           §џ                 SHL32                                     AKO      џџџџ           SHR32               inVal32           §џ              n           §џ                 SHR32                                     AKO      џџџџ    v   C:\TwinCAT\Plc\Upload\TcBaseMath.lib @                                                                                          FW_FLOOR               lr_in                        §џ                 FW_Floor                                                  DјA     џџџџ           FW_LREALFRAC               lr_in                        §џ                 FW_LrealFrac                                                  DјA     џџџџ           FW_LREALMODP               lr_val                        §џ              lr_mod                        §џ                 FW_LrealModP                                                  DјA     џџџџ           FW_LREALTRUNC               lr_in                        §џ                 FW_LrealTrunc                                                  DјA     џџџџ    r   C:\TwinCAT\Plc\Upload\TcMath.lib @                                                                                          F_GETVERSIONTCMATH               nVersionElement           §џ                 F_GetVersionTcMath                                     :RA      џџџџ           FLOOR               lr_in                        §џ                 FLOOR                                                  :RA      џџџџ           FRAC               lr_in                        §џ                 FRAC                                                  :RA      џџџџ           LMOD               lr_Value                        §џ              lr_Arg                        §џ                 LMOD                                                  :RA      џџџџ           LTRUNC               lr_in                        §џ                 LTRUNC                                                  :RA      џџџџ           MODABS               lr_Value                        §џ              lr_Arg                        §џ                 MODABS                                                  :RA      џџџџ           MODTURNS           lr_Tmp                         §џ                 lr_Value                        §џ              lr_Arg                        §џ                 MODTURNS                                     :RA      џџџџ    n   C:\TwinCAT\PLC\LIB\TcMC2.lib @                                                                                b          _F_AXISSTATE                   _F_AxisState               MC_AxisStates                       NcToPlc                                        NCTOPLC_AXIS_REF` §џ              PlcToNc                                   PLCTONC_AXIS_REF` §џ                   ІИИY      џџџџ           _F_GETINDEXGROUP        
   IndexGroup         ` §џ	              IndexOffset         ` §џ
              nType               _E_ParameterType ` §џ              lrValue                      ` §џ              
   ParaNumber         ` §џ              ControlLoopIndex         ` §џ            2016-11-18 KSt    Mode         ` §џ           read/write       _F_GetIndexGroup                    _ST_ParaStruct                             ІИИY      џџџџ           _F_NCCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData         §џ	              NcCycleCounter            §џ
                 LastNcCycleCounter           §џ                 _F_NcCycleCounterUpdated                                Axis                AXIS_REF  §џ                   ІИИY      џџџџ           _F_NCNOOFCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData         §џ	              NcCycleCounter            §џ
                 LastNcCycleCounter           §џ                 _F_NcNoOfCycleCounterUpdated                               Axis                AXIS_REF  §џ                   ІИИY      џџџџ           _F_READSTATUS           GetTaskIndex                GETCURTASKINDEX ` §џ                 ForceTaskIndexUpdate          ` §џ       `    force update of the taskindex with GETCURTASKINDEX - otherwise update only once - 20100416 KSt       _F_ReadStatus        1                                                       ST_AxisStatus                       NcToPlc                                        NCTOPLC_AXIS_REF` §џ              PlcToNc                                   PLCTONC_AXIS_REF` §џ           
   LastStatus         1                                                       ST_AxisStatus` §џ	                   ІИИY      џџџџ           _F_TCMC_DWORD_TO_HEXSTR           str1             ` §џ              pstr               ` §џ	              i         ` §џ
              digit         ` §џ                 in         ` §џ                 _F_TcMC_DWORD_TO_HEXSTR                                         ІИИY      џџџџ           _F_TCMC_ROUND           n                      ` §џ                 value                      ` §џ              digits         ` §џ                 _F_TcMC_Round                                                  ІИИY      џџџџ           _F_UPDATENCCYCLECOUNTER                   _F_UpdateNcCycleCounter                               Axis                AXIS_REF  §џ                   ІИИY      џџџџ           _FB_MOVEUNIVERSALGENERIC           iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ               sStartRequest                      !   _ST_TcNC_UnversalAxisStartRequest    §џ!              sStartResponse             "   _ST_TcNC_UnversalAxisStartResponse    §џ"              fbAdsReadWrite                          
   ADSRDWRTEX    §џ#              ContinousMode             §џ$           
   InVelocity             §џ%              DiffCycleCounter            §џ&       5    last recent PLC cycle counter difference while Busy    EmptyStartResponse             "   _ST_TcNC_UnversalAxisStartResponse ` §џ*              COUNT_R         ` §џ+              CounterCmdNoZero         ` §џ,              CounterCmdNotStarted         ` §џ-           	   DiffCmdNo         ` §џ.              InitialNcToPlcCmdNo         ` §џ/              NcCycleCounter         ` §џ0              LastNcCycleCounter         ` §џ1              NcMappingCounter         ` §џ2              NcCycleCounterAvailable          ` §џ3              NcCycleCounterNotAvailable          ` §џ4              NcCyclicFeedbackExpected          ` §џ5              PlcDebugCode         ` §џ6       a    additional information for debugging purposes will be added to debug messages (ActErrorMessage)    AxisIsSlave          ` §џ7              GetTaskIndex                GETCURTASKINDEX ` §џ8              CycleCounter         ` §џ9       *    last recent PLC cycle counter while Busy 	   fbTimeOut                    TON ` §џ:              fbStopMonitoringTimeOut                    TON ` §џ;              fbTimeOutMappingCounter                    TON ` §џ<              fbOnTrigger                 R_TRIG ` §џ=              sTempMsg             ` §џ>              OpMode                  _ST_TcNc_OperationModes ` §џA                 Execute            §џ          	StartType		: 	UDINT; 	   StartType               _E_TCNC_StartPosType   §џ	       #    20110511 KSt type changed for Tc3    Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ       6   	Direction			:	MC_Direction := MC_Positive_Direction;	
   BufferMode               MC_BufferMode   §џ              Options                  ST_MoveOptions   §џ              Reset            §џ           for internal use only    GotoRunState            §џ           for internal use only       Done            §џ       :    Same meaning as InVelocity for continous motion commands    Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ              CmdNo           §џ              ADSbusy            §џ                 Axis                AXIS_REF  §џ              LastExecutionResult                   _ST_FunctionBlockResults  §џ                   ІИИY      џџџџ           _FB_PHASINGGENERIC           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ          	fbAdsReadWrite	: 	ADSRDWRTEX;
   fbAdsWrite                          ADSWRITE    §џ!           
   sNcPhasing                           _ST_TcNC_PhasingRequest    §џ"              PhasingStarted             §џ#           	   fbTrigger                 R_TRIG ` §џ'           	   fbTimeOut                    TON ` §џ(           
      Execute            §џ           B 	   StartType               _E_TcNC_StartPosType   §џ	           command type start, stop etc, 
   PhaseShift                        §џ
           B    PhasingType               E_PhasingType   §џ       1    type of phase shift value, absolute or relative    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    PhaseShiftFeedback                        §џ           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   ІИИY      џџџџ        !   _FB_POSITIONCORRECTIONTABLELOOKUP           nState            §џ              dwSize            §џ              eActiveDirection           WorkDirectionNone       E_WorkDirection    §џ           	   bExecCalc             §џ           
   stElement1             #   ST_PositionCompensationTableElement    §џ           
   stElement2             #   ST_PositionCompensationTableElement    §џ            
   nLeftIndex            §џ!       #    Index starting from 0 up to (N-1)    fSetPos                         §џ"       A    position setpoint (absolute linear position or modulo position) 	   pTmpTable              #   ST_PositionCompensationTableElement         §џ$       0    helper variable: pointer to table of this type    fTmpStep                         §џ%           helper variable    fTmpA                         §џ&           helper variable    fTmpB                         §џ'           helper variable 
   fTmpDelta1                         §џ(           helper variable 
   fTmpDelta2                         §џ)           helper variable    ERRORCODE_PARAMSIZE    CK     §џ,              ERRORCODE_PARAMPOS    DK     §џ-       +   	ERRORCODE_TCNCNOTIMPL	: UDINT := 16#4B45;       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        §џ           pointer to table of this type 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   §џ       1    position compensation table parameter structure       Compensation                        §џ              Error            §џ              ErrorID           §џ              Active            §џ                 Axis                Axis_Ref  §џ                   ІИИY      џџџџ           _FB_READWRITEPARAMETER           iState           STATE_INITIALIZATION       _E_TcMC_STATES ` §џ           	   fbAdsRead                          ADSREAD ` §џ           
   fbAdsWrite                          ADSWRITE ` §џ              dwValue         ` §џ              lrValue   	  
                                 ` §џ              NcBoolValue         ` §џ              bStarted          ` §џ!              stParaStruct                    _ST_ParaStruct ` §џ"              n         ` §џ#              i         ` §џ$           	   ParaLREAL        ` §џ(          	ParaBOOL		:	INT := 3;      Enable          ` §џ              ParameterNumber               MC_AxisParameter ` §џ              Mode         ` §џ	           read/write    ParameterType         ` §џ
           bool/ not  bool       Done          ` §џ              Busy          ` §џ              Error          ` §џ              ErrorID         ` §џ              ADSbusy          ` §џ                 Axis                AXIS_REF` §џ           
   ValueLreal                      ` §џ           
   ValueDword         ` §џ           	   ValueBool          ` §џ                   ІИИY      џџџџ           _FBAXIS_REF        	   _internal                  _InternalAxisRefData ` §џ              Storage   	                       ` §џ       $    universal storage for internal use       PlcToNc                                  PLCTONC_AXIS_REF   §џ                 NcToPlc                                       NCTOPLC_AXIS_REF  §џ              ADS                 ST_AdsAddress   §џ              Status        1                                                       ST_AxisStatus   §џ                       ІИИY     џџџџ           _MC_HALTPHASING           PhasingGeneric                                         _FB_PhasingGeneric    §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ	           E 
   BufferMode               MC_BufferMode   §џ
           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   ІИИY      џџџџ           _MC_PHASINGABSOLUTE           PhasingGeneric                                         _FB_PhasingGeneric    §џ$                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ            E    AbsolutePhaseShift                        §џ!           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   ІИИY      џџџџ           _MC_PHASINGRELATIVE           PhasingGeneric                                         _FB_PhasingGeneric    §џ&                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E    CoveredPhaseShift                        §џ#           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   ІИИY      џџџџ           _TCMC_ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ               NoUpdateCounter            §џ!           used for timeout detection    state            §џ"           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ              DESTADDR           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF  §џ                   ІИИY     џџџџ           _TCMC_ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                  NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF  §џ                   ІИИY     џџџџ           _TCMC_ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                 Axis                AXIS_REF  §џ                   ІИИY     џџџџ           _TCMCGLOBAL     	      Axis                 _ST_NCADS_Axis   §џ       A    IDXGRP and IDXOFFS constants of axis parameter/status/functions    Table                _ST_NCADS_Table   §џ       B    IDXGRP and IDXOFFS constants of table parameter/status/functions     NCPORT_TCNCCAMMING_TABLEFUNCTION    є     §џ       	    timeout    tTargetPosTimeOut    p     §џ       T    20050128 KSt - changed from 5 sec to 6 sec to be later than a NC PEH error (5 sec)    tADSTimeOut    ш     §џ              tStopMonitoringTimeOut    d      §џ       C    20111208 KSt - new for stop monitoring (axis in standstill window    NCTOPLC_FEEDBACK_MAXWAITCYCLES    
      §џ       \    maximum number of PLC cycles to wait for a cyclic feedback in NcToPlc after an ADS command    fbADSRDDEVINFO        
                ADSRDDEVINFO    §џ               DeviceVersion            §џ!                 NCPORT_TCMC    є     §џ       (    20110511 type changed from INT to UINT    NCPORT_TCMC_COUPLING    є     §џ       6    used with all axis coupling commands - 12.7.2006 KSt    NCNETID_TCMC           ''    
   T_AmsNetId   §џ              NCPORT_TCMC_CAM    є     §џ       (    20110511 type changed from INT to UINT    NCNETID_TCMC_CAM           ''    
   T_AmsNetId   §џ              NCPORT_TCMC_SUPERPOSITION    ѕ     §џ	           20140930 KSt added       NcDeviceInfoTcMainVersion           §џ              NcDeviceInfoTcSubVersion           §џ              NcDeviceInfoNcDriverVersion           §џ              NcDeviceInfoNcVersion           §џ              NcDeviceInfoNcName               §џ                       ІИИY     џџџџ           F_AXISCAMDATAQUEUED            
   StateDWord           §џ
                 F_AxisCamDataQueued                                      ІИИY      џџџџ           F_AXISCAMSCALINGPENDING            
   StateDWord           §џ                 F_AxisCamScalingPending                                      ІИИY      џџџџ           F_AXISCAMTABLEQUEUED            
   StateDWord           §џ
                 F_AxisCamTableQueued                                      ІИИY      џџџџ           F_AXISCONTROLLOOPCLOSED            
   StateDWord           §џ                 F_AxisControlLoopClosed                                      ІИИY      џџџџ           F_AXISEXTERNALLATCHVALID            
   StateDWord           §џ                 F_AxisExternalLatchValid                                      ІИИY      џџџџ           F_AXISGOTNEWTARGETPOSITION            
   StateDWord           §џ
                 F_AxisGotNewTargetPosition                                      ІИИY      џџџџ           F_AXISHASBEENSTOPPED            
   StateDWord           §џ                 F_AxisHasBeenStopped                                      ІИИY      џџџџ           F_AXISHASEXTSETPOINTGEN            
   StateDWord           §џ                 F_AxisHasExtSetPointGen                                      ІИИY      џџџџ           F_AXISHASJOB            
   StateDWord           §џ                 F_AxisHasJob                                      ІИИY      џџџџ           F_AXISINERRORSTATE            
   StateDWord           §џ                 F_AxisInErrorState                                      ІИИY      џџџџ           F_AXISINPOSITIONWINDOW            
   StateDWord           §џ                 F_AxisInPositionWindow                                      ІИИY      џџџџ           F_AXISINPROTECTEDMODE            
   StateDWord           §џ                 F_AxisInProtectedMode                                      ІИИY      џџџџ           F_AXISINPTPMODE            
   StateDWord           §џ
                 F_AxisInPTPmode                                      ІИИY      џџџџ           F_AXISIODATAISINVALID            
   StateDWord           §џ                 F_AxisIoDataIsInvalid                                      ІИИY      џџџџ           F_AXISISATTARGETPOSITION            
   StateDWord           §џ                 F_AxisIsAtTargetPosition                                      ІИИY      џџџџ           F_AXISISCALIBRATED            
   StateDWord           §џ                 F_AxisIsCalibrated                                      ІИИY      џџџџ           F_AXISISCALIBRATING            
   StateDWord           §џ                 F_AxisIsCalibrating                                      ІИИY      џџџџ           F_AXISISCOMPENSATING            
   StateDWord           §џ                 F_AxisIsCompensating                                      ІИИY      џџџџ           F_AXISISCOUPLED               nCoupleState           §џ                 F_AxisIsCoupled                                      ІИИY      џџџџ           F_AXISISMOVING            
   StateDWord           §џ                 F_AxisIsMoving                                      ІИИY      џџџџ           F_AXISISMOVINGBACKWARDS            
   StateDWord           §џ                 F_AxisIsMovingBackwards                                      ІИИY      џџџџ           F_AXISISMOVINGENDLESS            
   StateDWord           §џ                 F_AxisIsMovingEndless                                      ІИИY      џџџџ           F_AXISISMOVINGFORWARD            
   StateDWord           §џ                 F_AxisIsMovingForward                                      ІИИY      џџџџ           F_AXISISNOTMOVING            
   StateDWord           §џ                 F_AxisIsNotMoving                                      ІИИY      џџџџ           F_AXISISREADY            
   StateDWord           §џ                 F_AxisIsReady                                      ІИИY      џџџџ           F_AXISJOBPENDING            
   StateDWord           §џ
                 F_AxisJobPending                                      ІИИY      џџџџ           F_AXISMOTIONCOMMANDSLOCKED            
   StateDWord           §џ                 F_AxisMotionCommandsLocked                                      ІИИY      џџџџ           F_AXISPHASINGACTIVE            
   StateDWord           §џ                 F_AxisPhasingActive                                      ІИИY      џџџџ           F_AXISREACHEDCONSTANTVELOCITY            
   StateDWord           §џ                 F_AxisReachedConstantVelocity                                      ІИИY      џџџџ           F_GETVERSION_TCMC2               nVersionElement           §џ                 F_GetVersion_TcMC2                                     ІИИY      џџџџ           MC_ABORTSUPERPOSITION           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              fbOnTrigger                 R_TRIG    §џ           
   fbADSwrite                          ADSWRITE    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ                 Execute            §џ           Starts touch probe recording       Done            §џ           move completed    Busy            §џ       "    function block is currently Busy    Error            §џ       6    Signals that error has occured within Function Block    ErrorID           §џ	           Error identification       Axis                AXIS_REF  §џ       f    Identifies the axis of which the position should be recorded at a defined event at the trigger input         ІИИY      џџџџ           MC_ABORTTRIGGER           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              OLDADSINTERFACE         ` §џ       A    temporary flag to test old and new NC ADS touch probe interface    LatchID         ` §џ              fbOnTrigger                 R_TRIG ` §џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           E         ІИИY      џџџџ           MC_ABORTTRIGGER_V2_00           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              i            §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              LatchID         ` §џ              fbOnTrigger                 R_TRIG ` §џ              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation ` §џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           E         ІИИY      џџџџ           MC_BACKLASHCOMPENSATION           InternalEnable             §џ&            trick for internal FB handling    state            §џ'              GetThisTaskIndex                GETCURTASKINDEX    §џ(           	   CycleTime                         §џ)           task cycle time [s]    fbCalcBacklashCorrection                                    !   _FB_PositionCorrectionTableLookup    §џ*       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedBacklashCorrection                MC_PositionCorrectionLimiter    §џ+       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcBacklashCorrOut                    ST_McOutputs    §џ,              FeedBacklashCorrOut                    ST_McOutputs    §џ-              ReadParameter                MC_ReadParameter    §џ.           	   iBacklash                         §џ/              InternalAcceleration                         §џ0       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalBacklashValue                         §џ1       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ2       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]    stPosCompParameter       w   
								( MinPosition := -1.0E+12, MaxPosition :=1.0E+12, NoOfTableElements :=2, Direction := WorkDirectionNegative )       ЂmТ   -1.0E+12    ЂmB   1.0E+12            WorkDirectionBoth       E_WorkDirection         %   ST_PositionCompensationTableParameter    §џ4              stPosCompTable   	                   #   ST_PositionCompensationTableElement   o   
								( Position := -1.0E+12,	Compensation := 0.0 ),
								( Position := +1.0E+12,	Compensation := 0.0 )                 ЂmТ   -1.0E+12            0.0              ЂmB   1.0E+12            0.0    §џ7                 Enable            §џ       *    switch to activate backlash compensation    Backlash    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ       ~    signed backlash value [mm] (when using default value the internal nc backlash value will be read by ADS and used in this FB)    CompensationInPositiveDirection            §џ       @    compensation is just working in the selected working direction    Ramp                        §џ           velocity limit for feeded backlash compensation (constant velocity and linear position sub profile for backlash compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_BacklashCompensationOptions   §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ               ErrorID           §џ!              CurrentBacklash                        §џ"       $    current actual backlash value [mm]    Limiting            §џ#       >    function block is currently limiting the Backlash Correction       Axis                Axis_Ref  §џ                   ІИИY     џџџџ           MC_EXTSETPOINTGENDISABLE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ                 Done            §џ	              Busy            §џ
              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_EXTSETPOINTGENENABLE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ADSbusy             §џ              sExtSetPointGen                _ST_TcNC_SetPos    §џ           
   fbADSwrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ              Position                        §џ              PositionType               E_PositionType   §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_EXTSETPOINTGENFEED           GetTaskIndex                GETCURTASKINDEX    §џ                 Position                        §џ              Velocity                        §џ              Acceleration                        §џ           	   Direction           §џ	                 MC_ExtSetPointGenFeed                                Axis                AXIS_REF  §џ                   ІИИY      џџџџ        	   MC_GEARIN           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           
   fbAdsWrite                          ADSWRITE    §џ              sCouple                      _ST_TcNC_CoupleSlave    §џ               fbOptGearInDyn                MC_GearInDyn    §џ!              fbOnTrigger                 R_TRIG ` §џ%              TimerStateFeedback                    TON ` §џ&                 Execute            §џ           B    RatioNumerator          №?   1      №?   §џ
       %    changed from INT (PLCopen) to LREAL    RatioDenominator          §џ           	MasterValueSource :	MC_SOURCE;    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_GearInOptions   §џ           V       InGear            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF  §џ           B    Slave                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_GEARINDYN           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ!           	   iSubState            §џ"           
   fbAdsWrite                          ADSWRITE    §џ#           	   fbAdsRead                          ADSREAD    §џ$              sCouple                      _ST_TcNC_CoupleSlave    §џ%              v_max                         §џ&              pa_limit                         §џ'           	   WasInGear             §џ(              iAcceleration                      ` §џ,              TimerStateFeedback                    TON ` §џ-                 Enable            §џ           	   GearRatio          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       
    not used    Jerk                        §џ       
    not used 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_GearInDynOptions   §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Master                AXIS_REF  §џ
              Slave                AXIS_REF  §џ                   ІИИY      џџџџ           MC_GEARINMULTIMASTER           InGear2             §џ%       +    new internal feedback flag 2015-10-19 FAp    ADSbusy             §џ&              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ'           
   fbAdsWrite                          ADSWRITE    §џ(              sCouple                           _ST_TcNC_CoupleSlaveMultiMaster    §џ)           	   sCoupleV2                                  _ST_TcNC_CoupleSlaveMultiMaster2    §џ*              LastExecutionResult                  _ST_FunctionBlockResults    §џ+           	   IsCoupled             §џ,              TimerStateFeedback                    TON ` §џ0              iAdvancedSlaveDynamics          ` §џ1              iAcceleration                      ` §џ2              iDeceleration                      ` §џ3           just used in version 2 mode    iJerk                      ` §џ4           just used in version 2 mode 	   WasInGear          ` §џ5              ParameterChanged          ` §џ6              i         ` §џ7       %    runtime optimization 2015-10-19 FAp 
   InGear2Cnt         ` §џ8       %    runtime optimization 2015-10-19 FAp    LastNcCycleCounter         ` §џ9       %    runtime optimization 2015-10-19 FAp 
      Enable            §џ           
   GearRatio1          №?   1.0      №?   §џ           
   GearRatio2          №?   1.0      №?   §џ           
   GearRatio3          №?   1.0      №?   §џ           
   GearRatio4          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics)    Jerk                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics) 
   BufferMode               MC_BufferMode   §џ           E    Options                ST_GearInMultiMasterOptions   §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ               Error            §џ!              ErrorID           §џ"                 Master1                AXIS_REF  §џ
              Master2                AXIS_REF  §џ              Master3                AXIS_REF  §џ              Master4                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   ІИИY      џџџџ        
   MC_GEAROUT           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           
   fbAdsWrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ           B    Options               ST_GearOutOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Slave                AXIS_REF  §џ	           B         ІИИY      џџџџ           MC_HALT           LastExecutionResult                  _ST_FunctionBlockResults    §џ$              ADSbusy             §џ%              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ&              CmdNo            §џ'                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ            B    ErrorID           §џ!           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_HOME           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ            	   iSubState            §џ!              fbAdsWriteCmd                          ADSWRITE    §џ"              fbAdsWriteRefPos                          ADSWRITE    §џ#              fbAdsReadRefPos                          ADSREAD    §џ$              ReferenceFlagValue            §џ%              fbSetPosition                MC_SetPosition    §џ&              NcHomePosition                         §џ'           	   fbTrigger                 R_TRIG ` §џ+           	   fbTimeOut                    TON ` §џ,                 Execute            §џ           B    Position    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ           
   HomingMode               MC_HomingMode   §џ           V 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_HomingOptions   §џ           V    bCalibrationCam            §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY     џџџџ           MC_JOG           state            §џ              LastExecutionResult                  _ST_FunctionBlockResults    §џ           
   StateDWord             §џ              ExecuteMoveVelocity          ` §џ               MoveVelocity                MC_MoveVelocity ` §џ!              MoveVelocityOut                    ST_McOutputs ` §џ"           	   Direction               MC_Direction ` §џ#              ExecuteHalt          ` §џ%              Halt                              MC_Halt ` §џ&              HaltOut                    ST_McOutputs ` §џ'              ExecuteMoveAbsolute          ` §џ)              MoveAbsolute                MC_MoveAbsolute ` §џ*              MoveAbsoluteOut                    ST_McOutputs ` §џ+              ExecuteMoveRelative          ` §џ-              MoveRelative                MC_MoveRelative ` §џ.              MoveRelativeOut                    ST_McOutputs ` §џ/              JogMove        2                                                        _FB_MoveUniversalGeneric ` §џ1              LastJogMoveResult                  _ST_FunctionBlockResults ` §џ2              ExecuteJogMove          ` §џ3           	   StartType               _E_TCNC_StartPosType ` §џ4           
   JogMoveOut                    ST_McOutputs ` §џ5              JogEnd          ` §џ7              TargetPosition                      ` §џ8              modulo                      ` §џ9              
   JogForward            §џ              JogBackwards            §џ              Mode            	   E_JogMode   §џ	              Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ          	BufferMode		:	MC_BufferMode;      Done            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_MOVEABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ           B    Position                        §џ	           B    Velocity                        §џ
           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_MOVEADDITIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ%              ADSbusy             §џ&              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ'              CmdNo            §џ(                 Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_MOVECONTINUOUSABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    §џ+              ADSbusy             §џ,              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ-              CmdNo            §џ.           	      Execute            §џ           B    Position                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                  InEndVelocity            §џ#           B    Busy            §џ$           E    Active            §џ%           E    CommandAborted            §џ&           E    Error            §џ'           B    ErrorID           §џ(           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_MOVECONTINUOUSRELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ*              ADSbusy             §џ+              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ,              CmdNo            §џ-           	      Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                 InEndVelocity            §џ"           B    Busy            §џ#           E    Active            §џ$           E    CommandAborted            §џ%           E    Error            §џ&           B    ErrorID           §џ'           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_MOVEMODULO           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ          	StartType: UDINT;	   StartType               _E_TcNC_StartPosType    §џ       #    20110511 KSt type changed for TC3    CmdNo            §џ              TriggerExecute                 R_TRIG ` §џ#           	      Execute            §џ              Position                        §џ              Velocity                        §џ	              Acceleration                        §џ
              Deceleration                        §џ              Jerk                        §џ           	   Direction               MC_Direction   §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                 Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_MOVERELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ	           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_MOVESUPERIMPOSED     
      LastExecutionResult                  _ST_FunctionBlockResults    §џ1              ADSbusy             §џ2              CompensationStarted             §џ3              AxisHasJobAtStartOfCompensation             §џ4       ,    HasJob flag when starting the compensation !   AxisIsMovingAtStartOfCompensation             §џ5       ,    Moving flag when starting the compensation    iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ6              fbAdsReadWrite                          
   ADSRDWRTEX    §џ7              sNcCompensation                      _ST_TcNC_Compensation2    §џ8           	   fbTrigger                 R_TRIG ` §џ<           	   fbTimeOut                    TON ` §џ=           
      Execute            §џ           B    Mode               E_SuperpositionMode   §џ           V    Distance                        §џ           B    VelocityDiff                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E    VelocityProcess                        §џ           V    Length                        §џ           V    Options               ST_SuperpositionOptions   §џ           V       Done            §џ!           B    Busy            §џ"           E    Active            §џ#           E    CommandAborted            §џ$           E    Error            §џ%           B    ErrorID           §џ&           E    Warning            §џ(           V 	   WarningId           §џ)           V    ActualVelocityDiff                        §џ*           V    ActualDistance                        §џ+           V    ActualLength                        §џ,           V    ActualAcceleration                        §џ-           V    ActualDeceleration                        §џ.           V       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_MOVEVELOCITY           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ           B    Velocity                        §џ	           E    Acceleration                        §џ
           E    Deceleration                        §џ           E    Jerk                        §џ           E 	   Direction           MC_Positive_Direction       MC_Direction   §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V    
   InVelocity            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_OVERRIDEFILTER           bFirstCycle            §џ              bThresholdActive            §џ              InternalOverrideValueRaw            §џ              LastOverrideValueRaw    џџ      §џ              OverrideRange            §џ              fbTimer                    TON ` §џ                 OverrideValueRaw           §џ           parameter    LowerOverrideThreshold           §џ           0...32767 digits    UpperOverrideThreshold    џ     §џ           0...32767 digits    OverrideSteps    Ш      §џ           200 steps => 0.5 percent    OverrideRecoveryTime          §џ	           150 ms       OverrideValueFiltered           §џ           0...1000000 counts    OverridePercentFiltered                        §џ           0...100 %    Error            §џ              ErrorID           §џ                       ІИИY      џџџџ           MC_POSITIONCORRECTIONLIMITER           GetThisTaskIndex                GETCURTASKINDEX    §џ(           	   CycleTime                         §џ)              MaxDeltaVelocity                         §џ*              MaxDeltaPosition                         §џ+              DeltaCorrection                         §џ,              InitialDeltaCorrection                         §џ-              EndOfEnablePhase             §џ.              iCorrectionMode               E_AxisPositionCorrectionMode    §џ/              state            §џ0              NumberOfCycles            §џ1              DeltaCorrectionPerCycle                         §џ2              LastPositionCorrectionValue                         §џ3                 Enable            §џ              PositionCorrectionValue                        §џ              CorrectionMode               E_AxisPositionCorrectionMode   §џ              Acceleration                        §џ              CorrectionLength                        §џ       8    optional length - comparable to 'superposition length'       Busy            §џ"              Error            §џ#              ErrorID           §џ$              Limiting            §џ%       >    function block is currently limiting the Position Correction       Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_POWER           EnableTimeout                    TON ` §џ              EnableOffOnDelay                   TP ` §џ          	iOverride: DINT;	   iOverride         ` §џ        $    20110511 KSt type adaption for TC3       Enable            §џ           B    Enable_Positive            §џ           E    Enable_Negative            §џ           E    Override          Y@   100.0      Y@   §џ       )    in percent - Beckhoff proprietary input 
   BufferMode               MC_BufferMode   §џ           V       Status            §џ           B    Busy            §џ           V    Active            §џ           V    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ
           B         ІИИY      џџџџ           MC_POWERSTEPPER     $      fbPower                            MC_Power    §џ           	   ErrorCode            §џ              fbWriteErrCode                          ADSWRITE    §џ           	   nRefState            §џ              fbWriteNonRef                          ADSWRITE    §џ              fbReadParams                          ADSREAD    §џ              fbWriteInstOvr                          ADSWRITE    §џ              bAdsInitDone             §џ           	   bOverTemp             §џ           
   rtOverTemp                 R_TRIG    §џ               bUnderVoltage             §џ!              rtUnderVoltage                 R_TRIG    §џ"           
   bOpenLoopA             §џ#              rtOpenLoopA                 R_TRIG    §џ$           
   bOpenLoopB             §џ%              rtOpenLoopB                 R_TRIG    §џ&              bOverCurrentA             §џ'              rtOverCurrentA                 R_TRIG    §џ(              bOverCurrentB             §џ)              rtOverCurrentB                 R_TRIG    §џ*              rtStallError                 R_TRIG    §џ+           	   bOldState             §џ,              bLagFilterInit             §џ.              tonLagFilter                    TON    §џ/              tonNoLagFilter                    TON    §џ0              wState2            §џ2              nAngle            §џ3           	   nOldAngle            §џ4           	   AngleDiff            §џ5              bInErrorState             §џ6           	   nParamIdx            §џ8              bParamEnabled             §џ9           	   fLagLimit                         §џ:           
   fLagFilter                         §џ;              nTries            §џ<              tTimeOut                    TON    §џ=                 Enable            §џ              Enable_Positive            §џ              Enable_Negative            §џ              Override          Y@   100.0      Y@   §џ	           in percent    DestallParams                    ST_PowerStepperStruct   §џ
           	   KL_Status           §џ           
   KL_Status2           §џ                 Status            §џ              Error            §џ              ErrorID           §џ              Stalled            §џ           
   StallError            §џ                 Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_READACTUALPOSITION               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Position                        §џ           B       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READACTUALVELOCITY               Enable            §џ           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    ActualVelocity                        §џ           B       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READAPPLICATIONREQUEST           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Request            §џ           application request bit [0/1]    RequestType           §џ           application request TYPE/ID       ApplicationRequest                    ST_NcApplicationRequest  §џ              Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_READAXISCOMPONENTS           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ                 AxisComponents                  ST_AxisComponents  §џ              Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_READAXISERROR               Enable            §џ
           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B    AxisErrorID           §џ           B       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              lrValue                      ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode   §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value            §џ           B       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READDRIVEADDRESS           state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              TriggerExecute                 R_TRIG    §џ           	   fbAdsRead                          ADSREAD    §џ           
   readBuffer   	  ?                        §џ       H    2013-04-03 KSt - new data structure - size changed from 10 to 64 bytes    i         ` §џ              pDword               ` §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ              DriveAddress                          ST_DriveAddress   §џ                 Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              bValue          ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode   §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value                        §џ           B       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READPARAMETERSET           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ              SizeofPayloadData            §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              	   Parameter         E                                                                           ST_AxisParameterSet  §џ              Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_READSTATUS               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E 	   ErrorStop            §џ           B    Disabled            §џ           B    Stopping            §џ           B 
   StandStill            §џ           B    DiscreteMotion            §џ           B    ContinuousMotion            §џ           B    SynchronizedMotion            §џ           E    Homing            §џ           E    ConstantVelocity            §џ           V    Accelerating            §џ           V    Decelerating            §џ           V    Status        1                                                       ST_AxisStatus   §џ           V       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_READSTOPINFO           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              stStopInfoRequest                _ST_TcNC_StopInfoRequest    §џ              stStopInfoResponse                _ST_TcNC_StopInfoResponse    §џ              fbAdsReadWrite                            ADSRDWRT    §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    StopDistance                        §џ       $    distance required to stop the axis    StopTime                        §џ            time required to stop the axis       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_RESET           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              LastExecutionResult                  _ST_FunctionBlockResults    §џ           
   fbAdsWrite                                _TcMC_ADSWRITE ` §џ           2010-05-31 KSt    fbOnTrigger                 R_TRIG ` §џ                 Execute            §џ           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_SETACCEPTBLOCKEDDRIVESIGNAL               Enable            §џ                 MC_SetAcceptBlockedDriveSignal                                Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_SETENCODERSCALINGFACTOR           ADSbusy             §џ              stSetEncoderSaclingFactor                  _ST_TcNC_SetEncoderSaclingFactor    §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ!           
   fbAdsWrite                          ADSWRITE    §џ"              fbOnTrigger                 R_TRIG ` §џ&                 Execute            §џ	           B    ScalingFactor                        §џ
           B    Mode               E_SetScalingFactorMode   §џ           E    Options                ST_SetEncoderScalingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_SETOVERRIDE               Enable            §џ           B 	   VelFactor          №?   1.0      №?   §џ           1.0 = 100% 	   AccFactor          №?   1.0      №?   §џ           1.0 = 100% 
   JerkFactor          №?   1.0      №?   §џ           1.0 = 100%       Enabled            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ                   ІИИY      џџџџ           MC_SETPOSITION           ADSbusy             §џ)              stSetPos                   _ST_TcNC_SetPosOnTheFly    §џ*              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ+           
   fbAdsWrite                          ADSWRITE    §џ,              fbOnTrigger                 R_TRIG ` §џ0                 Execute            §џ           B    Position                        §џ           B    Mode            §џ           E    Options                 ST_SetPositionOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_STOP     
      LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ               MoveGeneric        2                                                        _FB_MoveUniversalGeneric    §џ!              ReleaseLock                          ADSWRITE    §џ"              CmdNo            §џ#              AxisMotionCommandsLocked             §џ$              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ%           
   NoJobTimer                    TON    §џ&              fbOnTrigger                 R_TRIG ` §џ*              CounterMotionCommandsLocked         ` §џ+                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ        !   MC_TABLEBASEDPOSITIONCOMPENSATION           InternalEnable             §џ#            trick for internal FB handling    state            §џ$              GetThisTaskIndex                GETCURTASKINDEX    §џ%           	   CycleTime                         §џ&           task cycle time [s]    fbCalcPositionCorrection                                    !   _FB_PositionCorrectionTableLookup    §џ'       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedPositionCorrection                                    MC_PositionCorrectionLimiter    §џ(       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcPosCorrOut                    ST_McOutputs    §џ)              FeedPosCorrOut                    ST_McOutputs    §џ*              InternalAcceleration                         §џ+       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalCorrectionValue                         §џ,       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ-       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        §џ       R    pointer to equidistant table with strictly monotonous increasing position values 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   §џ       1    position compensation table parameter structure    Ramp                        §џ           velocity limit for feeded position compensation (constant velocity and linear position sub profile for position compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_PositionCompensationOptions   §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              CurrentCorrection                        §џ       /    current actual position correction value [mm]    Limiting            §џ        >    function block is currently limiting the Position Correction       Axis                Axis_Ref  §џ                   ІИИY      џџџџ           MC_TOUCHPROBE           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              TouchProbeValid   	                         §џ            valid state of probes 1..4    TouchProbeActive   	                         §џ!       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ"       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ#       +    last recorded modulo value of probes 1..4    TouchProbeInactiveCounter   	                         §џ$       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    OLDADSINTERFACE         ` §џ(       A    temporary flag to test old and new NC ADS touch probe interface 
   fbADSwrite                          ADSWRITE ` §џ+              fbAdsReadValid                          ADSREAD ` §џ,              fbAdsReadValue                          ADSREAD ` §џ-              fbAdsReadState                          ADSREAD ` §џ.              fbAdsReadModulo                          ADSREAD ` §џ/              TimerAdsReadState                    TON ` §џ0              RtrigPlcEvent                 R_TRIG ` §џ1              FtrigPlcEvent                 F_TRIG ` §џ2              fbOnTrigger                 R_TRIG ` §џ3              LatchID         ` §џ4              Restart          ` §џ5       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ6       *    probe value is inside the defined window    ModuloFactor                      ` §џ7       &    axis' modulo factor read from the NC    InitDone          ` §џ8       %    initialization on start-up finished    IndexOffset         ` §џ9              i         ` §џ:                 Execute            §џ           B 
   WindowOnly            §џ           E    FirstPosition                        §џ           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           B         ІИИY      џџџџ           MC_TOUCHPROBE_V2_00            ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ExternalLatchValid             §џ              TouchProbeValid   	                         §џ           valid state of probes 1..4    TouchProbeActive   	                         §џ       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ       +    last recorded modulo value of probes 1..4    TouchProbeCounter   	                         §џ       ,    last recorded value counter of probes 1..4    TouchProbeInactiveCounter   	                         §џ       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    stTouchProbeActivation                   _ST_TcNc_TouchProbeActivation    §џ               stTouchProbeStatusRequest                 _ST_TcNc_TouchProbeStatusRequest    §џ!              stTouchProbeStatusResponse                      !   _ST_TcNc_TouchProbeStatusResponse    §џ"              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation    §џ#              LastTouchProbeValue   	                                   ` §џ'       $    last recorded value of probes 1..4    LastTouchProbeCounter   	                      ` §џ(       ,    last recorded value counter of probes 1..4 
   fbADSwrite                          ADSWRITE ` §џ)              fbAdsReadValid                          ADSREAD ` §џ*              fbAdsReadValue                          ADSREAD ` §џ+              fbAdsReadState                          ADSREAD ` §џ,              fbAdsReadModulo                          ADSREAD ` §џ-              fbAdsReadLatchStatus                          
   ADSRDWRTEX ` §џ.              TimerAdsReadState                    TON ` §џ/              RtrigPlcEvent                 R_TRIG ` §џ0              FtrigPlcEvent                 F_TRIG ` §џ1              fbOnTrigger                 R_TRIG ` §џ2              Restart          ` §џ3       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ4       *    probe value is inside the defined window    ModuloFactor                      ` §џ5       &    axis' modulo factor read from the NC    InitDone          ` §џ6       %    initialization on start-up finished    IndexOffset         ` §џ7              iTriggerInput                      TRIGGER_REF ` §џ8           B    i         ` §џ9                 Execute            §џ           B 
   WindowOnly            §џ	           E    FirstPosition                        §џ
           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B    RecordedData                  MC_TouchProbeRecordedData   §џ           V       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           B         ІИИY      џџџџ           MC_WRITEBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              lrValue                      ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value            §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ           MC_WRITEPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              bValue          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value                        §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         ІИИY      џџџџ    v   C:\TwinCAT\Plc\Upload\SysLibVisu.lib @                                                                                    |   C:\TwinCAT\Plc\Upload\SysLibTargetVisu.lib @                                                                                1       
   BEGINPAINT               stName    Q       Q    §џ              dwFlags           §џ              nBmpId           §џ           	   dwBgColor           §џ              
   BeginPaint                                      R8VH     џџџџ           CALCROTATION            	   pnXCorner                 §џ           	   pnYCorner                 §џ           	   pmXCorner                 §џ           	   pmYCorner                 §џ              nXCenter           §џ              nYCenter           §џ              nAngle           §џ	                 CalcRotation                                      R8VH     џџџџ           CHANGEPASSWORD               pCurrentUserLevel                 §џ              nCurrentNumOfUsers           §џ              pCurrentUsers    	          Q       Q                 §џ              pCurrentPasswords    	          Q       Q                 §џ              pCurrentLevels    	                              §џ                 ChangePassword                                      R8VH     џџџџ           CHANGEUSERLEVEL               pCurrentUserLevel                 §џ              nCurrentNumOfUsers           §џ              pCurrentUsers    	          Q       Q                 §џ              pCurrentPasswords    	          Q       Q                 §џ              pCurrentLevels    	                              §џ                 ChangeUserLevel                                      R8VH     џџџџ           CREATEBITMAP               nSize           §џ           	   pdwBitmap                 §џ                 CreateBitmap                                     R8VH     џџџџ           CREATEUSERDEFINEDCONTROL               stIdentification             §џ              stParams             §џ              iType           §џ                 CreateUserdefinedControl                                     R8VH     џџџџ           DELETEBITMAP               nId           §џ                 DeleteBitmap                                      R8VH     џџџџ        
   DRAWBITMAP               nId           §џ              nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              nIso           §џ              dwColorTransparent           §џ	              bVisible            §џ
              
   DrawBitmap                                      R8VH     џџџџ           DRAWBITMAPBYSTRING               stBitmap    Q       Q    §џ              nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              nIso           §џ              dwColorTransparent           §џ	              bVisible            §џ
                 DrawBitmapByString                                      R8VH     џџџџ        
   DRAWBUTTON         	      nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              dwDrawFlags           §џ           
   bIsClicked            §џ	              dwFlags           §џ
              bVisible            §џ              
   DrawButton                                      R8VH     џџџџ        	   DRAWEDITC               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              stExpression    Q       Q    §џ           	   nIsString           §џ	              nType           §џ
              stMin    Q       Q    §џ              stMax    Q       Q    §џ           	   stComment    Q       Q    §џ              	   DrawEditC                                      R8VH     џџџџ           DRAWPIE               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              nAngleStart           §џ           	   nAngleEnd           §џ              nAngle           §џ	           
   dwPieFlags           §џ
              stText             §џ              dwDrawFlags           §џ              bVisible            §џ                 DrawPie                                      R8VH     џџџџ           DRAWPOLYGON               nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              stText             §џ              dwDrawFlags           §џ              nType           §џ              bVisible            §џ	                 DrawPolygon                                      R8VH     џџџџ           DRAWRECT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              dwDrawFlags           §џ              nType           §џ	              bVisible            §џ
                 DrawRect                                      R8VH     џџџџ           DRAWTEXT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              dwDrawFlags           §џ              bVisible            §џ	                 DrawText                                      R8VH     џџџџ           ENDPAINT               stName    Q       Q    §џ              dwFlags           §џ                 EndPaint                                      R8VH     џџџџ           ENUMTOSTRING               nId           §џ              pstEnum     Q       Q         §џ              nEnum           §џ                 EnumToString                                      R8VH     џџџџ           EXECUTECOMMAND            	   stCommand             §џ              nType           §џ                 ExecuteCommand                                     R8VH     џџџџ           EXECUTEUSERDEFINEDCONTROLCALL               nIndex           §џ              stCallIdentification             §џ              stParam             §џ              pstReturnValue                   §џ       ,    may be null if no return value is expected    nReturnBufferSize           §џ       I    the maximal number of characters that can be returned in pstReturnValue    pbValueReturned                  §џ       ,    may be null if no return value is expected       ExecuteUserdefinedControlCall                                      R8VH     џџџџ           GETSURROUNDRECT            	   pnXCorner                 §џ           	   pnYCorner                 §џ           	   pmXCorner                 §џ           	   pmYCorner                 §џ              nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ	                 GetSurroundRect                                      R8VH     џџџџ           GETTEXT               stResult             §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              dwID           §џ                 GetText                                      R8VH     џџџџ           GETTEXTBYSTRINGID               stResult             §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              stID    Q       Q    §џ                 GetTextByStringId                                      R8VH     џџџџ           GETUNICODETEXT               pResult    	  '                           §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              dwID           §џ                 GetUnicodeText                                      R8VH     џџџџ           GETUNICODETEXTBYSTRINGID               pResult    	  '                           §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              stID    Q       Q    §џ                 GetUnicodeTextByStringId                                      R8VH     џџџџ           ISCLICKEDEDITC               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              bUp            §џ              bToggle            §џ              bVisible            §џ	                 IsClickedEditC                                      R8VH     џџџџ           ISCLICKEDPOLYGON               nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              bUp            §џ              bToggle            §џ              nType           §џ              bVisible            §џ	                 IsClickedPolygon                                     R8VH     џџџџ           ISCLICKEDRECT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              bUp            §џ              bToggle            §џ              nType           §џ	              bVisible            §џ
                 IsClickedRect                                     R8VH     џџџџ           ISCLOSEDEDITC               stExpression    Q       Q    §џ                 IsClosedEditC                                      R8VH     џџџџ           ISKEYPRESSED               nKeyCode           §џ              bUp            §џ              nInfo           §џ                 IsKeyPressed                                      R8VH     џџџџ           ISMOVEDINPOLYGON               nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              pnX                 §џ              pnY                 §џ              nType           §џ              bVisible            §џ	                 IsMovedInPolygon                                     R8VH     џџџџ           ISMOVEDINRECT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              pnX                 §џ              pnY                 §џ              nType           §џ	              bVisible            §џ
                 IsMovedInRect                                     R8VH     џџџџ           MOVEPOLYGON         	      nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              nXCenter           §џ              nYCenter           §џ              nScale           §џ              nAngle           §џ	              nXOffset           §џ
              nYOffset           §џ                 MovePolygon                                      R8VH     џџџџ           POPTRANSFORMATION               mXmother           §џ              mYmother           §џ              nXChild           §џ              nYChild           §џ              mXChild           §џ              mYChild           §џ              bIso            §џ	           
   bClipFrame            §џ
                 PopTransformation                                      R8VH     џџџџ           PRINTF               stFormat    Q       Q    §џ              dwValue                 §џ              nType           §џ                 Printf                                       R8VH     џџџџ           PRINTFINPUT               stFormat    Q       Q    §џ              dwValue                 §џ              nType           §џ                 PrintfInput                                       R8VH     џџџџ           PUSHTRANSFORMATION               mXmother           §џ              mYmother           §џ              nXChild           §џ              nYChild           §џ              mXChild           §џ              mYChild           §џ              bIso            §џ	           
   bClipFrame            §џ
                 PushTransformation                                      R8VH     џџџџ           REFRESHUSERDEFINEDCONTROL               nIndex           §џ              nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              bVisible            §џ                 RefreshUserdefinedControl                                      R8VH     џџџџ           REGISTERVARIABLE               stName    Q       Q    §џ              stValue    Q       Q    §џ              stAdr    Q       Q    §џ              nType           §џ                 RegisterVariable                                      R8VH     џџџџ           RETURNENTEREDVALUE               stExpression    Q       Q    §џ                 ReturnEnteredValue                                       R8VH     џџџџ           RGBCOLOR               byRed           §џ              byGreen           §џ              byBlue           §џ                 RGBColor                                     R8VH     џџџџ        
   SENDBITMAP               stFile    Q       Q    §џ              
   SendBitmap                                     R8VH     џџџџ           SENDENUM               stDescription    Q       Q    §џ                 SendEnum                                     R8VH     џџџџ           SETFILL               dwFillFlags           §џ              dwFillColor           §џ                 SetFill                                      R8VH     џџџџ           SETFONT            
   stFontName    Q       Q    §џ           	   nFontSize           §џ              dwFontFlags           §џ              dwFontColor           §џ                 SetFont                                      R8VH     џџџџ           SETLINE               nBorderWidth           §џ              dwBorderFlags           §џ              dwBorderColor           §џ                 SetLine                                      R8VH     џџџџ           STOPVISU               stName    Q       Q    §џ                 StopVisu                                      R8VH     џџџџ           STRINGTOENUM               nId           §џ              nEnum                 §џ              stEnum    Q       Q    §џ                 StringToEnum                                      R8VH     џџџџ           TRANSFORMPOINT               px                 §џ       r    This parameter points to the x coordinate that shall be transformed. This value will be changed during the call!    py                 §џ       r    This parameter points to the y coordinate that shall be transformed. This value will be changed during the call! 
   bTransform            §џ       Ѕ   This parameter decides the transformation direction, TRUE will transform the point into the currently
											active transformation, FALSE will transform a point outof the actual transformation. This means
											TRUE will transform a client point to a screen coordinate, FALSE a screen point to a client point where a
											client point is a point in the local coordinate system of the active reference.    dwFlags           §џ
       )    This parameter is reservered. Must be 0       TransformPoint                                      R8VH     џџџџ           VERSION2326               Version           §џ                 Version2326                                      R8VH     џџџџ    s   C:\TwinCAT\PLC\LIB\TcSystemCX.lib @                                                                                          F_CXNAVISWITCH            
   iCX1100_IN           §џ                 F_CXNaviSwitch               E_CX1100_NaviSwitch                             іПЯW      џџџџ           F_CXNAVISWITCHUSB            
   iCX2100_IN           §џ                 F_CXNaviSwitchUSB               E_CX2100_NaviSwitch                             іПЯW      џџџџ           F_CXSUBTIMESTAMP           nDeltaTimeStampLoDW            §џ       +    2*32 bit delta time stamp for low DWORD			   nDeltaTimeStampHiDW            §џ       ,    2*32 bit delta time stamp for high DWORD			   fSCALE_LOWDW    Й?   0.1Й?   §џ       .    time stamp in [100*ns]: 1=0.1 us (1.0 / 10.0)   fSCALE_HIGHDW    ЙA   429496729.6ЙA   §џ           4294967296(2^32) / 10				      nTimeStampLoDW_A           §џ       &    2*32 bit time stamp A: low DWORD					   nTimeStampHiDW_A           §џ       &    2*32 bit time stamp A: high DWORD				   nTimeStampLoDW_B           §џ       &    2*32 bit time stamp B: low DWORD					   nTimeStampHiDW_B           §џ       &    2*32 bit time stamp B: high DWORD				      F_CXSubTimeStamp                                     іПЯW      џџџџ           F_GETVERSIONTCSYSTEMCX               nVersionElement           §џ                 F_GetVersionTcSystemCX                                     іПЯW      џџџџ           FB_CXGETDEVICEIDENTIFICATION        	   iDataSize       @  §џ           
   byTagStart    <      §џ           '<'    byTagEnd    >      §џ           '>' 
   byTagSlash    /      §џ           '/' 	   fbAdsRead                          ADSREAD    §џ              bExecutePrev             §џ              iState            §џ              iData   	                         §џ           
   strActPath                §џ              iLoopEndIdx            §џ              iStructSize            §џ              strHardwareCPU                §џ              strTags   	  	        )       )             §џ           	   iTagsSize   	  	                        §џ              iCurrTag   	  (                        §џ              iCurrTagData   	  P                        §џ           	   iPathSize            §џ               iTagIdx            §џ"              iCurrTagIdx            §џ#              iDataIdx            §џ$              iCurrTagDataIdx            §џ%              k            §џ&              iMinCurrData            §џ'           	   iFirstIdx            §џ(              iLastIdx            §џ)           	   bTagStart             §џ+              bTagEnd             §џ,           	   bTagSlash             §џ-              bTagOpen             §џ.                 bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrorID           §џ	           
   stDevIdent                              ST_CxDeviceIdentification   §џ
                       іПЯW     џџџџ           FB_CXGETDEVICEIDENTIFICATIONEX        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           Ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_CxDeviceIdentificationEx   §џ       5    structure with available device identification data             іПЯW     џџџџ           FB_CXGETTEXTDISPLAYUSB           eModeAct               E_CX2100_DisplayModesRd ` §џ              nState         ` §џ              bStarted          ` §џ              fbOnTrigger                 R_TRIG ` §џ           	   fbADSRead                        	   ADSREADEX ` §џ              nIndexOffset         ` §џ           	   nReadMode         ` §џ           
   nReadState         ` §џ              nReadStateMax         ` §џ              READ_MODE_IDLE        ` §џ!              READ_MODE_BYTE        ` §џ"              READ_MODE_STRING        ` §џ#           CX2100   IOADS_IOF_CX2100_BACKLIGHT_INT       ` §џ&           backlight 0..255    IOADS_IOF_CX2100_LINE1      ` §џ'           read/write line 1 STRING(80)    IOADS_IOF_CX2100_LINE2      ` §џ(           read/write line 2 STRING(80)    IOADS_IOF_CX2100_CURSOR      ` §џ)       !    cursor ... 0 Off; 1 On; 2 Blink    IOADS_IOF_CX2100_CURSOR_XPOS      ` §џ*           cursor position in X 0..15    IOADS_IOF_CX2100_CURSOR_YPOS      ` §џ+           cursor position in Y 0..1    IOADS_IOF_IGRP    ѓ   ` §џ,       '    ADS index group OF the CX2100 mailbox       bExecute            §џ              sNetID            
   T_AmsNetID   §џ              nPort            	   T_AmsPort   §џ              eMode               E_CX2100_DisplayModesRd   §џ           	      bBusy            §џ	              bError            §џ
              nErrorID           §џ              sLine1    Q       Q    §џ              sLine2    Q       Q    §џ              nCursorPosX           §џ              nCursorPosY           §џ              nCursorMode           §џ           
   nBacklight           §џ                       іПЯW      џџџџ           FB_CXPROFILER           iMAX_DATABUFF_SIZE    d   @  §џ              iMAX_AVERAGE_MEASURES    d      §џ              fbRisingEdgeStart                 R_TRIG    §џ              fbRisingEdgeReset                 R_TRIG    §џ              fbFallingEdgeStart                 F_TRIG    §џ              fbGetCPUCounter                 GETCPUCOUNTER    §џ              dwOldCpuCntLo            §џ              dwOldCpuCntHi            §џ              dwOldCpuCntDiff            §џ              dwNewCpuCntLo            §џ              dwNewCpuCntHi            §џ              dwNewCpuCntDiff            §џ              aMeasureData   	  d                        §џ           	   dwTimeSum            §џ              iMaxData           §џ              iIdx            §џ                 bStart            §џ       0   rising edge starts measurement and falling stops   bReset            §џ                 bBusy            §џ              stData                   ST_CX_ProfilerStruct   §џ                       іПЯW     џџџџ           FB_CXSETTEXTDISPLAY           step    d       §џ           
   fbADSWrite                          ADSWRITE    §џ              bStarted             §џ              nIndexOffset            §џ           
   nWriteMode            §џ              fbOnTrigger                 R_TRIG    §џ              temp            §џ              WRITE_MODE_IDLE          §џ              WRITE_MODE_BYTE          §џ              WRITE_MODE_STRING          §џ       	     CX1100    IOADS_IOF_CX1100_WRITE1LINE    џ џџ   §џ              IOADS_IOF_CX1100_WRITE2LINE    џ@џџ   §џ              IOADS_IOF_CX1100_WRITECURSOR    џџџ   §џ               IOADS_IOF_CX1100_FILLRAW    џџџ   §џ!              IOADS_IOF_CX1100_CURSOR_OFF    џџџ   §џ"              IOADS_IOF_CX1100_CURSOR_ON    џџџ   §џ#              IOADS_IOF_CX1100_CURSOR_BOFF    џџџ   §џ$              IOADS_IOF_CX1100_CURSOR_BON    џџџ   §џ%              IOADS_IOF_CX1100_DISPLAY_OFF    џџџ   §џ&              IOADS_IOF_CX1100_DISPLAY_ON    џџџ   §џ'              IOADS_IOF_CX1100_BACKLIGHT_ON    џџџ   §џ(              IOADS_IOF_CX1100_BACKLIGHT_OFF    џџџ   §џ)              IOADS_IOF_CX1100_CLEARDISPLAY    џ џџ   §џ*              IOADS_IOF_CX1100_TERMTYPES     џџ   §џ,                 bExecute            §џ              nDevID           §џ              nMode               E_CX1100_DisplayModes   §џ              stLine               §џ           
   nCursorPos           §џ                 bBusy            §џ
              bErr            §џ              nErrorID           §џ                       іПЯW      џџџџ           FB_CXSETTEXTDISPLAYUSB           eModeAct               E_CX2100_DisplayModesWr ` §џ              nState         ` §џ              bStarted          ` §џ              fbOnTrigger                 R_TRIG ` §џ           
   fbADSWrite                          ADSWRITE ` §џ              nIndexOffset         ` §џ           
   nWriteMode         ` §џ              nCursorMode         ` §џ              nBackLightVal         ` §џ              nWriteState         ` §џ              nWriteStateMax         ` §џ           
   sClearLine    Q       Q  ` §џ              WRITE_MODE_IDLE        ` §џ"              WRITE_MODE_BYTE        ` §џ#              WRITE_MODE_STRING        ` §џ$           CX1200   IOADS_IOF_CX2100_BACKLIGHT_INT       ` §џ'           backlight 0..255    IOADS_IOF_CX2100_LINE1      ` §џ(           read/write line 1    IOADS_IOF_CX2100_LINE2      ` §џ)           read/write line 2    IOADS_IOF_CX2100_CURSOR      ` §џ*       !    cursor ... 0 Off; 1 On; 2 Blink    IOADS_IOF_CX2100_CURSOR_XPOS      ` §џ+           cursor position in X    IOADS_IOF_CX2100_CURSOR_YPOS      ` §џ,           cursor position in Y    IOADS_IOF_IGRP    ѓ   ` §џ-       '    ADS index group OF the CX2100 mailbox       bExecute            §џ              sNetID            
   T_AmsNetID   §џ              nPort            	   T_AmsPort   §џ              eMode               E_CX2100_DisplayModesWr   §џ              sLine1    Q       Q    §џ              sLine2    Q       Q    §џ              nCursorPosX           §џ	              nCursorPosY           §џ
                 bBusy            §џ              bError            §џ              nErrorID           §џ                       іПЯW      џџџџ           FB_CXSIMPLEUPS        
   Ii24VState           §џ              IiChargeState           §џ           	   QiControl           §џ           set bit 3 - auto reset    QiDipControl            §џ              iState            §џ       "    0: IDLE, 1: HOLDING, 2: SHUTDOWN 	   HoldTimer                    TON    §џ           
   fbShutdown                       	   ADSWRTCTL    §џ           Windows shutdown    dwDelay            §џ       &    0 immediate shutdown of Windows, [s]    WaitStateTime                    TON    §џ          Wait for state UPS   DischargeTime                    TON    §џ       $   Catch state UPS discharging-restart    bEndOfHolding             §џ          Phase before Shutdown activ   tWaitStateTime    Ф	     §џ               tDischargeTime    Ф	     §џ!                 bDIPDisable            §џ           If TRUE override Dip Switch    iDischargeLevel           §џ       O    Discharge Switch Off Level: 0 = 100%, 9 = 90%, 8 = 80%, ..., 2 = 20%, 1 = 10%    tDelay           §џ       Q    Time to hold during power failure (shutdown after timer ellapses) [0.5s .. 10s]       bPowerFailure            §џ           True if power fault detected    bShutdownActive            §џ	       '    True if shutdown is actively executed 	   bUpsReady            §џ
           True if UPS 24V Out is OK    b24VInOK            §џ           True if UPS 24V In is OK    bHolding            §џ       :    True if power fault detected and tDelay not yet ellapsed    tTimeUntilShutdown           §џ       =    Remaining Time until system shuts down during power failure 	   eUpsState               E_UPS_STATE   §џ       o    UPS-State [UNDEF | CHARGING | CHARGED | DISCHARGE |
													 DISCHARGE_RESTART | OUTPUT_OFF | OVERLOAD]             іПЯW     џџџџ    t   C:\TwinCAT\Plc\Upload\COMlibV2.lib @                                                                                          _RECEIVESTRING     
      RxString                §џ              state            §џ              c            §џ              l            §џ              l2            §џ              pl            §џ              sl            §џ              iTimeout            §џ              Receive                ReceiveByte    §џ              TimeoutTimer                    TOF    §џ                 Prefix    Q       Q    §џ              Suffix    Q       Q    §џ              Timeout           §џ              Reset            §џ              pReceivedString                 §џ       #    Pointer to variable length string    SizeReceivedString           §џ           variable string size       StringReceived            §џ              Busy            §џ              Error            
   ComError_t   §џ           	   RxTimeout            §џ              ErrorCountPrefix           §џ       +    invalid characters received before prefix    ReceivedPrefix    Q       Q    §џ       .    received prefix including invalid characters       RXbuffer                   	   COMbuffer  §џ                   аРH      џџџџ           _SENDSTRING           pos            §џ              Send                SendByte    §џ              c            §џ              ls            §џ              
   SendString               §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ
                   аРH      џџџџ           _STRNCPY           d            §џ              i            §џ	                 pTargetString                 §џ              pSourceString                 §џ              MaxSize           §џ                 _strncpy                                      аРH      џџџџ           ASC           pChar                  §џ                 str    Q       Q    §џ                 ASC                                     аРH      џџџџ           CHR           str1                §џ              pChar                  §џ                 c           §џ                 CHR    Q       Q                              аРH      џџџџ           CLEARCOMBUFFER                       Buffer                   	   COMbuffer  §џ                   аРH      џџџџ           COMRESET     	      TIME_OUT_VALUE    d      §џ              RESETMASK_STANDARD          §џ              RESETMASK_ALTERNATIVE          §џ              Timeout                    TON    §џ              state            §џ              pCTRL                  §џ              pSTATUS                  §џ           	   ResetMask            §џ              TriggerExecute                 R_TRIG    §џ                 Execute            §џ	              pComIn    	  A                            §џ
       .    pointer to any KL6 or COM-Port process image    pComOut    	  A                            §џ       .    pointer to any KL6 or COM-Port process image 	   SizeComIn           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID            
   ComError_t   §џ                       аРH      џџџџ           GET_COMLIB_VERSION               bGet            §џ                 Get_ComLib_Version                                         аРH      џџџџ           KL6CONFIGURATION           TIME_OUT_VALUE    d      §џ              RESETMASK_STANDARD          §џ              RESETMASK_ALTERNATIVE          §џ              state            §џ              TriggerExecute                 R_TRIG    §џ              R32            §џ              R33            §џ              R34            §џ              CheckOK             §џ               RegisterList   	  #                   ComRegisterData_t            §џ!              WriteRegisterList                KL6WriteRegisters    §џ"              Timeout                    TON    §џ#              pCTRL                  §џ$              pSTATUS                  §џ%           	   ResetMask            §џ&                 Execute            §џ              Mode               ComSerialLineMode_t   §џ              Baudrate           §џ       5   	115200, 57600, 38400, 19200, 9600, 4800, 2400, 1200 
   NoDatabits           §џ          	7 or 8    Parity               ComParity_t   §џ       ,   	PARITY_NONE=0, PARITY_EVEN=1, PARITY_ODD=2    Stopbits           §џ          	1 or 2 	   Handshake               ComHandshake_t   §џ	       ;   	HANDSHAKE_NONE=0, HANDSHAKE_RTSCTS=1, HANDSHAKE_XONXOFF=2    ContinousMode            §џ
       ;    don't start transmission before transmit buffer is filled    pComIn    	  A                            §џ       &    for universal register communication    pComOut    	  A                            §џ       &    for universal register communication 	   SizeComIn           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorId            
   ComError_t   §џ                       аРH      џџџџ           KL6READREGISTERS           TIME_OUT_VALUE    d      §џ              REGISTERNUMBERMASK    ?      §џ               REGISTERREADMASK          §џ!              state            §џ$              TriggerExecute                 R_TRIG    §џ%              NumRegisters            §џ&              n            §џ'              Register            §џ(              Value            §џ)              Timeout                    TON    §џ*              pCTRL                  §џ+              pSTATUS                  §џ,              NumRegistersInList            §џ-              i            §џ.              SaveCTRL            §џ/           	      Execute            §џ              FirstRegister           §џ              RegisterCount           §џ              Mode               ComSerialLineMode_t   §џ              pComIn    	  A                            §џ       &    for universal register communication    pComOut    	  A                            §џ       &    for universal register communication 	   SizeComIn           §џ              pRegisterList    	  ?                    ComRegisterData_t                §џ              SizeRegisterList           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorId            
   ComError_t   §џ                       аРH      џџџџ           KL6WRITEREGISTERS           TIME_OUT_VALUE    d      §џ              REGISTERNUMBERMASK    ?      §џ              REGISTERWRITEMASK    Р      §џ              state            §џ"              TriggerExecute                 R_TRIG    §џ#              NumRegisters            §џ$              n            §џ%              Register            §џ&              Value            §џ'              Timeout                    TON    §џ(              pCTRL                  §џ)              pSTATUS                  §џ*              SaveCTRL            §џ+                 Execute            §џ              Mode               ComSerialLineMode_t   §џ              pComIn    	  A                            §џ       &    for universal register communication    pComOut    	  A                            §џ       &    for universal register communication 	   SizeComIn           §џ              pRegisterList    	  ?                    ComRegisterData_t                §џ              SizeRegisterList           §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorId            
   ComError_t   §џ                       аРH      џџџџ           RECEIVEBYTE                   ByteReceived            §џ              ReceivedByte           §џ              Error            
   ComError_t   §џ                 RxBuffer                   	   COMbuffer  §џ                   аРH      џџџџ           RECEIVEDATA           state            §џ              c            §џ              l            §џ              iTimeout            §џ              Receive                  ReceiveByte    §џ              TimeoutTimer                    TOF    §џ           	   ptrPrefix                  §џ              pData                  §џ              p1                  §џ              p2                  §џ               isEqual             §џ!              i            §џ"              pw            §џ#                 pPrefix                 §џ           	   LenPrefix           §џ              pSuffix                 §џ           	   LenSuffix           §џ              pReceiveData                 §џ              SizeReceiveData           §џ              Timeout           §џ	              Reset            §џ
                 DataReceived            §џ              busy            §џ              Error            
   ComError_t   §џ           	   RxTimeout            §џ              LenReceiveData           §џ                 RXbuffer                   	   COMbuffer  §џ                   аРH      џџџџ           RECEIVESTRING           ReceiveStringStandard                                     _ReceiveString    §џ              ErrorCountPrefix            §џ       +    invalid characters received before prefix    ReceivedPrefix    Q       Q     §џ       .    received prefix including invalid characters       Prefix    Q       Q    §џ              Suffix    Q       Q    §џ              Timeout           §џ              Reset            §џ                 StringReceived            §џ	              Busy            §џ
              Error            
   ComError_t   §џ           	   RxTimeout            §џ                 ReceivedString     Q       Q   §џ              RXbuffer                   	   COMbuffer  §џ                   аРH      џџџџ           RECEIVESTRING255           ReceiveStringStandard                                     _ReceiveString    §џ              ErrorCountPrefix            §џ       +    invalid characters received before prefix    ReceivedPrefix    Q       Q     §џ       .    received prefix including invalid characters       Prefix    Q       Q    §џ              Suffix    Q       Q    §џ              Timeout           §џ              Reset            §џ                 StringReceived            §џ	              Busy            §џ
              Error            
   ComError_t   §џ           	   RxTimeout            §џ                 ReceivedString               §џ              RXbuffer                   	   COMbuffer  §џ                   аРH      џџџџ           SENDBYTE               SendByte           §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TxBuffer                   	   COMbuffer  §џ                   аРH      џџџџ           SENDDATA           pos            §џ              Send                  SendByte    §џ              c            §џ              dp                  §џ              dpw            §џ              	   pSendData                 §џ              Length           §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ                   аРH      џџџџ        
   SENDSTRING           SendStringStandard                      _SendString    §џ              
   SendString    Q       Q    §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ
                   аРH      џџџџ           SENDSTRING255           SendStringStandard                      _SendString    §џ              
   SendString               §џ                 Busy            §џ              Error            
   ComError_t   §џ                 TXbuffer                   	   COMbuffer  §џ
                   аРH      џџџџ           SERIALLINECONTROL           ComPortDebugBuffer                 ComDebugBuffer    §џ"              InvalidDataExchangeMode            §џ#              RegisterMode            §џ$              pCTRL                  §џ%              pSTATUS                  §џ&              RxCount            §џ'              TxCount            §џ(           	   DataIndex            §џ)              DataCountMask            §џ*              DataCountShift            §џ+              ReceiveHandshakeBit            §џ,              TransmitHandshakeBit            §џ-              TransmitBufferSentBit            §џ.              ContinousModeStartBit            §џ/              ReceiveBufferFullBit            §џ0              ResetBit            §џ1              RR            §џ2              RA            §џ3              TR            §џ4              TA            §џ5              IA            §џ6              BUF_F            §џ7              noTAcounter            §џ8              initialized             §џ9              TransmitDataSent             §џ:              i            §џ;                 Mode               ComSerialLineMode_t   §џ              pComIn    	  A                            §џ       A    must meet the maximum size of a hardware related data structure    pComOut    	  A                            §џ       A    must meet the maximum size of a hardware related data structure 	   SizeComIn           §џ                 Error            §џ              ErrorID            
   ComError_t   §џ                 TxBuffer                   	   COMbuffer  §џ              RxBuffer                   	   COMbuffer  §џ                   аРH      џџџџ    R    @                                                                                #          AUTO     	      Timer1                    TON                   Timer2                    TON                   bAmber                            bAGreen                            bARed                            bABuzzertest                            bABuzzertemp              	           
   bAmberTemp              
           
   bAmberbit1                                             йН`  @    џџџџ           BLINK           timer1                    TON    1               timer2                    TON    1               _ImpVar_49_4                                             йН`  @    џџџџ           COMMON           F_TRIG_1                 F_TRIG    6               R_TRIG_1                 R_TRIG    6               bAllAutoOutOff             6            
   bManModeOn             6               bManModeOff             6               F_TRIG_2                 F_TRIG    6               EverRunTimer                    TON    6 	              FB_DateTime_1                         FB_DateTime    6 
              sSecond    Q       Q     6               sMinute    Q       Q     6               sHour    Q       Q     6            
   sTIMEtemp2    Q       Q     6            
   sTIMEtemp1    Q       Q     6            
   sTIMETemp3    Q       Q     6               wTodayToHmiFinal    Q       Q     6               wTodayToHmi_Report    Q       Q     6            
   sBagNoRep1    Q       Q     6               sBagNo            6               cartonno            6               sBagNo1             6               sBagNo2             6               sBagNo3             6               sBagNo4             6               sBagNo5             6            	   sDayFDate    Q       Q     6               sMonthFDate    Q       Q     6               sDayMonthDate    Q       Q     6            	   sDateRepo    Q       Q     6                                 йН`  @    џџџџ           CONEALLIGNALARM           ConeMiss            .               TON_1                    TON    .               TON_2                    TON    .               ConeMissErr                RS_Error    .               TON1                    TON    .               bPloyShoeetSensError             . 	                               йН`  @    џџџџ           CONEFEEDCONV     #      bARetUnitRunning                            bConePresentInConv                            tConeFeedConvStopDly                    TON                   step                           TON_1                    TON                   TON_2                    TON                   TON_3                    TON     	              CTU_2                    CTU     
              R_TRIG_2                 R_TRIG                   CTU_2Enable                            TON_4                    TON                   R_TRIG_1                 R_TRIG                   TON_5                    TON                   AllOutputsOn                            bAConveStartsAuto                            R_TRIG_3                 R_TRIG                   TON_6                    TON                   bAUnitBConeCrossingOff                            step2                           testCounter                    CTU                	   testreset                            bConeFeedConvRst                            bStopHmitemp                            step3                           TON_7                    TON                   R_TRIG_4                 R_TRIG                   bAUnitBConeCrossingOff_2                            testCounter_2                    CTU                    i3ConeCountVal             !              CTU_2_UB                    CTU     "              i18ConeCountVal             #              bConveyorStarted              $              bConePresentInConv_1              %              bAAutoRetrivalEnabled              &              bStartConeFeedConvInBypass              '                               йН`  @    џџџџ           CONEFEEDPISTON           R_TRIG_1                 R_TRIG                   CounterTiltRst                            step                           ConeFeedConvFwdDly1                    TON                   CounterTilt23Rst              	              CounterTilt23Rst_R_TRIG                 R_TRIG     
              bAConeFeedFwdStart23                            CTU_1                    CTU                   test                            CounterTilt23Enable                            CounterTilt23Rst_TRIG                 R_TRIG                   bQAConeFeedingPistonOnAuto1                            bIForwardPistonHometemp                            bIReversePistonHometemp                            bITiltingEndtemp                            bITiltingHometemp                            bErrorCheckBit1                            tFwdRSErrCheckDly                    TON                   FwdRevCylHomeSenOk                            FwdRevCylHomeSenErr                            testtemp                            Timer1                    TON                    bAConeFeedCylReady              !              bAConeFeedCylReady1              "              bAConeFeedCylReady2              #              bAConeFeedCylReady3              $              bAConeFeedCylReady4              %                               йН`  @    џџџџ           CONEMISS_ALARM           FeedForward            /               iSensorOnVal            /                                йН`  @    џџџџ           CYLINDER_ALARM        
   RS_Error_1                RS_Error    0            
   RS_Error_2                RS_Error    0            
   RS_Error_3                RS_Error    0            
   RS_Error_4                RS_Error    0            
   RS_Error_5                RS_Error    0            
   RS_Error_6                RS_Error    0            
   RS_Error_7                RS_Error    0 	           
   RS_Error_8                RS_Error    0 
           
   RS_Error_9                RS_Error    0               BlinkTimer1                    TON    0               BlinkTimer2                    TON    0               RS_Error_10                RS_Error    0               bASepYAxisRsErrorChkOut             0               TON_1                    TON    0               bBlinkStart             0               bAErrortemp             0                                йН`  @    џџџџ           DATA_LOG_SAVE     	      R_TRIGStartDataLog                 R_TRIG    '               nstep            '               FB_OpenFile_Datalog                             FB_FileOpen    '               nFB_OpenFile_Datalog_Errid            '               FB_WriteFile_Datalog                           FB_FileWrite    '               nFB_WriteFile_Datalog_ErrId            '               FB_CloseFile_Datalog                      FB_FileClose    '               nFB_CloseFile_Datalog_ErrId            '               hDataLogSrcFile            '                  bStartDataLog            '               sDataLogFileName    Q       Q    '               LogData             '                  bErrorDataLog            ' 
                       йН`  @    џџџџ        	   DATALOG_1     M      FB_FileOpen_Indo                             FB_FileOpen                   FB_FileWrite_Indo                           FB_FileWrite                   FB_FileClose_Indo                      FB_FileClose                   FB_FileDelete_Indo        
                FB_FileDelete                   ST1_ProductionDataValues    Й      Й                   S1_iCyc_Count_DISP             	              S1_iACT_HLD_TIMEDISP             
              stActiveuserCredential                            nPressureMaxvalue                            OperatorName    Q       Q                    nMinimumTopTempLimit_ST1                           nMaximumTopTempLimit_ST1                           nTOPTempMaxvalue                           nMinimumBTMTempLimit_ST1                           nBTMTempMaxvalue                           nMaximumBTMTempLimit_ST1                           Set_HLDTIME                           S_1_iPressure                            rS_PressureRange1                         
   nMaxEnergy                         	   nMaxPower                            S_iSET_COUNT                           S1_iTotCyc_Count_DISP                           sJobStatus_ST1    Q       Q                 !   sStation1_ProductionData_FileName    Q   *   Hard Disk\Reports\Test1\ProductionData.csvQ                    Fb_LoagProductionData                           DATA_LOG_Save                   SaveData                            ST1_ProductionData    ѕ      ѕ                   Fb_CreateFileFormat_1                Fb_CreateFileFormat                    bEnableFileFormat              !           
   wTodayTemp    Q       Q      "           	   sDateTemp    Q       Q      #              sOLDFileName_ST1               T_MaxString     $              Fb_FormatDrive_1                Fb_FormatDrive     %              bFileDelete              &              Fb_CopyBackupAL_Server_LogOf_1                Fb_CopyFileToRemotePC     '              bool2              (              bAstart              )              TON_1                    TON     *              TON_2                    TON     +              CTU_1                    CTU     ,              R_TRIG_1                 R_TRIG     -              R_TRIG_2                 R_TRIG     .              bACreateNewFile              /           
   ReportStep             0              bANewDay              1              Timer1                    TON     2              Timer2                    TON     3              R_TRIG1                 R_TRIG     4              iUnitBNetWtTemp1              7              rRetUnitBWeightTemp1              8           	   StepTemp1             9              rRetUnitBWeightTemp2              :           	   StepTemp2             ;           
   BCreateDir              <              FB_CreateDir_1        	               FB_CreateDir     =              bANewDaytemp              >              bit2              ?              hfile             @              FB_FileOpen_1                             FB_FileOpen     A              test              B              bit3              C              FB_FileWrite_1                           FB_FileWrite     D              bEnableFileFormattemp              E              BDelete              F              FB_FileDelete_1        
                FB_FileDelete     G              Timer3                    TON     H              iCartoNoHmiTemp             I           	   dateInint             J           
   E_OpenPath            
   E_OpenPath     K              FB_FileDelete_2        
                FB_FileDelete     L              btest              M              iLotNoPrevious    Q       Q      N              CartonNo             O           	   SameLotNo              P              TON_CountCheck                    TON     S              LotChangeCompleted              U                               йН`  @    џџџџ           DATALOG_PRINT           step                          bOpen                           FB_FileOpen1                             FB_FileOpen           6   sPrintPath: STRING(80):= '\\PLC-PC\Reports\Print.csv';   FB_FileWrite1                           FB_FileWrite                  FB_FileClose1                      FB_FileClose                  FB_FileDelete1        
                FB_FileDelete    	              TON_1                    TON                  bOpen1                        	   sHeadline    Q       Q                   sData    Q       Q                   ProductionData_PrintData                                ProductionData_PrintData                  PrintEnabled                           Timer_1                    TON                  Timer_2                    TON                  TON_2                    TON                  R_TRIGPrint                 R_TRIG                  TON_Opendly                    TON               	   OpenError                          TON_writedly                    TON               
   WriteError                       
   BlendPrint    Q       Q                                    йН`  @    џџџџ           DATALOG_REPORT           R_TRIG_IndoPrint                 R_TRIG                  FB_FileOpen_Indo                             FB_FileOpen                  FB_FileWrite_Indo                           FB_FileWrite                  FB_FileClose_Indo                      FB_FileClose                  FB_FileDelete_Indo        
                FB_FileDelete               
   IndoReport                          ReportHead1_Indo             	              ST1_ProductionData             
              ReportHead2_Indo                           ReportBot1_Indo                           stStation1_ProductionData                           ReportBot2_Indo                           testbit                        	   TON_Indo1                    TON               	   TON_Indo2                    TON               	   TON_Indo3                    TON               	   TON_Indo4                    TON                  sOldDay    Q       Q                   TON_Newdaydly                    TON               
   TON_NEWDAY                    TON                  TON_NewdaydlyError                    TON               
   WriteError                          TON_writedly                    TON               	   OpenError                          TON_Opendly                    TON               	   BarcodeNo    Q       Q                   BarCode1    Q       Q                    EmptyConeWtRep             !              EmptyConeWtRep1             "                               йН`  @    џџџџ           FB_COPYFILETOREMOTEPC           sCopyFileCommandTemp               T_MaxString    (               sFormatedDestDirectory               T_Maxstring    (               sCopyFileCommand               T_MaxString    (               sFormatedDirectory               T_MaxString    (               sMakeDirCommand               T_MaxString    (               Fb_SystemTime                               FB_LocalSystemTime    ( 	              FB_MakeDirectory                              NT_StartProcess    ( 
              Fb_CopyFiles                              NT_StartProcess    (                  bMakeDirectory            (            	   bCopyFile            (               sDestDriveName               T_MaxString   (               sSourceDirectory               T_MaxString   (                  sFinalDestDirectory               T_MaxString   (                        йН`  @    џџџџ           FB_CREATEFILEFORMAT           Fb_OpenFile                             FB_FileOpen    )               Fb_WriteFile                           FB_FileWrite    )               F_Trig1                 F_TRIG    )               F_Trig2                 F_TRIG    )               Fb_closeFile                      FB_FileClose    )               F_Trig3                 F_TRIG    )            
   SysteMtime                               FB_LocalSystemTime    )               stSystemtimeAlrm                   
   Timestruct    )               sFileName_Temp               T_MaxString    )               bCreateFileTrig                 R_TRIG    )               bCreateFile             )               Fb_SavePersistant        	               FB_WritePersistentData    )               TuneparaSave             )               sOldDate    Q       Q    ) *              sNewFileName_Temp               T_MaxString   ) +                 sInputMessage               )            	   sFileName               T_MaxString   )            
   sDirectory               T_MaxString   )               bEnable            )                  sDate    Q       Q    )                bNewDateFound            ) "              sOldFileName               T_MaxString  ) &              sFilePathFinal               t_MaxString  ) '                 wToday     Q       Q  ) .                   йН`  @    џџџџ           FB_FORMATDRIVE           sDeleteCommand_Temp               T_MaxString    * 	              sDeleteCommand               T_MaxString    * 
              nDirectoryLength            *               sFormatedDirectory               T_MaxString    *               FbFormatDisk                              NT_StartProcess    *               
   sDriveName               T_MaxString   *               bFormatDisk            *                            йН`  @    џџџџ           FLIMROLLERUNIT           step                           bQAFilmRollerMotor1OnAuto                            bQAFilmRollerMotor2OnAuto                            bQAFilmRollerMotor3OnAuto                                             йН`  @    џџџџ        	   FWDPISTON           step                            bA2ndConeReached                             bA3rdConeReached                             bAFirstConeReached                             InterLockCounter                    CTU      	              R_TRIG_1                 R_TRIG      
              step2                            bAFwdPistonReady                             TimerON                    TON                    R_TRIG_2                 R_TRIG                    bWrapConvStarted                             F_TRIG_1                 F_TRIG                    bConutEnable                          	   bA3Pushed                             Step12                            R_TRIG_5                 R_TRIG                    TON_5                    TON                                     йН`  @    џџџџ           INT_ALL           bCartonOnConv             2               bWrpConvIntOverTemp             2               bSealConvIntOverTemp             2               bAInializeStartedtenp             2               bStopInt             2               F_TRIG_1                 F_TRIG    2 	                               йН`  @    џџџџ           MAIN        	   bTestBool             7                                йН`  @    џџџџ           MANUAL           b_SHPistonValveREVOffHmi             -               Timer1                    TON    -               step            -               bIManualSealingTemp             -               bEnableManSeal1             -               bEnableManSeal2             -               bEnableManSeal             - 	                               йН`  @    џџџџ           ONE_MIN_CONV           TON_5                    TON    !               TON_6                    TON    !               rGrossWtTolMin             !               rGrossWtTolMax             !               bGrossWieghtOkTemp             !               bQAGrossWtPiston1             !               bcheck             ! 	              TEST1             !               TEST2             !               tGrossWtEndSenDly                    TON    !               CylErrChkBit             !                                йН`  @    џџџџ           OUTPUTS           bQABuzzertemp             8                                йН`  @    џџџџ           PARAMETER_SETTINGS           R_TRIG_1                 R_TRIG                  PrintVar                          negativetolerance1                           negativetolerance2                           negativetolerance3                           negativetolerance4             	              negativetolerance5             
                               йН`  @    џџџџ           RS_ERROR           FbStep            +               Timer1                    TON    +                  bValveOutOn            +               bReedSwithIn            +            
   bErroReset            +               sMsgIn    Q       Q    +               RS_ErrChkDly           +                  bRsError            + 
              sMsgOut    Q       Q    +                        йН`  @    џџџџ           SEALING_CONVEYOR     "      bA3ConeSealStarted23             "               bQASealingConveyor2             "               ConvStopDly1_23                    TON    "               bA3ConeSealComp23             "               step1            "           CTU_1: CTU;   bAConeCountSenEnable1             " 
              bA6thConeSealStarted23             "               bA6thConeSealComp23             "               ConvStopDly2_23                    TON    "               step2            "               step3            "               bSealConvIntOverTemp             "               bStopHmitemp             "               ConeMissErr_1             "               ConeMissErr_2             "               test             "               bA3COneCrossed             "               bSealConvStart3             "               bSealConvStart1             "               TON1                    TON    "               Timer1                    TON    "               Timer2                    TON    "               Timer3                    TON    "               bConeMissBit2             "               bConeMissBit3             "               bConeMissBit1             "                Timer4                    TON    " !              bConeMissBit             " "           
   ConeChkDly                    TON    " #              SealConeMiss    Q       Q     " $              bQASealingConveyor3             " %              bAConeMissAtSealConv2             " &              bA3ConeSealComp23Temp             " '              bTemp             " (                               йН`  @    џџџџ           SEALING_UNIT           step            #               tA3ConeStartDly                    TON    #               tA3ConeSealCompDly                    TON    #               test             #                                йН`  @    џџџџ           SEALINGCONVRST           step            3               bConeAtWrppingConveyor1             3               TON_1                    TON    3               bConePresent             3               TON_1Running             3                                йН`  @    џџџџ           SEALINGUNITRST           bARWrappingCone123FwdCom             4               TON_1                    TON    4               step            4               tA3ConesealStartDly                    TON    4               tA3ConeSealCompDly                    TON    4               bFwdRevPistonRst             4 	                               йН`  @    џџџџ        	   SENSELECT               bVarIn1            ,               bVarIn2            ,               bVarIn3            ,               bVarIn4            ,               
   ByteResult           ,                        йН`  @    џџџџ           SERIAL     6      bSendStr             9               Timer                    TON    9               TrigSend                 R_TRIG    9               TransmitStr                
   SendString    9               SendBusy             9               SendErrorID            
   ComError_t    9            
   ReceiveStr                           ReceiveString    9 
              ReStr    Q       Q     9               LastReceivedString    Q       Q     9               StringReceived             9               ReceiveBusy             9               ReceiveError             9               ReceiveErrorID            
   ComError_t    9               ReceiveTimeout             9               ReceiveCounter            9        /    Serial communication with the COM port device    COMportControl        "                                        SerialLineControl    9               COMportControlError             9               COMportControlErrorID            
   ComError_t    9               Decimaldata            9            
   Stringdata    Q       Q     9               RxBufferStringdata    -      -    9               TxBufferStringdata    -      -    9               RxBufferArrdata   	  P                        9               TxBufferArrdata   	  P               Ю   (*16#0F, 16#FA, 16#03, 16#00, 16#0D, 16#00, 16#10, 16#20, 16#01, 16#05, 16#58, 16#DF, 16#98, 16#00, 16#00, 16#02, 16#04, 16#E0, 16#B4, 16#F0;*)
16#0F, 16#FA, 16#03, 16#00, 16#02, 16#00, 16#38, 16#24, 16#F0
            њ                                8      $      №   H        9        ~   16#00, 16#00, 16#00, 16#00;, 16#10, 16#20, 16#05, 16#02, 16#AF, 16#F6, 16#98, 16#00, 16#00, 16#02, 16#04, 16#E0, 16#84, 16#F0;   i            9 !              ReceiveData_1                                         ReceiveData    9 "              SReceivedataFormat   	  ,                       9 $              SReceivedatStringFt    -      -    9 %              sSendString_1    -      -    9 &              TransmitArrByteData        
                SendData    9 '          ==============port 2==========   ReceiveData_2                                         ReceiveData    9 )              test             9 +              SReceivedataFormat_2   	  ,                       9 ,              SReceivedatStringFt_2    -      -    9 -              COMportControl_2        "                                        SerialLineControl    9 .              COMportControlError_2             9 /              COMportControlErrorID_2            
   ComError_t    9 0              SReceivedatStringFtTemp    Q       Q     9 1              SReceivedatStringFt_2Temp    Q       Q     9 2              ReceiveData_3                                         ReceiveData    9 3              SReceivedataFormat_3   	  ,                       9 4              SReceivedatStringFt_3    -      -    9 5              SReceivedatStringFt_3Temp    Q       Q     9 6              COMportControl_3        "                                        SerialLineControl    9 7              COMportControlError_3             9 8              COMportControlErrorID_3            
   ComError_t    9 9              ReceiveByte_2                  ReceiveByte    9 :              ReceiveString_sample_1                           ReceiveString    9 <              prefix_data_1            9 =              sufix_data_1            9 >              samplestring_1    Q       Q     9 ?              RetWeight_1             9 @           
   resultWt_1    Q       Q     9 A              ipos_1            9 B                               Ѕћ`  @    џџџџ           UNITA_ROWSTOPPER     >      step            $               iSensorOnVal            $               CTU_1Enable             $               R_TRIG_1                 F_TRIG    $               CTU_2                    CTU    $               R_TRIG_2                 R_TRIG    $ 	              tRowStopperRevDly1                    TON    $ 
              UnitAConeCrossCount                    CTU    $               test             $               bStopRetUnitA             $               RowStopperMotorStopDly                    TON    $               bRetUnitAStarttemp             $               bAUnitAWeighOktemp             $               RowStopperEndRSErrorDly                    TON    $               bStartTemp1             $               UnitAOverTemp             $               RowStopperEndSenErr             $               interLockStep            $               UnitACompleteCheckCountCv            $               bEnableBit1             $               UnitAConeCross                    CTU    $            	   Testtimer                    TON    $               bAUnitBConeCrossingOff_2             $               step3            $               TON_7                    TON    $               R_TRIG_4                 R_TRIG    $               timer3                    TON    $               SenSelect_1                	   SenSelect    $                iAConeCrossCount            $ !              bQAUnitA_RowStopperMotorFwd2             $ "              bQAUnitA_RowStopperMotorFwd1             $ #              bQAUnitA_RowStopperMotorRev1             $ $              sRetreivalAStatus    Q       Q     $ %              bRetUnitARst             $ &              iAConeCrossCounttemp            $ '              GetDLy                    TON    $ (              bCheckSensor             $ )              tConeChkDly                    TON    $ *              bUnitAConeMiss             $ +              iAConeCrossPVal            $ ,              tConeCrossDly                    TON    $ -              step2            $ .              F_TRIG_5                 F_TRIG    $ /              TON_6                    TON    $ 0              bAUnitBConeCrossing_1             $ 1              bAUnitBConeCrossingOff             $ 2              step4            $ 3              TON_8                    TON    $ 4              bAUnitAConeCrossing_1             $ 5              TON_9                    TON    $ 6              bAUnitAConeCrossingOff             $ 7              TON_10                    TON    $ 8              F_TRIG_3                 F_TRIG    $ 9              CountAtLimitBNok             $ :              CountCheckdly                    TON    $ ;              UnitAConeCompChkCount                    CTU    $ <              tRowStopperMidDly1                    TON    $ =              tUnitACountDelay1                    TON    $ >              TEnableCounter             $ ?              CompleteTestbitA             $ @              bCounterLockUnitA             $ A              bStartUnitaCompCount             $ B                               йН`  @    џџџџ           UNITB_ROWSTOPPER     J      step            %               bAUnitAWeighOk             %               CTU_1                    CTU    %               CTU_1Enable             %               R_TRIG_1                 R_TRIG    %               R_TRIG_2                 F_TRIG    %               bQAUnitA_RowStopperMotorFwd1             % 	              bQAUnitA_RowStopperMotorFwd2             % 
              tRowStopperRevDly1                    TON    %               bQAUnitA_RowStopperMotorRev1             %               CTU_2                    CTU    %               UnitBConeCount                    CTU    %               CTU_1EnableUnitB             %               temp1             %               bStopRetUnitB             %               bRetUnitBRst             %               RowStopperMotorStopDly                    TON    %               F_TRIG_3                 F_TRIG    %               UnitBCompleteCheckCount                    CTU    %               UnitBOverTemp             %               bStartTemp1             %               R_TRIG_5                 R_TRIG    %               test             %            
   bStopTemp2             %               CTU_2CV            %               CTU_test                    CTU    %               R_TRIG_test                 R_TRIG    %               InterLockStep            %               CTU_2Enable             %                timer1                    TON    % !              UnitBCompleteCheckCountCV            % "           	   Ctu_2_Rst             % #              F_TRIG_1                 F_TRIG    % $              bRestBit             % %           	   bResetBit             % &              R_TRIG_6                 R_TRIG    % '              timer2                    TON    % (              UnitBConeCrossCount                    CTU    % )              bQAUnitB_RowStopperMotorFwd1             % *              sRetreivalBStatus    Q       Q     % +              GetDLy                    TON    % ,              bCheckSensor             % -              iAConeCrossCount            % .              bQAUnitB_RowStopperMotorRev1             % /              iSensorOnVal            % 0              SenSelect_2                	   SenSelect    % 1              tConeChkDly                    TON    % 2           	   bConeMiss             % 3              tConeCrossDly                    TON    % 4              UnitBConeCompChkCount                    CTU    % 5              iAConeCrossPVal            % 6              TON_6                    TON    % 7              step2            % 8              bAUnitBConeCrossing_1             % 9              bAUnitBConeCrossedOff             % :              R_TRIG_3                 R_TRIG    % ;              TON_8                    TON    % <           	   R_TRIG_11                 R_TRIG    % =              F_TRIG_4                 F_TRIG    % ?              tRowStopperMidDly2                    TON    % @              tUnitBCountDelay1                    TON    % A              ConeInCompleteB             % B              TEnableCounterB             % C              CompleteTestbitB             % D              bCounterDisableUnitB             % E           	   TestTimer                    TON    % F              bStartUnitBCompCount             % G              step3            % H              F_TRIG_5                 F_TRIG    % I              TON_9                    TON    % J              TON_10                    TON    % K              TON_11                    TON    % L              TON_12                    TON    % M              bAUnitBConeCrossedTemp             % N                               йН`  @    џџџџ        
   WEIGHTCALC     8      CounterA                    CTU    :               R_TRIG_1                 R_TRIG    :               CounterB                    CTU    :               R_TRIG_2                 R_TRIG    :               R_TRIG_3                 R_TRIG    :               ConeCountEnable             : 	              InterLockCounterStartTimer                    TON    : 
              TON_3                    TON    :               tResetTiner                    TON    :               WCPReadyTemp1             :               WCPReadyTemp2             :               Det            :            	   BreadTemp             :            	   ADSREAD_1                          ADSREAD    :               SwithOnButtton             :               axis1             :               InterLockCounterRESET             :               RstStep            :               bStopTiltUnit             :               rRetUnitTolMax             :               rRetUnitTolMin             :               rRetUnitAWeightok             :               TON_4                    TON    :               rRetUnitAWeightempt             :               rRetUnitAWeighttemp             :               TON_5                    TON    :               rRetUnitBWeightok             :               TON_6                    TON    :                TON_7                    TON    : !              rGrossWtTolMax             : "              rGrossWtTolMin             : #              TON_8                    TON    : $              bGrossWieghtOkTemp             : %              Timer1                    TON    : '              Timer2                    TON    : (              bMonitor             : )              bStartBlinker             : *              bStartConeFeedConvInBypass             : +              rRetUnitAWeightNok             : ,              rRetUnitBWeightNok             : -              iACounterB_PV            : .              iACounterA_PV            : /              i            : 0              UnitBWeightBit             : 2              UnitAWeightBit             : 3              weightCheck            : 4              Timer_3                    TON    : 5              Weight3Move             : 6              var_4             : 7              weightCheck1            : 8              Weight4Move             : 9              Timer_4                    TON    : :              Weight2Move             : ;              var_2             : <              var_3             : =              Weight1Move             : >                               йН`  @    џџџџ           WRAPCONVRST           step            5               bConeAtWrppingConveyor1             5               TON_1                    TON    5               bConePresent             5               bAResetHmitemp             5               ConeOnWrapConveyAck             5 	                               йН`  @    џџџџ           WRAPPING_UNIT           step1            &               R_TRIG_1                 R_TRIG    &               Counter1                    CTU    &               WrapConvStartDly                    TON    &               WrapR_TRIG_1                 R_TRIG    & 	              bAWrappingConvStartAuto2             & 
              WrapR_TRIG_2                 R_TRIG    &               WrapConvStartDly2                    TON    &               WrapR_TRIG_3                 R_TRIG    &               WrapConvStartDly3                    TON    &               bAWrappingConvStartAuto3             &               WrapR_TRIG_4                 R_TRIG    &               bAWrappingConvStartAuto4             &               WrapConvStartDly4                    TON    &               WrapR_TRIG_5                 R_TRIG    &               bAWrappingConvStartAuto5             &               WrapConvStartDly5                    TON    &               bAWrapConeCyl1             &               bAWrapConeCyl123             &               bAWrapConeCyl3             &               bAWrapConeCyl23             &            
   bASet1Comp             &            
   bASet2Comp             &               bASet             &            
   bASet3Comp             &               bA3ConeWrapStarted             &               bA6thConeWrapStarted             &               bA1ConeWrappOver             &                bA2ConeWrappOver             & !              bAll3ConeWrapOver             & "              bA5ConeWrappOver             & #              bA6ConeWrappOver             & $              bA56ConeWrapOver             & %              bAWrapConeCyl23_1             & &              bATemp             & (              baConv2ndStart             & )              baConv3rdStart             & *              baConv4thStart             & +              baConv5thStart             & ,              bASensorMonitorBit1             & -              bAWrappingCone123FwdCom             & .              ni             & /              step2            & 0              bAWrappingCone3FwdCom             & 1              step3            & 2              bAWrappingCone23FwdCom             & 3              step4            & 4              bAWrappingCone23FwdCom1             & 5           
   bASet4Comp             & 6              WrapR_TRIG_3_23                 R_TRIG    & 7              bAWrappingConvStartAuto3_23             & 8              WrapConvStartDly3_23                    TON    & 9              bAWrapConeCyl23_1_23             & :              bAWrappingCone23_23FwdCom1             & ;              WrapR_TRIG_6_23                 R_TRIG    & <              bAWrappingConvStartAuto4_23             & =              WrapConvStartDly6_23                    TON    & >              bIWrappingCone             & ?              bAWrapConeCyl123_23             & A              bAWrappingCone123_23FwdCom             & B              step5            & D              bAConvRunning1             & E              bAConvRunning2             & F              TON_1                    TON    & G              TON_2                    TON    & H              bANextLayerStarted             & I              bAConvStartInterlock             & J              bAFirstConeAtWrapConv             & K              baConveyerStarted             & L           	   RtrigBit1             & M              R_TRIG_3                 R_TRIG    & N              bASensorNok             & O              WrapConvStartDlyOver             & P              test                 R_TRIG    & Q              WrappingCone1RT                 R_TRIG    & R              WrappingConvRT                 R_TRIG    & S           
   WCS1Sensed             & T              TON_3                    TON    & U              WCS1SenseRst1             & V              TON_6                    TON    & W              TON_7                    TON    & X              TON_8                    TON    & Y              TON_9                    TON    & Z              TON_10                    TON    & [              TimerStartBit             & \              bConvRunning             & ]           	   test1THEN             & ^              test1             & _              bSaelUnitIntOverTemp             & `              step6            & a              step7            & b              bWCSStart3_24             & c              bStopHmitemp             & d              bWCSHomeSenOk             & e              WCSCylsHomeRsErr             & g              bWCSHomeEndOk             & i              WCSCylsEndRsErr             & j              bAWrappingConvStartAuto             & l           	   bA3Pushed             & m           
   bWCSStart3             & n           
   bWCSStart2             & o              RsChkDly                    TON    & p              bWrapConvStopped2             & q              bWrapConvStopped3             & s              bIWrappingFilmTensionChk1             & u              bIWrappingFilmTensionChk2             & v              bIWrappingFilmTensionChk3             & w              R_TRIG1                 F_TRIG    & x              R_TRIG2                 F_TRIG    & y              R_TRIG3                 F_TRIG    & z              Film1Loaded             & {              Film3Loaded             & |              Film2Loaded             & }              FlimNotLoaded             & ~           
   FlimChkDly                    TON    &               Timer1                    TON    &               bAWrapFirstStart             &               TON2                    TON    &               sSheetNotFeeded    Q       Q     &               F_TRIG1                 F_TRIG    &               F_TRIG2                 F_TRIG    &               F_TRIG3                 F_TRIG    &               WrappConeBitAlert1             &               WrappConeBitAlert2             &               WrappConeBitAlert3             &               bQAWrappingConveyorMotor1Temp             &               checkPolySheet1             &               bQAWrappingConveyorMotor2Temp             &               Timer6                    TON    &               bAllignConeErr1             &               bQAWrappingConveyorMotor2Temp2             &               checkPolySheet2Temp             &               Timer3                    TON    &                                йН`  @    џџџџ            
  ( %                @   )   '   7                 2   5   4   B   A   $   :        /   0   =   6   "   &      ?              >     9   (      K       K   Ћ    K   Й    K   Ю                л        +     КЛlocalhost клv           ыH `0 @ьв Єв д Шг %c>w?Fўџџџх9wbт9w     ё@              ё@     Ме Ф№ X   рxг с9wшF  д д eў џџџџ    Єфг            ё@ иг      ё@             ё@     Ме Ф№ Ме д Ф№ ;dџџџџд }Ъя     ,   ,                                                        K        @   йН`т /*BECKCONFI3*/
        !7ј @   @           3               
   Standard     Ш   	VISU_TASK     2   VISU_INPUT_TASK            	Ѕћ`                        VAR_GLOBAL
END_VAR
                                                                                  "   , КўYS             Standard
         MAINџџџџ                	VISU_TASKШ        MAINTARGETVISU_PAINT_CODEџџџџ           џџџџ  VISU_INPUT_TASK2        MAINTARGETVISU_INPUT_CODEџџџџ               Ѕћ`                 $ћџџџ, } }  =                       	Ѕћ`                        VAR_CONFIG
END_VAR
                                                                                   '             , Ш t,        	   GVL_Alarm йН`	йН`                    Ѕ  VAR_GLOBAL
	RS_Error_1: RS_Error;
	RS_Error_2: RS_Error;
	RS_Error_3: RS_Error;
	RS_Error_4: RS_Error;
	RS_Error_5: RS_Error;
	RS_Error_6: RS_Error;
	RS_Error_7: RS_Error;

	bASealConvEnd1: BOOL;
	AlarmMess2: STRING(80);
	AlarmMess1: STRING(80);
	AlarWrap: STRING(80);
	CountMess: STRING(80);
	AlarmMessg: STRING(80);
	UnitASenSelet: UINT;
	SealingStep: INT;
	AlarmWrpConyMess: STRING(80);
	ConeMissAlarm: STRING(80);

	bAConeFeedCylRsError: BOOL;
	bAFwdCylRsError: BOOL;
	bAWrappingCylRsError: BOOL;
	bAWrappingCylRs1Error: BOOL;
	bAWrappingCylRs2Error: BOOL;
	bAWrappingCylRs3Error: BOOL;
	bAWrapCylRsErrorAuto: BOOL;
	bAError: BOOL;
	bASealTopCylRsError: BOOL;
	bASealBotCylRsError: BOOL;
	bASealTopBotCylRsError: BOOL;
	bASealSepXCylRsError: BOOL;
	bASealSepYCylRsError: BOOL;
	bASupplyPressureError: BOOL;
	HmiSupplyPressureMsg: STRING;
	bAFilmNotloaded: BOOL;
	bAConeMissAtSealConv: BOOL;
	bAEmergencyPressed: BOOL;
	bEmPopUp: BOOL;
	bAConeMissErrorAtWrpConv: BOOL;
	ConeAlignErr: BOOL;
	ConeMissAlarm1: STRING;
	ConeMissAlarm2: STRING;
	bAFlimNotLoaded: BOOL;
	bAPolythinSheetError: BOOL;
	bFilmErrClear: BOOL;
	bASepYAxisRsErrorChkBit: BOOL;
	bASepYAxisRsErrorChkBit1: BOOL;
	bABuzzer: BOOL;
	PressureChkTimer: TON;
	bAStop: BOOL;

	bAErrorChkBit: BOOL;
	bCheckWrappingSen: BOOL;
	bPloySheetSensError: BOOL;
	checkPolySheet2: BOOL;
	bAErrorChkBit2: BOOL;
	bCheckWrappingSen2: BOOL;
	bAErrorChkBit3: BOOL;
	bCheckWrappingSen3: BOOL;
	bWrapConvStopped2Temp: BOOL;
	SealingOk: BOOL;
	CycleComplete: BOOL;
	CycleComplete1: BOOL;
	SGrossWtNokMsg: STRING;

	SGrossWtCylEndSenErrMsg: STRING;
	bGrossWtCylEndSenError: BOOL;
END_VAR
                                                                                               '              , XtМ           GVL_Auto йН`	йН`                     n  VAR_GLOBAL
	bAutoModeOn: BOOL;
	bAPauseSeq: BOOL;
	bUnitBRowStopperStarted: BOOL;
	bUnitARowStopperStarted: BOOL;
	bAUnitAWeighOk: BOOL;
	bAConeFeedOver: BOOL;
	bAWrappingConvStart3: BOOL;
	bAWrappingConvStart1: BOOL;
	bAWrappingConvStart2: BOOL;
			bA3ConeWrappOver: BOOL;
	bA4thWrappOver: BOOL;
	bA6thConeWrappOver: BOOL;
	bA8thConeWrappOver: BOOL;
	bA6ConeWrappOver23: BOOL;
	AlarmMess: STRING(80);
	bAWrappingCone123OnAuto: BOOL;
	bAFwdPistonComp1: BOOL;
	bAFwdPistonComp2: BOOL;
	bAFwdPistonComp3: BOOL;
	bAConvFirstStart: BOOL;
	UnitACompleteCheckCount: CTU;
	bRetUnitAStart: BOOL;
	bRetUnitBStart: BOOL;
	bAUnitBWeighOk: BOOL;
	(*UnitAConeCompChkCount: CTU;*)
	iSensorOnVal: USINT;
	bFwdPistonStartTemp: BOOL;
	bConeMiss1AtWrapConv: BOOL;
	bConeMiss2tWrapConv: BOOL;
	bConeMiss2AtWrapConv: BOOL;
	ConeMissbit: BOOL;
	CTU_1: CTU;
	bAPauseEnable: BOOL;
	SealComDlyTemp: TIME;
	bAMcStartInAuto: BOOL;
	bPauseExtend: BOOL;
	bAutoModeOff: BOOL;
	iTotalNoOfCones: BOOL;
	iATotalNoOfCones: INT;
	bAMcReady: BOOL;
	bAMcRunninig: BOOL;
	bAFilmLoaded: BOOL;
	bAWrapConStart: BOOL;
	bA3ConeWrappOverTemp: BOOL;
	bABypassOn: BOOL;
	bIntialAckBit: BOOL;
	ConeInComplete: BOOL;
	ConeInCompletetest: BOOL;
	ConeInCompleteTestbitB: BOOL;
	bUnitACounterDIsable: BOOL;
	ConeInCompleteA: BOOL;
	bAOneMinConvStart: BOOL;
	bAWrapwait: BOOL;
END_VAR
                                                                                               '              , сl ,и            GVL_Hmi Ѕћ`	Ѕћ`     рщшРѓ          VAR_GLOBAL
	bStopHmi: BOOL;
	bInitializeHmi: BOOL;

	HMIFeedPiston: STRING(80);
	HMIWrapPiston1: STRING(80);
	HMIWrapPiston2: STRING(80);
	HMIWrapPiston3: STRING(80);
	HMIForwdPiston:STRING(80);
	HMISealBotPiston:STRING(80);
	HMISealTopPiston:STRING(80);
	HmiXAxisPiston:STRING(80);
	HmiYAxisPiston:STRING(80);
	bErrorReset: BOOL;
	bPauseHmi: BOOL;
	bResumeHmi: BOOL;
	bResetTemp: BOOL;
	bHmiAck: BOOL;

	b18ConeModelHmi: BOOL;
	b12ConeModelHmi:BOOL;
	b24ConeModelHmi: BOOL;
	b32ConeModelHmi: BOOL;
	sAMcModeStatus: STRING;
	bAUnitBConeCrossed: BOOL;
	bAInializeStarted: BOOL;
	PopUp: BOOL;
	sAlarmStatus: STRING;
	bNegTolDisableHMI: BOOL;
	bNegTolEnableHMI: BOOL;
	bPrssurePopUp: BOOL;
	UnitAConeCountHMI: INT;
	UnitBConeCountHMI: INT;
	b16ConeModelHmi: BOOL;
	WrapConeSenDetMes: STRING;
	bAmberbit2: BOOL;
	Pgm_NoHmi: INT;
	FileCreateTemp: BOOL;
	bACyclePass: BOOL;
	iCartoNoHmi: STRING;
	(*iLotNoHmi: STRING;*)
	var_1: REAL;
	var_5: REAL;
	LogYear: STRING;
	LogMonth: STRING;
	logDay: STRING;
	sTIME: STRING;
	sDATEFinal: STRING;
	DateTimeVar: STRING;
	wTodayToHmi: STRING;
	bInterlockInitial_2: BOOL;
	sMessage: STRING;
	bReadGWieght: BOOL;
	bAReset_all_error: BOOL;








	LotASelected: BOOL;
	LotACartonNo: INT;
	LotBSelected: BOOL;
	LotBCartonNo: INT;
	LotCSelected: BOOL;
	LotDSelected: BOOL;
	LotESelected: BOOL;
	LotFSelected: BOOL;
	LotCCartonNo: INT;
	LotDCartonNo:  INT;
	LotECartonNo:  INT;
	LotFCartonNo: INT;
	LotA: INT;

	LotB: INT;

	LotC: INT;

	LotAHmi: BOOL;
	LotBHmi: BOOL;
	LotCHmi: BOOL;
	CurrentCartonNo:INT;
	LotNoChange: BOOL;
	ParametesSave: BOOL;
END_VAR

VAR_GLOBAL RETAIN
(*VAR_GLOBAL PERSISTENT*)
	b12ConeModelSelected AT %Q*: BOOL;
	b18ConeModelSelected AT %Q*: BOOL;
	b24ConeModelSelected AT %Q*: BOOL;
	b32ConeModelSelected AT %Q*: BOOL;
	rSealCompDlyHmi AT %Q*: REAL;
	iNetTolHmi AT %Q*: REAL;
	iNetWtHmi AT %Q*: REAL;
	iLotNoHmi AT %Q*: STRING;
	iWorkOrderNoHmi AT %Q*:STRING;
	NegToleranceEnabled AT %Q*: BOOL;
	b16ConeModelSelected AT %Q*: BOOL;
	ProgramNoHmi AT %Q*: INT;
	CountCodeHmi AT %Q*: STRING(80);
	CartonNoHmi AT %Q*: INT;
	DefaultNetWeightHmi AT %Q*: REAL;
	DefaultGrossWeightHmi AT %Q*: REAL;
	EmptyConeWt AT %Q*: REAL;
	BlendHmi AT %Q*: STRING(80);
	ShadeHmi AT %Q*: STRING(80);
	ConeTipHmi AT %Q*: STRING(80);
	ConeNettHmi AT %Q*: STRING(80);
	ConeLengthHmi AT %Q*: REAL;
	Cones:INT;
	Dom_ExpHmi AT %Q*: STRING(80);
	PackTypeHmi AT %Q*: STRING(80);
	ItemCodeHmi AT %Q*: STRING(80);
	IssueDesp AT %Q*: STRING(80);
	Location AT %Q*: STRING(80);
	Description AT %Q*: STRING(80);
	Remarks AT %Q*: STRING(80);
	Fyear AT %Q*: STRING(80);
	AvgCount AT %Q*: STRING(80);
	TareWeight AT %Q*: REAL;
	BarCode AT %Q*: STRING(80);
	WorkFlag AT %Q*: STRING(80);
END_VAR                                                                                               '              , Qє.X        
   GVL_Inputs йН`	йН`                     д
  VAR_GLOBAL


(******************EL1809-1(Main)*********************)

	bIConeFeedingPistonHome AT %IX0.0: BOOL;
	bIConeFeedingPistonEnd AT %IX0.1: BOOL;
	bIConeOrientationTop AT %IX0.2: BOOL;
	bIForwardPistonHome AT %IX0.3: BOOL;
	bIForwardPistonEnd AT %IX0.4: BOOL;
	bIWrappingConeDeductionSen AT %IX0.5: BOOL;
	bISpare1 AT %IX0.6: BOOL;
	bISpare2 AT %IX0.7: BOOL;
	bISpare3 AT %IX1.0: BOOL;
	bIWrappingChannelPiston1_Home AT %IX1.1: BOOL;
	bIWrappingChannelPiston1_End AT %IX1.2: BOOL;
	bIWrappingChannelPiston2_Home AT %IX1.3: BOOL;
	bIWrappingChannelPiston2_End AT %IX1.4: BOOL;
	bIWrappingChannelPiston3_Home AT %IX1.5: BOOL;
	bIWrappingChannelPiston3_End AT %IX1.6: BOOL;
	bIWrappingCone1 AT %IX1.7:BOOL;

(******************EL1809-2(Main)*********************)

	bIWrappingCone2 AT %IX2.0: BOOL;
	bIWrappingCone3 AT %IX2.1: BOOL;
	bIWrappingFilmTensionPlate_1 AT %IX2.2: BOOL;
	bIWrappingFilmTensionPlate_2 AT %IX2.3: BOOL;
	bIWrappingFilmTensionPlate_3 AT %IX2.4: BOOL;
	bISealingTopPistonHome AT %IX2.5: BOOL;
	bISealingTopPistonEnd AT %IX2.6: BOOL;
	bISealingBottomPistonHome AT %IX2.7: BOOL;
	bISealingBottomPistonEnd AT %IX3.0: BOOL;
	bIConeCountSensor AT %IX3.1: BOOL;
	bISealingSeparatorYAxisHome AT %IX3.2: BOOL;
	bISealingSeparatorYAxisEnd AT %IX3.3: BOOL;
	bISealingSeparatorXAxisHome AT %IX3.4: BOOL;
	bISealingSeparatorXAxisEnd AT %IX3.5: BOOL;
	bIManualSealing AT %IX3.6: BOOL;
	bIPressureSwitch  AT %IX3.7: BOOL;

(******************EL1809-3(Main)*********************)

	bISpare4  AT %IX4.0: BOOL;
	bISpare5   AT %IX4.1: BOOL;
	bIUnitA_RowStopperHome   AT %IX4.2: BOOL;
	bIUnitA_RowStopperEnd AT %IX4.3: BOOL;
	bIUnitB_RowStopperHome AT %IX4.4: BOOL;
	bIUnitB_RowStopperEnd AT %IX4.5: BOOL;
	bIUnitA_StartPB AT %IX4.6: BOOL;
	bIUnitB_StartPB AT %IX4.7:BOOL;
	bIUnitAConeDetection4 AT %IX5.0:BOOL;
	bIUnitBConeDetection4 AT %IX5.1:BOOL;
	bIUnitAConeDetection1 AT %IX5.2:BOOL;
	bIUnitAConeDetection2 AT %IX5.3:BOOL;
	bIUnitAConeDetection3 AT %IX5.4:BOOL;
	bIUnitAConeCrossing AT %IX5.5:BOOL;
	bIUnitBConeDetection1 AT %IX5.6:BOOL;
	bIUnitBConeDetection2 AT %IX5.7:BOOL;

(******************EL1809-4(Main)*********************)

	bIUnitBConeDetection3 AT %IX6.0:BOOL;
	bIUnitBConeCrossing AT %IX6.1:BOOL;
	bIAutoManual AT %IX6.2:BOOL;
	bIMCStart AT %IX6.3:BOOL;
	bIMCStop AT %IX6.4:BOOL;
	bIKeySwitch AT %IX6.5:BOOL;
	bIEmergency AT %IX6.6:BOOL;
	bIUnitA_RowStopperMiddle AT %IX6.7:BOOL;

	bIUnitB_RowStopperMiddle AT %IX7.0: BOOL;
	bIGross_Crossing_Input  AT %IX7.1: BOOL;
	bIGross_Weight_Stop AT %IX7.2: BOOL;
	bIGross_Cyl_Home AT %IX7.3: BOOL;
	bIGross_Cyl_End AT %IX7.4: BOOL;
	bISpare12 AT %IX7.5: BOOL;
	bISpare13 AT %IX7.6: BOOL;
	bISpare14 AT %IX7.7: BOOL;
END_VAR
                                                                                               '              , ,t        
   GVL_Manual йН`	йН`                       VAR_GLOBAL




		bQMConeFeedingPistonValve :BOOL;
		bQMForwardPistonValve  :BOOL;
		bQMReversePistonValve :BOOL;
		bQMWrappingChannelPistonValve1:BOOL;
		bQMWrappingChannelPistonValve2:BOOL;
		bQMWrappingChannelPistonValve3 :BOOL;
		bQMSealingTopPistonValve :BOOL;
		bQMSealingBottomPistonValve:BOOL;


		bQMFeedingConveyorMotor :BOOL;
		bQMWrappingConveyorMotor :BOOL;
		bQMSealingConveyorMotor :BOOL;
		bQMMatrixConveyorMotor :BOOL;
		bQMFilmRollerMotor1 :BOOL;
		bQMFilmRollerMotor2 :BOOL;
		bQMFilmRollerMotor3 :BOOL;




		bQMRowStopperMotorForward  :BOOL;
		bQMRowStopperMotorReverse:BOOL;
		bQMColumnStopperMotorForward :BOOL;
		bQMColumnStopperMotorReverse:BOOL;
		bQMSealingSeparatorYAxisPistonValve :BOOL;
		bQMSealingSeparatorXAxisPistonValve :BOOL;
		bQMConeTiltingPistonValve :BOOL;
		bQMColumnPushPistonValve:BOOL;

		bQMSeparatorHorizontalPistonValveFwd :BOOL;
		bQMSeparatorVerticalPistonValve :BOOL;
		bQMCartonFeedingPistonValve :BOOL;
		bQMConeEjectionPistonValve :BOOL;
		bQMLengthTightPistonValve :BOOL;
		bQMBreadthTightPistonValve:BOOL;
		bQMEmptyCartonConveyorMotor :BOOL;
		bQMCartonConveyorMotor :BOOL;





		bQMVacuumPistonValve  :BOOL;
		bQMSeparatorHorizontalPistonValveRev  :BOOL;
		bQMSpare1  :BOOL;
		bQMSpare2 :BOOL;


	bQMUnitA_LiftPistonValve:BOOL;
	bQMUnitB_LiftPistonValve: BOOL;
	bQMUnitA_RowStopperMotorForward :BOOL;
	bQMUnitA_RowStopperMotorReverse :BOOL;
	bQMUnitB_RowStopperMotorForward :BOOL;
	bQMUnitB_RowStopperMotorReverse:BOOL;
	bQMUnitC_FullCartonConveyor :BOOL;
	bQMUnitC_LiftPistonValve :BOOL;


	bUA_LiftCylOnHmi: BOOL;
	bUA_LiftCylOffHmi: BOOL;
	bUB_LiftCylOnHmi: BOOL;
	bUB_LiftCylOffHmi: BOOL;
	bUA_RowStopperMotorFwd: BOOL;
	bUA_RowStopperMotorFwdOnHmi: BOOL;
	bUA_RowStopperMotorFwdOffHmi: BOOL;
	bUA_RowStopperMotorRevOnHmi: BOOL;
	bUB_RowStopperMotorFwdOnHmi: BOOL;
	bUB_RowStopperMotorRevOnHmi: BOOL;
	bUC_FullCartonConv: BOOL;
	bUC_FullCartonConvOnHmi: BOOL;
	bUC_FullCartonConvOffHmi: BOOL;
	bUC_LiftCylOnHmi: BOOL;
	bUC_LiftCylOffHmi: BOOL;

	bCFPistonOnHmi: BOOL;
	bCFPistonOffHmi: BOOL;
	bFPValveOnHmi:BOOL;
	bFPValveOffHmi:BOOL;
	bRPValveOnHmi:BOOL;
	bRPValveOffHmi:BOOL;
	bWrappingCPV1OnHmi:BOOL;
	bWrappingCPV1OffHmi:BOOL;
	bWrappingCPV2OnHmi:BOOL;
	bWrappingCPV2OffHmi:BOOL;
	bWrappingCPV3OnHmi:BOOL;
	bWrappingCPV3OffHmi:BOOL;
	bSealingTopPVOnHmi:BOOL;
	bSealingTopPVOffHmi:BOOL;
	bSealingBottomPVOnHmi:BOOL;
	bSealingBottomPVOffHmi:BOOL;
	bFCMotorOnHmi:BOOL;
	bFCMotorOffHmi:BOOL;
	bWCMotorOnHmi:BOOL;
	bWCMotorOffHmi:BOOL;

	bSCMotorOnHmi: BOOL;
	bSCMotorOffHmi: BOOL;
	bMCMotorOnHmi: BOOL;
	bMCMotorOffHmi: BOOL;
	bFRMotor2OnHmi: BOOL;
	bFRMotor2OffHmi: BOOL;
	bFRMotor1OnHmi: BOOL;
	bFRMotor1OffHmi: BOOL;
	bFRMotor3OnHmi: BOOL;
	bFRMotor3OffHmi: BOOL;
	bRSMotorForwardOnHmi: BOOL;
	bRSMotorForwardOffHmi: BOOL;
	bRSMotorRevOnHmi: BOOL;
	bRSMotorRevOffHmi: BOOL;
	bCSMotorFwdOnHmi: BOOL;
	bCSMotorFwdOffHmi: BOOL;
	bCSMotorRevOnHmi: BOOL;
	bCSMotorRevOffHmi: BOOL;
	bSSYAxisPistonValveOnHmi: BOOL;
	bSSYAxisPistonValveOffHmi: BOOL;
	bSSXAxisPistonValveOnHmi: BOOL;
	bSSXAxisPistonValveOffHmi: BOOL;
	bCTPistonValveOnHmi: BOOL;
	bCTPistonValveOffHmi: BOOL;
	bCPushPistonValveOnHmi: BOOL;
	bCPushPistonValveOffHmi: BOOL;
	bSHPistonValveOnHmi: BOOL;
	bSHPistonValveOffHmi: BOOL;
	bSVPistonValveOnHmi: BOOL;
	bSVPistonValveOffHmi: BOOL;
	bCPistonValveOnHmi: BOOL;
	bCPistonValveOffHmi: BOOL;
	bCEPistonValveOnHmi: BOOL;
	bCEPistonValveOffHmi: BOOL;
	bLTPistonValveOnHmi: BOOL;
	bLTPistonValveOffHmi: BOOL;
	bBTightPistonValveOnHmi: BOOL;
	bBTightPistonValveOffHmi: BOOL;
	bECCMotorOnHmi: BOOL;
	bECCMotorOffHmi: BOOL;
	bCCMotorOnHmi: BOOL;
	bCCMotorOffHmi: BOOL;
	bVPValveOnHmi: BOOL;
	bVPValveOffHmi: BOOL;
	bSHPistonValveREVOnHmi: BOOL;
	bSHPistonValveREVOffHmi: BOOL;
	bQMSeparatorHorizontalPistonValveFOR: BOOL;
	bQMColumnPushPistonValveY: BOOL;
	bCPushPistonValveYOnHmi: BOOL;
	bCPushPistonValveYOffHmi: BOOL;
	bMManualSealOn: BOOL;
	bQMLengthPistonValve: BOOL;
	bQMBreathPistonValve: BOOL;
	bQMGrossWtPiston: BOOL;
	bQMRollerConvMotor: BOOL;
	bGWPistonOffHmi1: BOOL;
	bManualModeOn: BOOL;
END_VAR
                                                                                               '              , tє           GVL_OutputFlags йН`	йН`     и|џџ           +  VAR_GLOBAL



		bQAConeFeedingPistonValve  :BOOL;
		bQAForwardPistonValve  :BOOL;
		bQAWrappingChannelPistonValve1  :BOOL;
		bQAWrappingChannelPistonValve2 :BOOL;
		bQAWrappingChannelPistonValve3:BOOL;
		bQASealingTopPistonValve :BOOL;
		bQASealingBottomPistonValve:BOOL;
		bQASealingSeparatorYAxisPistonValve :BOOL;

		bQASealingSeparatorXAxisPistonValve :BOOL;
		bQAFeedingConveyorMotor :BOOL;
		bQAWrappingConveyorMotor:BOOL;
		bQAFilmRollerMotor1 :BOOL;
		bQAFilmRollerMotor2 :BOOL;
		bQAFilmRollerMotor3 :BOOL;
		bQASealingConveyorMotorFWD :BOOL;







		bQAUnitARowStopperMotorFwd  :BOOL;
		bQAUnitARowStopperMotorRev  :BOOL;
		bQAUnitBRowStopperMotorFwd  :BOOL;
		bQAUnitBRowStopperMotorRev :BOOL;
		bQAUnitAWeightOkLamp :BOOL;
		bQAUnitAWeightNokLamp  :BOOL;
		bQAUnitBWeightOkLamp :BOOL;
		bQAUnitBWeightNokLamp  :BOOL;


		bQABuzzer :BOOL;
		bQASpare1 :BOOL;
		bQASpare2 :BOOL;
		bQASpare3  :BOOL;
		bQASpare4  :BOOL;

	bQAUnitA_RowStopperMotorReverse1: BOOL;
	bQAUnitA_RowStopperMotorForward1: BOOL;
	bQASealingConveyorMotor: BOOL;

	bQASealingConveyor1: BOOL;
	bQAWrappingConveyorMotor1: BOOL;
	bQAWrappingConveyorMotor2: BOOL;
	bQAWrappingConveyorMotor3: BOOL;
	bQAAmber: BOOL;
	bQAGreen: BOOL;
	bQARed: BOOL;
	(*UnitBCompleteCheckCount: CTU;*)
END_VAR
                                                                                               '              , t  Qd            GVL_Outputs йН`	йН`     и|џџ           щ  VAR_GLOBAL

		(*===============EL2809-1(Main) ===========*)


		bQConeFeedingPistonValve AT %QX0.0 :BOOL;
		bQForwardPistonValve AT %QX0.1 :BOOL;
		bQWrappingChannelPistonValve1 AT %QX0.2 :BOOL;
		bQWrappingChannelPistonValve2 AT %QX0.3:BOOL;
		bQWrappingChannelPistonValve3 AT %QX0.4:BOOL;
		bQSealingTopPistonValve AT %QX0.5:BOOL;
		bQSealingBottomPistonValve AT %QX0.6:BOOL;
		bQSealingSeparatorYAxisPistonValve AT %QX0.7:BOOL;

		bQSealingSeparatorXAxisPistonValve  AT %QX1.0:BOOL;
		bQFeedingConveyorMotor AT %QX1.1:BOOL;
		bQWrappingConveyorMotor AT %QX1.2:BOOL;
		bQFilmRollerMotor1 AT %QX1.3:BOOL;
		bQFilmRollerMotor2 AT %QX1.4:BOOL;
		bQFilmRollerMotor3 AT %QX1.5:BOOL;
		bQSealingConveyorMotorFWD AT %QX1.6:BOOL;
		bQUnitARowStopperMotorFwd AT %QX1.7:BOOL;



		(*===============EL2809-2( Main )===========*)



		bQUnitARowStopperMotorRev AT %QX2.0 :BOOL;
		bQUnitBRowStopperMotorFwd AT %QX2.1 :BOOL;
		bQUnitBRowStopperMotorRev AT %QX2.2:BOOL;
		bQUnitAWeightOkLamp  AT %QX2.3:BOOL;
		bQUnitAWeightNokLamp  AT %QX2.4:BOOL;
		bQUnitBWeightOkLamp  AT %QX2.5:BOOL;
		bQUnitBWeightNokLamp  AT %QX2.6:BOOL;
		bQTLGreen AT %QX2.7 :BOOL;

		bQTLAmber AT %QX3.0 :BOOL;
		bQTLRed AT %QX3.1 :BOOL;
		bQBuzzer AT %QX3.2 :BOOL;
		bQGross_Roller_On AT %QX3.3:BOOL;
		bQGross_Cylinder_On AT %QX3.4:BOOL;
		bQSpare3 AT %QX3.5:BOOL;
		bQSpare4  AT %QX3.6:BOOL;
		bQSpare5  AT %QX3.7:BOOL;



		(*===============EL2008-2( Main )===========*)








END_VAR
                                                                                               '              , єtX        	   GVL_Reset йН`	йН`     и|џџ           p  VAR_GLOBAL
	bQRForwardPistonValve: BOOL;
	bQRWrappingChannelPistonValve2: BOOL;
	bQRWrappingChannelPistonValve3: BOOL;
	bQRSealingTopPistonValve: BOOL;
	bQRSealingSeparatorYAxisPistonValve: BOOL;
	bQRSealingSeparatorXAxisPistonValve: BOOL;
	bQRSealingConveyorMotor: BOOL;
	bQRWrappingChannelPistonValve1: BOOL;
	bQRWrappingConveyorMotor: BOOL;
	bFwdPistonRst: BOOL;
	bARWrappingCone123OnRst: BOOL;

	bAR3ConeWrappOver: BOOL;
	bSaelUnitIntOver: BOOL;
	bWCSStart1: BOOL;
	bAInitializeSeq: BOOL;
	bSealConvIntOver: BOOL;
	sSealConvStatus: STRING;
	sWrapConvStatus: STRING;
	bWrpConvIntOver: BOOL;
END_VAR
                                                                                               '              , с  ,l         
   GVL_Serial Ѕћ`	Ѕћ`     и|џџ           Р  VAR_GLOBAL
	rRetUnitBWeight: REAL;
	rRetUnitAWeight: REAL;
	COMin_COMPort AT %I*: EL6inData22B;
	COMOut_COMPort AT %Q*: EL6outData22B;
	TxBuffer1: ComBuffer;
	RxBuffer1: ComBuffer;

	COMin_2_COMport_2 AT %I*: EL6inData22B;
	COMout_2_COMport_2 AT %Q*: EL6outData22B;
	TxBuffer2: ComBuffer;
	RxBuffer2: ComBuffer;

	COMin_3_COMport_3 AT %I*: EL6inData22B;
	COMout_3_COMport_3 AT %Q*: EL6outData22B;
	TxBuffer3: ComBuffer;
	RxBuffer3: ComBuffer;

	COMin_4_COMport_4 AT %I*: EL6inData22B;
	COMout_4_COMport_4 AT %Q*: EL6outData22B;
	TxBuffer4: ComBuffer;
	RxBuffer4: ComBuffer;

	rGrossWeight: REAL;
	bGrossWieghtNokTemp: BOOL;
	bGrossWieghtOk: BOOL;
	bQAGrossWieghtOkIndi: BOOL;
	bGrossWieghtNOk: BOOL;
	GrossWtReedSwBit: BOOL;
	bIGrossWtPistonHome: BOOL;
	bAGrossWtHomeSenRsError: BOOL;
	One_Min_Conv_1: INT;
	rGrossWeighToReport: REAL;
END_VAR

VAR_GLOBAL PERSISTENT
	sGrosswt AT %Q*: REAL;
	sGrossTol AT %Q*: REAL;
END_VAR                                                                                               '             ,   +        
   PARAMETERS Ѕћ`	Ѕћ`      XИ>          Ї  VAR_GLOBAL
	SAVE: BOOL;
	TotalCones: DINT;
	iBagCount: DINT;
	LOAD: BOOL;
	sBagNoRep: STRING;
	sDayMonthYearDate: STRING;
	PROCESSCOMPLETE: BOOL;



	PRGNO_LOAD: DINT;
	NegTolEnableHmi AT %Q*: BOOL;
	NegTol1EnableHmi AT %Q*: BOOL;
	NegTol2EnableHmi AT %Q*: BOOL;
	NegTol3EnableHmi AT %Q*: BOOL;
	NegTol4EnableHmi AT %Q*: BOOL;
	NegTol5EnableHmi AT %Q*: BOOL;

	PRGNO_DIS AT %Q*: DINT;
	COUNT_DIS AT %Q*: STRING(80);
	DETAILS_DIS AT %Q*: STRING(80);
	LOTNO_DIS AT %Q*: STRING(80);
	CARTONNO_DIS AT %Q*: DINT;
	WORKORDERNO_DIS:STRING;
	BLEND_DIS:STRING;
	SHADE_DIS:STRING;
	CONETIP_DIS:STRING;
	CONELENGTH_DIS:REAL;
	CONENETWT_DIS:REAL;
	DFLTNETWT_DIS AT %Q*: REAL;
	NETWTTOL_DIS AT %Q*: REAL;
	DFLTGROSSWT_DIS AT %Q*: REAL;
	GROSSWTTOL_DIS AT %Q*: REAL;
	NegTol_DIS AT %Q*: REAL;



	PRGNO AT %Q*: DINT;
	COUNT AT %Q*: STRING(80);
	DETAILS AT %Q*: STRING(80);
	LOTNO AT %Q*: STRING(80);
	CARTONNO AT %Q*: DINT;
	WORKORDERNO:STRING;
	BLEND:STRING;
	SHADE:STRING;
	CONETIP:STRING;
	CONELENGTH:REAL;
	CONENETWT:REAL;
	DFLTNETWT AT %Q*: REAL;
	NETWTTOL AT %Q*: REAL;
	DFLTGROSSWT AT %Q*: REAL;
	GROSSWTTOL AT %Q*: REAL;
	NegTol AT %Q*: REAL;

	PRGNO1 AT %Q*: DINT;
	COUNT1 AT %Q*: STRING(80);
	DETAILS1 AT %Q*: STRING(80);
	LOTNO1 AT %Q*: STRING(80);
	CARTONNO1 AT %Q*: DINT;
	WORKORDERNO1:STRING;
	BLEND1:STRING;
	SHADE1:STRING;
	CONETIP1:STRING;
	CONELENGTH1:REAL;
	CONENETWT1:REAL;
	DFLTNETWT1 AT %Q*: REAL;
	NETWTTOL1 AT %Q*: REAL;
	DFLTGROSSWT1 AT %Q*: REAL;
	GROSSWTTOL1 AT %Q*: REAL;
	NegTol1 AT %Q*: REAL;

	PRGNO2 AT %Q*: DINT;
	COUNT2 AT %Q*: STRING(80);
	DETAILS2 AT %Q*: STRING(80);
	LOTNO2 AT %Q*: STRING(80);
	CARTONNO2 AT %Q*: DINT;
	WORKORDERNO2:STRING;
	BLEND2:STRING;
	SHADE2:STRING;
	CONETIP2:STRING;
	CONELENGTH2:REAL;
	CONENETWT2:REAL;
	DFLTNETWT2 AT %Q*: REAL;
	NETWTTOL2 AT %Q*: REAL;
	DFLTGROSSWT2 AT %Q*: REAL;
	GROSSWTTOL2 AT %Q*: REAL;
	NegTol2 AT %Q*: REAL;

	PRGNO3 AT %Q*: DINT;
	COUNT3 AT %Q*: STRING(80);
	DETAILS3 AT %Q*: STRING(80);
	LOTNO3 AT %Q*: STRING(80);
	CARTONNO3 AT %Q*: DINT;
	WORKORDERNO3:STRING;
	BLEND3:STRING;
	SHADE3:STRING;
	CONETIP3:STRING;
	CONELENGTH3:REAL;
	CONENETWT3:REAL;
	DFLTNETWT3 AT %Q*: REAL;
	NETWTTOL3 AT %Q*: REAL;
	DFLTGROSSWT3 AT %Q*: REAL;
	GROSSWTTOL3 AT %Q*: REAL;
	NegTol3 AT %Q*: REAL;

	PRGNO4 AT %Q*: DINT;
	COUNT4 AT %Q*: STRING(80);
	DETAILS4 AT %Q*: STRING(80);
	LOTNO4 AT %Q*: STRING(80);
	CARTONNO4 AT %Q*: DINT;
	WORKORDERNO4:STRING;
	BLEND4:STRING;
	SHADE4:STRING;
	CONETIP4:STRING;
	CONELENGTH4:REAL;
	CONENETWT4:REAL;
	DFLTNETWT4 AT %Q*: REAL;
	NETWTTOL4 AT %Q*: REAL;
	DFLTGROSSWT4 AT %Q*: REAL;
	GROSSWTTOL4 AT %Q*: REAL;
	NegTol4 AT %Q*: REAL;


	PRGNO5 AT %Q*: DINT;
	COUNT5 AT %Q*: STRING(80);
	DETAILS5 AT %Q*: STRING(80);
	LOTNO5 AT %Q*: STRING(80);
	CARTONNO5 AT %Q*: DINT;
	WORKORDERNO5:STRING;
	BLEND5:STRING;
	SHADE5:STRING;
	CONETIP5:STRING;
	CONELENGTH5:REAL;
	CONENETWT5:REAL;
	DFLTNETWT5 AT %Q*: REAL;
	NETWTTOL5 AT %Q*: REAL;
	DFLTGROSSWT5 AT %Q*: REAL;
	GROSSWTTOL5 AT %Q*: REAL;
	NegTol5 AT %Q*: REAL;


	PRGNO6:DINT;
	COUNT6:STRING;
	DETAILS6:STRING;
	LOTNO6:STRING;
	CARTONNO6:DINT;
	WORKORDERNO6:STRING;
	BLEND6:STRING;
	SHADE6:STRING;
	CONETIP6:STRING;
	CONELENGTH6:REAL;
	CONENETWT6:REAL;
	DFLTNETWT6:REAL;
	NETWTTOL6:REAL;
	DFLTGROSSWT6:REAL;
	GROSSWTTOL6:REAL;


	PRGNO7:DINT;
	COUNT7:STRING;
	DETAILS7:STRING;
	LOTNO7:STRING;
	CARTONNO7:DINT;
	WORKORDERNO7:STRING;
	BLEND7:STRING;
	SHADE7:STRING;
	CONETIP7:STRING;
	CONELENGTH7:REAL;
	CONENETWT7:REAL;
	DFLTNETWT7:REAL;
	NETWTTOL7:REAL;
	DFLTGROSSWT7:REAL;
	GROSSWTTOL7:REAL;


	PRGNO8:DINT;
	COUNT8:STRING;
	DETAILS8:STRING;
	LOTNO8:STRING;
	CARTONNO8:DINT;
	WORKORDERNO8:STRING;
	BLEND8:STRING;
	SHADE8:STRING;
	CONETIP8:STRING;
	CONELENGTH8:REAL;
	CONENETWT8:REAL;
	DFLTNETWT8:REAL;
	NETWTTOL8:REAL;
	DFLTGROSSWT8:REAL;
	GROSSWTTOL8:REAL;


	PRGNO9:DINT;
	COUNT9:STRING;
	DETAILS9:STRING;
	LOTNO9:STRING;
	CARTONNO9:DINT;
	WORKORDERNO9:STRING;
	BLEND9:STRING;
	SHADE9:STRING;
	CONETIP9:STRING;
	CONELENGTH9:REAL;
	CONENETWT9:REAL;
	DFLTNETWT9:REAL;
	NETWTTOL9:REAL;
	DFLTGROSSWT9:REAL;
	GROSSWTTOL9:REAL;


	PRGNO10:DINT;
	COUNT10:STRING;
	DETAILS10:STRING;
	LOTNO10:STRING;
	CARTONNO10:DINT;
	WORKORDERNO10:STRING;
	BLEND10:STRING;
	SHADE10:STRING;
	CONETIP10:STRING;
	CONELENGTH10:REAL;
	CONENETWT10:REAL;
	DFLTNETWT10:REAL;
	NETWTTOL10:REAL;
	DFLTGROSSWT10:REAL;
	GROSSWTTOL10:REAL;

	PRG1RUNNING AT %Q*: BOOL;
	PRG2RUNNING AT %Q*: BOOL;
	PRG3RUNNING AT %Q*: BOOL;
	PRG4RUNNING AT %Q*: BOOL;
	PRG5RUNNING AT %Q*: BOOL;
	PRG6RUNNING: BOOL;
	PRG7RUNNING: BOOL;
	PRG8RUNNING: BOOL;
	PRG9RUNNING: BOOL;
	PRG10RUNNING: BOOL;
	PRINTENABLE: BOOL;
	PRINTENABLED: BOOL;

	DfltWtPrint: BOOL;
	DfltGrossWtPrint_En: BOOL;
	GrossWtPrintDflt: BOOL;
	NetwtPrint: STRING;
	GrosswtPrint: STRING;

	ReportPath: STRING;
	sDayF1: STRING;
	sMonthF1: STRING;
	sDayMonth1: STRING;

	ReportPath_Final_2: STRING;
	FB_DateTime_2: FB_DateTime;
	sDaateReport: STRING;







	sDayMonthYear1: STRING;

	sDayMonthYear: STRING;
	ReportPath_Final_1: STRING;
	ReportPath_Final: STRING;
END_VAR
                                                                                               '             , Џ Џ D           PRINT Ѕћ`	Ѕћ`    ONT(roct        t  VAR_GLOBAL

	ProductionData_Print: STRING(255);
	ProductionDataValues_Print: STRING(255);
	ProductionDataValues_Print_Com:STRING(255);
	PrintOk: BOOL;
	PrintEnableHmi: BOOL;
	PrintValue: INT;
	bANewDay: BOOL;
	ProductionDataValues_IndoPrint: STRING(255);
	ProductionData_IndoPrint: STRING(255);
	ProductionDataError_IndoPrint: STRING(255);

	ProductionData_IndoPrint2:STRING(255);
	ProductionDataError_IndoPrint2:STRING(255);
	ProductionDataValues_IndoPrint_Com:STRING(255);
		ProductionDataValuesError_IndoPrint_Com:STRING(255);
	ProductionData_IndoPrint11 : ProductionData_IndoPrint1;

	SerialNoError: DINT;




	ReportPathError: STRING;
	ReportPath_FinalError: STRING;
	ReportPath_Final_1Error: STRING;
	ReportPath_Final_2Error: STRING;
	stStation1_ProductionData:Production_Data;
	sHourPreFix: STRING;
	sHou: STRING;
	sDayPreFix: STRING;
	sDay: STRING;
	sMonthPreFix: STRING;
	sMonth: STRING;
	sDayF: STRING;
	sMonthF: STRING;
	sDayMonth: STRING;

	SerialNo AT %Q*: DINT;
	BagSerialNo: DINT;
	ReportSave: BOOL;
	wTodayToHmiFinal: STRING;
	Default_NetWeight_Report: STRING;
	Default_GrossWeight_Report: STRING;
	Actual_NetWeight_Report: STRING;
	Actual_GrossWeight_Report: STRING;
	negativetolerance AT %Q*: BOOL;
	DefaultNetWt AT %Q*: REAL;
	NetWtTolRep AT %Q*: REAL;
	DefaultGrossWt AT %Q*: REAL;
	GrossWtTolRep AT %Q*: REAL;


END_VAR
                                                                                               '                                 TwinCAT_Configuration йН`	Ѕћ`    at15 Ts         (  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.b12ConeModelSelected AT %QX288.0 : BOOL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Model_1} *)
	.b18ConeModelSelected AT %QX288.1 : BOOL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Model_2} *)
	.b24ConeModelSelected AT %QX288.2 : BOOL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Model_3} *)
	.b32ConeModelSelected AT %QX288.3 : BOOL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Model_4} *)
	.rSealCompDlyHmi AT %QB52 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^SealDly} *)
	.iNetTolHmi AT %QB56 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^NetWtTol} *)
	.iNetWtHmi AT %QB60 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^NetWt} *)
	.iLotNoHmi AT %QB64 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Var 339} *)
	.iWorkOrderNoHmi AT %QB148 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^WorkOrderHmi} *)
	.NegToleranceEnabled AT %QX288.4 : BOOL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Var 278} *)
	.b16ConeModelSelected AT %QX288.5 : BOOL;
	.ProgramNoHmi AT %QB2276 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^PrgNo} *)
	.CountCodeHmi AT %QB2280 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^CountCode} *)
	.CartonNoHmi AT %QB2362 : INT;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^CartonNo} *)
	.DefaultNetWeightHmi AT %QB2364 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^DfltNetWt} *)
	.DefaultGrossWeightHmi AT %QB2368 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^DfltGrossWt} *)
	.EmptyConeWt AT %QB3640 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^EmptyConet} *)
	.BlendHmi AT %QB2372 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Blend} *)
	.ShadeHmi AT %QB2456 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Shade} *)
	.ConeTipHmi AT %QB2540 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^ConeTip} *)
	.ConeNettHmi AT %QB2624 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^ConeNetWt} *)
	.ConeLengthHmi AT %QB2708 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^ConeLen} *)
	.Dom_ExpHmi AT %QB2712 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Dom} *)
	.PackTypeHmi AT %QB2796 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^PackType} *)
	.ItemCodeHmi AT %QB2880 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^ItemCode} *)
	.IssueDesp AT %QB2964 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^IssueDes} *)
	.Location AT %QB3048 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Location} *)
	.Description AT %QB3132 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Description} *)
	.Remarks AT %QB3216 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Remarks} *)
	.Fyear AT %QB3300 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^FYear} *)
	.AvgCount AT %QB3384 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Avg_Count} *)
	.TareWeight AT %QB3468 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^TareWeight} *)
	.BarCode AT %QB3472 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Var 280} *)
	.WorkFlag AT %QB3556 : STRING(80);	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Var 279} *)
	.COMin_3_COMport_3 AT %IB56 : EL6inData22B;
	.COMout_3_COMport_3 AT %QB232 : EL6outData22B;
	.COMin_4_COMport_4 AT %IB80 : EL6inData22B;
	.COMout_4_COMport_4 AT %QB256 : EL6outData22B;
	.sGrosswt AT %QB280 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^GrossWt} *)
	.sGrossTol AT %QB284 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^GrossWtTol} *)
	.NegTolEnableHmi AT %QX2272.0 : BOOL;
	.NegTol1EnableHmi AT %QX2272.1 : BOOL;
	.NegTol2EnableHmi AT %QX2272.2 : BOOL;
	.NegTol3EnableHmi AT %QX2272.3 : BOOL;
	.NegTol4EnableHmi AT %QX2272.4 : BOOL;
	.NegTol5EnableHmi AT %QX2272.5 : BOOL;
	.PRGNO_DIS AT %QB292 : DINT;
	.COUNT_DIS AT %QB296 : STRING(80);
	.DETAILS_DIS AT %QB380 : STRING(80);
	.LOTNO_DIS AT %QB464 : STRING(80);
	.CARTONNO_DIS AT %QB548 : DINT;
	.DFLTNETWT_DIS AT %QB552 : REAL;
	.NETWTTOL_DIS AT %QB556 : REAL;
	.DFLTGROSSWT_DIS AT %QB560 : REAL;
	.GROSSWTTOL_DIS AT %QB564 : REAL;
	.NegTol_DIS AT %QB568 : REAL;
	.PRGNO AT %QB572 : DINT;
	.COUNT AT %QB576 : STRING(80);
	.DETAILS AT %QB660 : STRING(80);
	.LOTNO AT %QB744 : STRING(80);
	.CARTONNO AT %QB828 : DINT;
	.DFLTNETWT AT %QB832 : REAL;
	.NETWTTOL AT %QB836 : REAL;
	.DFLTGROSSWT AT %QB840 : REAL;
	.GROSSWTTOL AT %QB844 : REAL;
	.NegTol AT %QB848 : REAL;
	.PRGNO1 AT %QB852 : DINT;
	.COUNT1 AT %QB856 : STRING(80);
	.DETAILS1 AT %QB940 : STRING(80);
	.LOTNO1 AT %QB1024 : STRING(80);
	.CARTONNO1 AT %QB1108 : DINT;
	.DFLTNETWT1 AT %QB1112 : REAL;
	.NETWTTOL1 AT %QB1116 : REAL;
	.DFLTGROSSWT1 AT %QB1120 : REAL;
	.GROSSWTTOL1 AT %QB1124 : REAL;
	.NegTol1 AT %QB1128 : REAL;
	.PRGNO2 AT %QB1132 : DINT;
	.COUNT2 AT %QB1136 : STRING(80);
	.DETAILS2 AT %QB1220 : STRING(80);
	.LOTNO2 AT %QB1304 : STRING(80);
	.CARTONNO2 AT %QB1388 : DINT;
	.DFLTNETWT2 AT %QB1392 : REAL;
	.NETWTTOL2 AT %QB1396 : REAL;
	.DFLTGROSSWT2 AT %QB1400 : REAL;
	.GROSSWTTOL2 AT %QB1404 : REAL;
	.NegTol2 AT %QB1408 : REAL;
	.PRGNO3 AT %QB1412 : DINT;
	.COUNT3 AT %QB1416 : STRING(80);
	.DETAILS3 AT %QB1500 : STRING(80);
	.LOTNO3 AT %QB1584 : STRING(80);
	.CARTONNO3 AT %QB1668 : DINT;
	.DFLTNETWT3 AT %QB1672 : REAL;
	.NETWTTOL3 AT %QB1676 : REAL;
	.DFLTGROSSWT3 AT %QB1680 : REAL;
	.GROSSWTTOL3 AT %QB1684 : REAL;
	.NegTol3 AT %QB1688 : REAL;
	.PRGNO4 AT %QB1692 : DINT;
	.COUNT4 AT %QB1696 : STRING(80);
	.DETAILS4 AT %QB1780 : STRING(80);
	.LOTNO4 AT %QB1864 : STRING(80);
	.CARTONNO4 AT %QB1948 : DINT;
	.DFLTNETWT4 AT %QB1952 : REAL;
	.NETWTTOL4 AT %QB1956 : REAL;
	.DFLTGROSSWT4 AT %QB1960 : REAL;
	.GROSSWTTOL4 AT %QB1964 : REAL;
	.NegTol4 AT %QB1968 : REAL;
	.PRGNO5 AT %QB1972 : DINT;
	.COUNT5 AT %QB1976 : STRING(80);
	.DETAILS5 AT %QB2060 : STRING(80);
	.LOTNO5 AT %QB2144 : STRING(80);
	.CARTONNO5 AT %QB2228 : DINT;
	.DFLTNETWT5 AT %QB2232 : REAL;
	.NETWTTOL5 AT %QB2236 : REAL;
	.DFLTGROSSWT5 AT %QB2240 : REAL;
	.GROSSWTTOL5 AT %QB2244 : REAL;
	.NegTol5 AT %QB2248 : REAL;
	.PRG1RUNNING AT %QX2272.6 : BOOL;
	.PRG2RUNNING AT %QX2272.7 : BOOL;
	.PRG3RUNNING AT %QX2273.0 : BOOL;
	.PRG4RUNNING AT %QX2273.1 : BOOL;
	.PRG5RUNNING AT %QX2273.2 : BOOL;
	.SerialNo AT %QB2252 : DINT;
	.negativetolerance AT %QX2273.3 : BOOL;
	.DefaultNetWt AT %QB2256 : REAL;
	.NetWtTolRep AT %QB2260 : REAL;
	.DefaultGrossWt AT %QB2264 : REAL;	(*  ~ {LinkedWith:TIID^Device 3 (NOV/DP-RAM)^Outputs^Var 299} *)
	.GrossWtTolRep AT %QB2268 : REAL;
END_VAR                                                                                               '           
     	UtI= it           TwinCAT_Configuration_1 йН`	йН`
     и|џџ           §   (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.COMin_COMPort AT %IB8 : EL6inData22B;
	.COMOut_COMPort AT %QB4 : EL6outData22B;
	.COMin_2_COMport_2 AT %IB32 : EL6inData22B;
	.COMout_2_COMport_2 AT %QB28 : EL6outData22B;
END_VAR                                                                                               '              , Џ Џ ]L           Variable_Configuration йН`	йН`                        VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @      HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                                    џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT   mainG         System   
   AlarmGroup                 alarm   d:\Ramaraj_public\              ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      2   HH':'mm':'ss @             Alarms   d:\          dd'-'MM'-'yy @        '          ;   , |)           Production_Data йН`	йН`      ђl{HЦ        с  
TYPE Production_Data :
STRUCT

	S_No						:STRING;
	ConeType					:STRING;
	CartonNo					:STRING;
	LotNo						:STRING;
	SDateF						:STRING;
	NetWt						:STRING;
	WorkOrderNo				:STRING;
	DefaultNettWeight				:STRING;
	DefaultGrossWeight			:STRING;
	Blend						:STRING;
	Shade						:STRING;
	ConeTip						:STRING;
	ConeNettWeight				:STRING;
	ConeLength					:STRING;
	Dom_Exp					:STRING;
	PackType					:STRING;
	CountCode					:STRING;


END_STRUCT
END_TYPE               , 2 2 љ[           ProductionData_IndoPrint1 йН`	йН`      ,	','0,	          TYPE ProductionData_IndoPrint1 :
STRUCT
	SERIALNO			:STRING;
	SDATE				:STRING;
	NOOFCONE				:STRING;
	BAGNO				:STRING;
	COUNTCODE		:STRING;
	LOTNO				:STRING;
	DFLTNETWEIGHT	:STRING;
	DFLTGRSST		:STRING;
	ACTWT	:STRING;
	BLND	:STRING;
	SHD		:STRING;
	CONTIP				:STRING;
	CONNETWT	:STRING;
	CONLEN		:STRING;
	DOM	:STRING;
	ITEMCODE:STRING;
	PACKTYP	:STRING;
	WRKORNO	:STRING;
	COUNT	:STRING;
	TAREWEIGHTDET:STRING;
	WORKFLAGDET	:STRING;
	ISSUEDESPATCH	:STRING;
	REMARKSDET:STRING;
	LOCATIONDET	:STRING;
	DESCRIPTION	:STRING;
	FINYEAR	:STRING;
	AVERAGEGCOUNT	:STRING;
	BARCODE:STRING;
END_STRUCT
END_TYPE

               , K K t           ProductionData_PrintData йН`	йН`      ,	','0,	        x  TYPE ProductionData_PrintData :
STRUCT
	Print:STRING;
	PgNo:STRING;
	TotNoCones:STRING;
	CartNo:STRING;
	LotNo:STRING;
	DateTi:STRING;
	NetWt:STRING;
	WrkOrdNo:STRING;

	DfltNetWt:STRING;
	DfltGrsWt:STRING;
	Blnd:STRING;
	Shd:STRING;
	ConeTip:STRING;
	ConeNetWt:STRING;
	ConeLenght:STRING;
	Dom:STRING;
	Pack:STRING;
	CountCod:STRING;
END_STRUCT
END_TYPE             <      	,	, X,           ST_CSV_Record йН`	йН`      ,	','0,	        н   TYPE ST_CSV_Record :
STRUCT
	sName 	: T_MaxString 	:= '';
	nNumber	: UDINT 		:= 0;
	fPos		: LREAL 		:= 0.0;
	bOP		: BOOL 		:= FALSE;
	sDesc		: STRING(40)	:= '';
	data		: ARRAY[0..7] OF STRING;
END_STRUCT
END_TYPE             #    ,   K           Auto йН`	йН`       t x        М   PROGRAM Auto
VAR
	Timer1: TON;
	Timer2: TON;
	bAmber: BOOL;
	bAGreen: BOOL;
	bARed: BOOL;
	bABuzzertest: BOOL;
	bABuzzertemp: BOOL;
	bAmberTemp: BOOL;
	bAmberbit1: BOOL;
END_VAR  

	IF bAutoModeOn AND bIMCStart THEN bAMcStartInAuto:=TRUE; bAStop:=FALSE;  END_IF

	IF NOT bIEmergency OR  bIMCStop OR bStopHmi   THEN bAMcStartInAuto:=FALSE; END_IF


IF bAutoModeOff THEN bAMcStartInAuto:=FALSE; END_IF




(*=================Model Selection Logic===============*)

IF b12ConeModelHmi AND NOT  b18ConeModelHmi AND NOT  b24ConeModelHmi AND NOT b32ConeModelHmi AND NOT bInterlockInitial_2 THEN
b12ConeModelSelected:=TRUE; b16ConeModelSelected:=FALSE; b18ConeModelSelected:=FALSE; b24ConeModelSelected:=FALSE; b32ConeModelSelected:=FALSE;  END_IF

IF NOT  b12ConeModelHmi AND   b18ConeModelHmi AND NOT  b24ConeModelHmi AND NOT b32ConeModelHmi AND NOT bInterlockInitial_2 THEN
b18ConeModelSelected:=TRUE;   b16ConeModelSelected:=FALSE; b12ConeModelSelected:=FALSE; b24ConeModelSelected:=FALSE; b32ConeModelSelected:=FALSE;   END_IF

IF  NOT b12ConeModelHmi AND NOT  b18ConeModelHmi AND   b24ConeModelHmi AND NOT b32ConeModelHmi AND NOT bInterlockInitial_2 THEN
 b24ConeModelSelected:=TRUE; b16ConeModelSelected:=FALSE;  b18ConeModelSelected:=FALSE; b12ConeModelSelected:=FALSE; b32ConeModelSelected:=FALSE;    END_IF

IF  NOT b12ConeModelHmi AND NOT  b18ConeModelHmi AND NOT  b24ConeModelHmi AND  b32ConeModelHmi AND NOT bInterlockInitial_2  THEN
b32ConeModelSelected:=TRUE;  b18ConeModelSelected:=FALSE; b24ConeModelSelected:=FALSE; b12ConeModelSelected:=FALSE;    END_IF

IF  b16ConeModelHmi AND NOT b12ConeModelHmi AND NOT  b18ConeModelHmi AND NOT  b24ConeModelHmi AND  NOT b32ConeModelHmi  AND NOT bInterlockInitial_2 THEN
 b16ConeModelSelected:=TRUE;b32ConeModelSelected:=FALSE;  b18ConeModelSelected:=FALSE; b24ConeModelSelected:=FALSE; b12ConeModelSelected:=FALSE;    END_IF


IF b12ConeModelSelected THEN iATotalNoOfCones:=12;
ELSIF b16ConeModelSelected THEN iATotalNoOfCones:=16;
ELSIF  b18ConeModelSelected THEN iATotalNoOfCones:=18;
ELSIF  b24ConeModelSelected THEN iATotalNoOfCones:=24;
ELSIF  b32ConeModelSelected THEN iATotalNoOfCones:=32;
END_IF


Timer1(IN:=(bAInializeStarted AND NOT Timer2.Q   ) ,  PT:=t#0.5s , Q=> , ET=>, );
Timer2(IN:= Timer1.Q, PT:=t#0.5s , Q=> , ET=> );

IF bIMCStart THEN bAGreen:=TRUE; END_IF

IF Timer1.Q    AND NOT  bAError   AND NOT bAStop AND NOT bAPauseSeq THEN bAmber :=TRUE; bAGreen:=FALSE;  ELSE  bAmber:=FALSE; END_IF

IF Timer1.Q OR bAMcRunninig   OR bAMcReady AND NOT bAError AND NOT bAStop  THEN bAGreen :=TRUE;   ELSE  bAGreen:=FALSE; END_IF

IF Timer1.Q OR bAStop OR  bStopHmi THEN bARed :=TRUE; (*bAGreen:=FALSE;*)  bABuzzer:=FALSE; ELSE  bARed:=FALSE; END_IF
IF  bAPauseSeq THEN bAmberbit1 :=TRUE; bAGreen:=FALSE; ELSE bAmberbit1 :=FALSE; END_IF
IF Timer1.Q  AND NOT bAPauseSeq THEN  bAmber :=TRUE;  ELSE  bAmber :=FALSE;END_IF
IF bAError THEN  bAmberbit2:=TRUE;bAGreen:=FALSE;ELSE bAmberbit2 :=FALSE;END_IF

bQAAmber:=bAmber  OR bABuzzer OR bAmberbit1 OR bAmberbit2 ;
bQAGreen:= bAGreen;
bQARed:=bARed;
 bQABuzzer:= bABuzzer;

IF NOT  bIEmergency OR bStopHmi  OR bAutoModeOff OR bIMCStop  THEN bARed :=TRUE; bAGreen:=FALSE; bAmber:=FALSE; bAMcRunninig:=FALSE; END_IF


               1   , КШ ,           blink йН`	йН`      O            9   PROGRAM blink
VAR
	timer1: TON;
	timer2: TON;
END_VAR)    џџџџ      
          bAError1        џџџџ   	      	      t#2s        џџџџ+   	   -   	      t#2s        џџџџ         
             AND NOT=                                                 џџџџ      $   
       PressureChkTimerp    TON                                                      џџџџ-      3   
       timer2$    TON                                                   d                  6   , Qd .Ш            Common йН`	йН`      (x        g  PROGRAM Common
VAR
	F_TRIG_1: F_TRIG;
	R_TRIG_1: R_TRIG;
	bAllAutoOutOff: BOOL;
	bManModeOn: BOOL;
	bManModeOff: BOOL;
	F_TRIG_2: F_TRIG;
	EverRunTimer: TON;
	FB_DateTime_1: FB_DateTime;
	sSecond: STRING;
	sMinute: STRING;
	sHour: STRING;
	sTIMEtemp2: STRING;
	sTIMEtemp1: STRING;
	sTIMETemp3: STRING;
	wTodayToHmiFinal: STRING;
	wTodayToHmi_Report: STRING;
	sBagNoRep1: STRING;
	sBagNo: INT;

	cartonno:INT;
	sBagNo1: BOOL;
	sBagNo2: BOOL;
	sBagNo3: BOOL;
	sBagNo4: BOOL;
	sBagNo5: BOOL;
	sDayFDate: STRING;
	sMonthFDate: STRING;
	sDayMonthDate: STRING;

	sDateRepo: STRING;
END_VARP  
	F_TRIG_1(CLK:=bIAutoManual , Q=> );

	R_TRIG_1(CLK:=bManualModeOn , Q=> );


IF F_TRIG_1.Q THEN bAutoModeOff:=TRUE; END_IF


IF R_TRIG_1.Q THEN bManModeOn:=TRUE; END_IF


IF bAutoModeOff AND bManModeOn THEN bAllAutoOutOff:=TRUE; bAutoModeOff:=FALSE; bManModeOn:=FALSE;  END_IF

 (*  IF bManualModeOn THEN bAutoModeOff:=FALSE; bManModeOn:=FALSE; END_IF  *)




	F_TRIG_2(CLK:=bManualModeOn , Q=> );


IF F_TRIG_2.Q THEN bAllAutoOutOff:=FALSE; END_IF



(*=============Company Logo Popup Window appear logic=============*)
PopUp:=TRUE;

EverRunTimer(IN:=PopUp , PT:=t#5s , Q=> , ET=> );

(*==============Negative Tolerance Enable Hmi===================*)


IF bNegTolEnableHMI THEN NegToleranceEnabled:=TRUE; END_IF

IF bNegTolDisableHMI THEN NegToleranceEnabled:=FALSE; END_IF


(*======================= RTC==============================*)

FB_DateTime_1(NET_ID:='5.55.248.150.1.1 ' , DATE_TIME=> );

DateTimeVar:=FB_DateTime_1.DATE_TIME;

(*===== Current Date to Hmi and Reports=========*)


wTodayToHmi:=MID(STR:=DateTimeVar, LEN:=10, POS:=1);
wTodayToHmi_Report:=MID(STR:=DateTimeVar, LEN:=8, POS:=1);
sDay:=wTodayToHmi_Report;
wTodayToHmiFinal:=MID(STR:=DateTimeVar, LEN:=20, POS:=1);

sDATEFinal:=  (wTodayToHmiFinal);
(*=======Current TIME to Reports========*)
sTIME:= CONCAT (sTIMETemp3, sSecond) ;
sTIMETemp3:=CONCAT(sTIMEtemp2, ':');

sTIMEtemp2:=CONCAT( sTIMEtemp1 , sMinute);

sTIMEtemp1:=CONCAT(sHour, ':');

sHour:=DWORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wHour);

sMinute:=DWORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wMinute);

sSecond:=DWORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wSecond);

(*wTodayToHmi:=STRING_TO_WORD(wTodayToHmiTemp);  *)

logDay:= WORD_TO_STRING (FB_DateTime_1.FBLTIME.systemTime.wDay);

FB_DateTime_1.FBLTIME.systemTime.wDayOfWeek;

FB_DateTime_1.FBLTIME.systemTime.wHour;

FB_DateTime_1.FBLTIME.systemTime.wMilliseconds;


FB_DateTime_1.FBLTIME.systemTime.wMinute;

LogMonth:= WORD_TO_STRING (FB_DateTime_1.FBLTIME.systemTime.wMonth);



FB_DateTime_1.FBLTIME.systemTime.wSecond;



LogYear:=WORD_TO_STRING (FB_DateTime_1.FBLTIME.systemTime.wYear);








					(****************DATE AND TIME***********)

(*======================= RTC==============================*)

FB_DateTime_2(NET_ID:='5.55.248.150.1.1 ' , DATE_TIME=> );

IF FB_DateTime_1.FBLTIME.systemTime.wHour >0 AND  FB_DateTime_1.FBLTIME.systemTime.wHour<9 THEN sHourPreFix:='0';

sHou:=CONCAT(STR1:=sHourPreFix, Str2:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wHour));

ELSIF FB_DateTime_1.FBLTIME.systemTime.wHour >=10 AND  FB_DateTime_1.FBLTIME.systemTime.wHour<=24 THEN

sHou:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wHour);

END_IF




IF FB_DateTime_1.FBLTIME.systemTime.wDay >0 AND  FB_DateTime_1.FBLTIME.systemTime.wDay<10 THEN sDayPreFix:='0';

sDay:=CONCAT(STR1:=sDayPreFix, Str2:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wDay));

ELSIF FB_DateTime_1.FBLTIME.systemTime.wDay >=10 AND  FB_DateTime_1.FBLTIME.systemTime.wDay<=31 THEN

sDay:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wDay);

END_IF




IF FB_DateTime_1.FBLTIME.systemTime.wMonth >0 AND  FB_DateTime_1.FBLTIME.systemTime.wMonth<10 THEN sMonthPreFix:='0';

sMonth:=CONCAT(STR1:=sMonthPreFix, Str2:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wMonth));

ELSIF FB_DateTime_1.FBLTIME.systemTime.wMonth >=10 AND  FB_DateTime_1.FBLTIME.systemTime.wMonth<=12 THEN

sMonth:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wMonth);

END_IF
cartonno:=(CartonNoHmi);


IF cartonno>=0 AND cartonno<10 THEN sBagNo1:=TRUE;sBagNo2:=FALSE;sBagNo3:=FALSE;sBagNo4:=FALSE;sBagNo5:=FALSE;
ELSIF CartonNoHmi >= 10 AND CartonNoHmi < 100 THEN sBagNo2:=TRUE;sBagNo1:=FALSE;sBagNo3:=FALSE;sBagNo4:=FALSE;sBagNo5:=FALSE;
ELSIF CartonNoHmi >= 100 AND CartonNoHmi < 1000 THEN sBagNo3:=TRUE;sBagNo2:=FALSE;sBagNo1:=FALSE;sBagNo4:=FALSE;sBagNo5:=FALSE;
ELSIF CartonNoHmi >= 1000 AND CartonNoHmi < 10000 THEN sBagNo4:=TRUE;sBagNo2:=FALSE;sBagNo3:=FALSE;sBagNo1:=FALSE;sBagNo5:=FALSE;
ELSIF CartonNoHmi >= 10000 THEN sBagNo5:=TRUE;sBagNo2:=FALSE;sBagNo3:=FALSE;sBagNo4:=FALSE;sBagNo1:=FALSE;END_IF
IF sBagNo1 THEN sBagNoRep1:='0000';
ELSIF sBagNo2 THEN sBagNoRep1:='000';
ELSIF sBagNo3 THEN sBagNoRep1:='00';
ELSIF sBagNo4 THEN sBagNoRep1:='0';
ELSIF sBagNo1 THEN sBagNoRep1:='';
END_IF


sBagNoRep:=CONCAT(STR1:=(sBagNoRep1), STR2:=INT_TO_STRING(CartonNoHmi));



sDayF1:=CONCAT(STR1:=sDay, STR2:=':');
sMonthF1:=CONCAT(STR1:=sMonth, STR2:=':');
sDayMonth1:=CONCAT(STR1:=sDayF1, STR2:=sMonthF1);
sDayMonthYear1:=CONCAT(STR1:=sDayMonth1, STR2:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wYear));




sDayFDate:=CONCAT(STR1:=sDay, STR2:='/');
sMonthFDate:=CONCAT(STR1:=sMonth, STR2:='/');
sDayMonthDate:=CONCAT(STR1:=sDayFDate, STR2:=sMonthFDate);
sDayMonthYearDate:=CONCAT(STR1:=sDayMonthDate, STR2:=(*WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wYear)*)sDateRepo);


sDateRepo:=MID(STR:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wYear), LEN:=2, POS:=3);

sDaateReport:=(sDayMonthYearDate);




sDayF:=CONCAT(STR1:=sDay, STR2:='_');
sMonthF:=CONCAT(STR1:=sMonth, STR2:='_');
sDayMonth:=CONCAT(STR1:=sDayF, STR2:=sMonthF);
sDayMonthYear:=CONCAT(STR1:=sDayMonth, STR2:=WORD_TO_STRING(FB_DateTime_1.FBLTIME.systemTime.wYear));

ReportPath:=CONCAT(STR1:='ProductionData', STR2:='_');
ReportPath_Final:=CONCAT(STR1:=ReportPath, STR2:=sDayMonthYear);

ReportPath_Final_1:=CONCAT(STR1:='\\Admin-PC\Reports\', STR2:=ReportPath_Final);
ReportPath_Final_2:=CONCAT(STR1:=ReportPath_Final_1, STR2:='.csv');









               .   , н u Къ            ConeAllignAlarm йН`	йН`       §џ             PROGRAM ConeAllignAlarm
VAR
	ConeMiss: INT;
	TON_1: TON;
	TON_2: TON;
	ConeMissErr: RS_Error;
	TON1: TON;

	bPloyShoeetSensError: BOOL;
END_VAR  (*...................Cone Allignment Alarm.....................*)

IF bQAWrappingConveyorMotor1 THEN TON1(IN:=TRUE , PT:= t#5s, Q=> , ET=> );  ELSE  TON1(IN:=FALSE); END_IF
IF TON1.Q AND NOT bIWrappingConeDeductionSen THEN bAConeMissErrorAtWrpConv:=TRUE; END_IF
IF TON1.Q  AND bIWrappingConeDeductionSen THEN bAConeMissErrorAtWrpConv:=FALSE; ConeMissAlarm:='';  TON1(IN:=FALSE);END_IF
IF bErrorReset THEN TON1(IN:=FALSE); END_IF

IF NOT bIEmergency OR bStopHmi THEN bAConeMissErrorAtWrpConv:=FALSE; END_IF



IF bAConeMissErrorAtWrpConv THEN
ConeMissAlarm:='Allign the Cone At  Wrapping Conveyer';
ELSIF bConeMiss1AtWrapConv THEN
ConeMissAlarm:='Allign the Cone At Wrapping Conveyer ';
ELSIF bConeMiss2AtWrapConv THEN
ConeMissAlarm:='Allign the Cone At  Wrapping Conveyer ';
ELSIF bPloySheetSensError THEN
ConeMissAlarm:='Allign the Cone At  Wrapping Conveyer ';
ELSIF NOT bAConeMissErrorAtWrpConv AND NOT bConeMiss1AtWrapConv AND NOT bConeMiss2AtWrapConv  AND NOT bPloySheetSensError THEN
ConeMissAlarm:=' ';

END_IF


IF  bConeMiss1AtWrapConv OR bConeMiss2AtWrapConv OR  bAConeMissErrorAtWrpConv  THEN ConeAlignErr:=TRUE; ELSE  ConeAlignErr:=FALSE; END_IF
IF bAConeMissErrorAtWrpConv AND bErrorReset THEN bAConeMissErrorAtWrpConv:=FALSE;END_IF











                  , Ас           ConeFeedConv йН`	йН`         Ф           PROGRAM ConeFeedConv
VAR
	bARetUnitRunning: BOOL;
	bConePresentInConv: BOOL;
	tConeFeedConvStopDly: TON;
	step: INT;
	TON_1: TON;
	TON_2: TON;
	TON_3: TON;
	CTU_2: CTU;
	R_TRIG_2: R_TRIG;
	CTU_2Enable: BOOL;
	TON_4: TON;


	R_TRIG_1: R_TRIG;
	TON_5: TON;
	AllOutputsOn: BOOL;
	bAConveStartsAuto: BOOL;
	R_TRIG_3: R_TRIG;
	TON_6: TON;
	bAUnitBConeCrossingOff: BOOL;
	step2: INT;
	testCounter: CTU;
	testreset: BOOL;
	bConeFeedConvRst: BOOL;
	bStopHmitemp: BOOL;
	step3: INT;
	TON_7: TON;
	R_TRIG_4: R_TRIG;
	bAUnitBConeCrossingOff_2: BOOL;
	testCounter_2: CTU;
	i3ConeCountVal: INT;
	CTU_2_UB: CTU;
	i18ConeCountVal: INT;
	bConveyorStarted: BOOL;
	bConePresentInConv_1: BOOL;
	bAAutoRetrivalEnabled: BOOL;
	bStartConeFeedConvInBypass: BOOL;
END_VAR  bQAFeedingConveyorMotor:=(bAConveStartsAuto);



IF bAutoModeOn AND NOT  bIMCStop  THEN
AllOutputsOn:=TRUE;
ELSE
AllOutputsOn:=FALSE;
END_IF

IF AllOutputsOn AND NOT bIConeOrientationTop AND bIConeFeedingPistonHome  AND NOT bAPauseSeq AND bAMcStartInAuto  THEN
bAConveStartsAuto:=TRUE;
ELSE
bAConveStartsAuto:=FALSE;

END_IF


(*
CASE step2 OF

	0:	R_TRIG_3(CLK:=bIUnitAConeCrossing , Q=> );
		IF R_TRIG_3.Q THEN TON_6(IN:= FALSE); step2:=step2+1; END_IF


	1:	TON_6(IN:= FALSE);
		step2:=step2+1;


	2:	 bAUnitBConeCrossing_1 :=TRUE;
		 step2:=6;

	3:	 step2:=step2+1;

	4: 	TON_6(IN:=  TRUE  , PT:=t#1ms , Q=> , ET=> );
		IF TON_6.Q THEN  step2:=step2+1; END_IF


	5:	 step2:=step2+1;

	6:	bAUnitBConeCrossingOff:=TRUE;
		TON_6(IN:= FALSE);
		step2:=step2+1;

	7:	 step2:=step2+1;

	8:	IF bAUnitBConeCrossingOff THEN bAUnitBConeCrossing_1:=FALSE; step2:=step2+1; END_IF

	9:	 step2:=step2+1;

	10:	bAUnitBConeCrossingOff:=FALSE;
		step2:=0;


END_CASE




*)


testCounter(
	CU:= bIUnitBConeCrossing,
	RESET:= ,
	PV:= ,
	Q=> ,
	CV=> );



(*===============Stop Sequence===========*)


IF NOT  bIEmergency OR bStopHmi  OR bAutoModeOff OR bIMCStop  THEN
	bConeFeedConvRst:=TRUE;
	bAMcStartInAuto:=FALSE;
	testCounter.RESET:=TRUE;
	bInterlockInitial_2:=FALSE;
 ELSE
	bConeFeedConvRst:=FALSE;
	testCounter.RESET:=FALSE;
	END_IF


IF bConeFeedConvRst THEN

bAConveStartsAuto:=FALSE;
END_IF



(*==================Logic is to Run the ConeFeed Conveyor Witout Retreival Unit===============*)

IF NOT bAAutoRetrivalEnabled AND bAutoModeOn AND bIMcStart  THEN bStartConeFeedConvInBypass:=TRUE; ELSE bStartConeFeedConvInBypass:=FALSE; END_IF


(*==========All Outputs Off whenchange l mode to manual  from Auto maode==========*)

                  , DсА           ConeFeedPiston йН`	йН`      E)
	oo00        ї  PROGRAM ConeFeedPiston
VAR

	R_TRIG_1: R_TRIG;
	CounterTiltRst: BOOL;
	step: INT;

	ConeFeedConvFwdDly1: TON;
	CounterTilt23Rst: BOOL;
	CounterTilt23Rst_R_TRIG: R_TRIG;

	bAConeFeedFwdStart23: BOOL;
	CTU_1: CTU;
	test: BOOL;
	CounterTilt23Enable: BOOL;

	CounterTilt23Rst_TRIG: R_TRIG;
	bQAConeFeedingPistonOnAuto1: BOOL;
	bIForwardPistonHometemp: BOOL;
	bIReversePistonHometemp: BOOL;
	bITiltingEndtemp: BOOL;
	bITiltingHometemp: BOOL;


	bErrorCheckBit1: BOOL;

	tFwdRSErrCheckDly: TON;

	FwdRevCylHomeSenOk: BOOL;
	FwdRevCylHomeSenErr: BOOL;
	testtemp: BOOL;
	Timer1: TON;
	bAConeFeedCylReady: BOOL;
	bAConeFeedCylReady1: BOOL;
	bAConeFeedCylReady2: BOOL;
	bAConeFeedCylReady3: BOOL;
	bAConeFeedCylReady4: BOOL;
END_VAR`  (*==================== Cone Feeding Piston Logic For 2*3 Model==================*)




		IF   bAutoModeOn AND ConeFeedConvFwdDly1.Q  AND bIConeFeedingPistonHome   AND bIForwardPistonHome   AND  NOT bAPauseSeq AND bAConeFeedCylReady       THEN
		bQAConeFeedingPistonOnAuto1:=TRUE;
		END_IF

		IF    bQAConeFeedingPistonValve AND bAutoModeOn AND  bIConeFeedingPistonEnd AND  NOT bAPauseSeq  AND NOT bAConeFeedCylRsError THEN
		bQAConeFeedingPistonOnAuto1:=FALSE;
		bAConeFeedOver:=TRUE;
		bAConeFeedCylReady1:=FALSE;
		bAConeFeedCylReady2:=FALSE;
		bAConeFeedCylReady3:=FALSE;
		bAConeFeedCylReady4:=FALSE;

		END_IF


(*R_TRIG_1(CLK:= bIConeOrientationTop , Q=> ); *)

ConeFeedConvFwdDly1(IN:=bIConeOrientationTop , PT:=t#0.1s , Q=> , ET=> );  (* ===old Value  PT:=t#1s *)

(*=============Output============*)

bQAConeFeedingPistonValve:=bQAConeFeedingPistonOnAuto1;

bAConeFeedCylReady:= (bAConeFeedCylReady1 OR bAConeFeedCylReady2 OR bAConeFeedCylReady3 OR bAConeFeedCylReady4 );

CASE step OF

	0:	 IF bWrpConvIntOver AND bSealConvIntOver THEN bAConeFeedCylReady1:=TRUE; step:=step+1;  END_IF

	1:	IF bAFwdPistonComp1 THEN bAConeFeedCylReady2:=TRUE; bAFwdPistonComp1:=FALSE;  step:=step+1;  END_IF

	2:	IF bAFwdPistonComp2 THEN bAConeFeedCylReady3:=TRUE;  bAFwdPistonComp2:=FALSE;	 step:=step+1;  END_IF

	3:	IF bAFwdPistonComp3 THEN bAConeFeedCylReady4:=TRUE; bAFwdPistonComp3:=FALSE;	 step:=1;  END_IF





END_CASE

	IF  NOT  bIEmergency   OR bAutoModeOff  OR  bStopHmi OR bIMCStop THEN
	bQAConeFeedingPistonOnAuto1:=FALSE;
	bAFwdPistonComp1:=FALSE;
	bAFwdPistonComp2:=FALSE;
	bAFwdPistonComp3:=FALSE;
	 bAConeFeedOver:=FALSE;
	bWrpConvIntOver:=FALSE;
	bAConeFeedCylReady1:=FALSE;
	bAConeFeedCylReady2:=FALSE;
	bAConeFeedCylReady3:=FALSE;
	bAConeFeedCylReady4:=FALSE;
	ConeFeedConvFwdDly1(IN:=FALSE);

	step:=0;
 END_IF

               /   ,   дн I           ConeMiss_Alarm йН`	йН`       §џ          P   PROGRAM ConeMiss_Alarm
VAR
	FeedForward: INT;

	iSensorOnVal: UINT;
END_VAR)  (*CASE ConeMiss OF
	0: IF UnitASenSelet=14 OR UnitASenSelet=13 OR UnitASenSelet= 11 OR UnitASenSelet= 7 THEN
	CountMess:=' Cone  NOT Missing';
	ConeMiss:=ConeMiss+1;
	END_IF

	1: IF UnitASenSelet=14 OR UnitASenSelet=13 OR UnitASenSelet= 11 OR UnitASenSelet= 7 THEN
	CountMess:='One Cone Missing';
	ConeMiss:=ConeMiss+1;
	END_IF

	2: IF UnitASenSelet=12 OR UnitASenSelet=10 OR UnitASenSelet= 9 OR UnitASenSelet= 6 OR UnitASenSelet= 5 OR UnitASenSelet= 3 THEN
	CountMess:='Two Cone Missing';
	ConeMiss:=ConeMiss+1;
	END_IF
END_CASE
*)

;               0   , сА,           Cylinder_Alarm йН`	йН`       §џ            PROGRAM Cylinder_Alarm
VAR
	RS_Error_1:RS_Error;
	RS_Error_2:RS_Error;
	RS_Error_3:RS_Error;
	RS_Error_4:RS_Error;
	RS_Error_5:RS_Error;
	RS_Error_6:RS_Error;
	RS_Error_7:RS_Error;
	RS_Error_8:RS_Error;
	RS_Error_9:RS_Error;


	BlinkTimer1: TON;
	BlinkTimer2: TON;
	RS_Error_10: RS_Error;
	bASepYAxisRsErrorChkOut: BOOL;
	TON_1: TON;
	bBlinkStart: BOOL;
	bAErrortemp: BOOL;
END_VAR   
(*===============All Alarms============*)

IF bAConeFeedCylRsError OR   bPloySheetSensError OR bAFwdCylRsError OR bAWrappingCylRsError OR  bASupplyPressureError OR bAPolythinSheetError OR  ConeAlignErr OR bASealTopBotCylRsError OR bASealSepXCylRsError OR bASealSepYCylRsError
 OR bAConeMissAtSealConv  OR bAEmergencyPressed OR bCheckWrappingSen  OR bCheckWrappingSen2 OR bCheckWrappingSen3  OR bGrossWieghtNOk  OR bGrossWtCylEndSenError THEN bAError :=TRUE; ELSE  bAError:=FALSE; END_IF

(*=======Blinker ==============*)
(*
IF bAError AND NOT BlinkTimer2.Q THEN bBlinkStart:=TRUE; ELSE  bBlinkStart:=FALSE; END_IF

BlinkTimer1(IN:=bBlinkStart , PT:=t#2s , Q=> , ET=> );

BlinkTimer2(IN:=BlinkTimer1.Q , PT:=t#5s , Q=> , ET=> );
*)
(*============ Buzzer on/Off logic============*)

IF    bAError THEN bABuzzer :=TRUE; ELSE bABuzzer:=FALSE; END_IF
IF bAError THEN
sAlarmStatus:='   Alarms Occured. Go To Active Alarms';
ELSE
sAlarmStatus:=' No Alarms ';
END_IF

(*.....................Emergency Alarm................................*)

IF NOT bIEmergency THEN bAEmergencyPressed:=TRUE; ELSE bAEmergencyPressed:=FALSE; END_IF

IF bAEmergencyPressed (*AND BlinkTimer1.Q *)THEN bEmPopUp:=TRUE; ELSE bEmPopUp:=FALSE; END_IF

(*Emg*)
IF NOT  bIEmergency   OR bStopHmi  OR  bAutoModeOff  OR bIMCStop THEN
	bAConeFeedCylRsError:=FALSE;
	bAWrappingCylRs1Error:=FALSE;
	bAWrappingCylRs2Error:=FALSE;
	bAWrappingCylRs3Error:=FALSE;
	bAFwdCylRsError:=FALSE;
	bASealBotCylRsError:=FALSE;
	bASealTopCylRsError:=FALSE;
	bASealSepXCylRsError:=FALSE;
	bASealSepYCylRsError:=FALSE;  bASepYAxisRsErrorChkBit1:=FALSE;  bASepYAxisRsErrorChkBit:=FALSE;   bASepYAxisRsErrorChkOut:=FALSE;
	bAReset_all_error:=TRUE;
ELSE bAReset_all_error:=FALSE;


 END_IF

(*......................................Cone Feeding Piston Alarm.............................*)




RS_Error_1(
	bValveOutOn:=bQAConeFeedingPistonValve ,
	bReedSwithIn:=bIConeFeedingPistonEnd ,
	bErroReset:= (bErrorReset OR bAReset_all_error),
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=>bAConeFeedCylRsError ,
	sMsgOut=> );

IF RS_Error_1.bRsError THEN
RS_Error_1.sMsgIn:='Cone Feeding Piston End Sensor Timeout Error' ;
ELSE
RS_Error_1.sMsgIn:='Continue Machine Operation' ;
END_IF
HMIFeedPiston:=RS_Error_1.sMsgIn;


(*......................................Wrapping Channel Piston1 Alarm.............................*)


RS_Error_2(
	bValveOutOn:=bQWrappingChannelPistonValve1(*bAWrapCylRsErrorAuto*),
	bReedSwithIn:=bIWrappingChannelPiston1_End,
	bErroReset:=(bErrorReset OR bAReset_all_error),
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=> bAWrappingCylRs1Error ,
	sMsgOut=> );
IF  RS_Error_2.bRsError  THEN
RS_Error_2.sMsgIn:=' Wrapping  Piston1 End Sensor Timeout Error' ;

ELSE
RS_Error_2.sMsgIn:='Continue Machine Operation' ;

END_IF

HMIWrapPiston1:=RS_Error_2.sMsgIn;


IF bErrorReset THEN   bAWrapCylRsErrorAuto :=FALSE; END_IF


(*......................................Wrapping Channel Piston2 Alarm.............................*)

RS_Error_3(
	bValveOutOn:=bQWrappingChannelPistonValve2,
	bReedSwithIn:=bIWrappingChannelPiston2_End,
	bErroReset:=(bErrorReset OR bAReset_all_error),
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=> bAWrappingCylRs2Error,
	sMsgOut=> );

IF  RS_Error_3.bRsError  THEN
RS_Error_3.sMsgIn:=' Wrapping  Piston2 End Sensor Timeout Error' ;


ELSE
RS_Error_3.sMsgIn:='Continue Machine Operation' ;
END_IF

HMIWrapPiston2:=RS_Error_3.sMsgIn;

(*......................................Wrapping Channel Piston3 Alarm.............................*)


RS_Error_4(
	bValveOutOn:=bQWrappingChannelPistonValve3,
	bReedSwithIn:=bIWrappingChannelPiston3_End,
	bErroReset:=(bErrorReset OR bAReset_all_error) ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=>bAWrappingCylRs3Error ,
	sMsgOut=> );

IF RS_Error_4.bRsError THEN
RS_Error_4.sMsgIn:=' Wrapping  Piston3 End Sensor Timeout Error' ;

ELSE
RS_Error_4.sMsgIn:='Continue Machine Operation' ;
END_IF

HMIWrapPiston3:=RS_Error_4.sMsgIn;

IF bAWrappingCylRs1Error OR bAWrappingCylRs2Error OR bAWrappingCylRs3Error THEN bAWrappingCylRsError:=TRUE; ELSE bAWrappingCylRsError:=FALSE; END_IF
IF bErrorReset THEN   bAWrappingCylRsError :=FALSE; END_IF




(*.................................Cone Forward Piston Alarm............................................*)

RS_Error_5(
	bValveOutOn:=bQForwardPistonValve,
	bReedSwithIn:=bIForwardPistonEnd,
	bErroReset:=(bErrorReset OR bAReset_all_error) ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=>bAFwdCylRsError ,
	sMsgOut=> );
IF  RS_Error_5.bRsError THEN
RS_Error_5.sMsgIn:=' Forward Piston End Sensor Timeout Error';
ELSE
RS_Error_5.sMsgIn:='Continue Machine Operation' ;
END_IF

HMIForwdPiston:=RS_Error_5.sMsgIn;

(*.................................Sealing Bottom Piston Alarm............................................*)

RS_Error_6(
	bValveOutOn:=bQSealingTopPistonValve,
	bReedSwithIn:=bISealingBottomPistonEnd,
	bErroReset:=(bErrorReset OR bAReset_all_error) ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=> bASealBotCylRsError,
	sMsgOut=> );
IF RS_Error_6.bRsError THEN
RS_Error_6.sMsgIn:='Sealing Bottom Piston End Sensor Timeout Error';
ELSE
RS_Error_6.sMsgIn:='Continue Machine Operation' ;
END_IF

HMISealBotPiston:=RS_Error_6.sMsgIn;

(*.................................Sealing Top Piston Alarm............................................*)

RS_Error_7(
	bValveOutOn:=bQSealingTopPistonValve,
	bReedSwithIn:=bISealingTopPistonEnd,
	bErroReset:=(bErrorReset OR bAReset_all_error) ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#4s ,
	bRsError=>bASealTopCylRsError ,
	sMsgOut=> );
IF  RS_Error_7.bRsError THEN
RS_Error_7.sMsgIn:='Sealing Top Piston End Sensor Timeout Error';
ELSE
RS_Error_7.sMsgIn:='Continue Machine Operation' ;
END_IF

HMISealTopPiston:=RS_Error_7.sMsgIn;

IF bASealBotCylRsError OR bASealTopCylRsError THEN bASealTopBotCylRsError:=TRUE; ELSE bASealTopBotCylRsError:=FALSE; END_IF




(*.................................Sealing Seperator X Axis  Alarm............................................*)

RS_Error_8(
	bValveOutOn:=bQSealingSeparatorXAxisPistonValve,
	bReedSwithIn:=bISealingSeparatorXAxisEnd,
	bErroReset:=(bErrorReset OR bAReset_all_error) ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#8s ,
	bRsError=>bASealSepXCylRsError ,
	sMsgOut=> );
IF RS_Error_8.bRsError THEN
RS_Error_8.sMsgIn:=' X- Axis Piston End Sensor Timeout Error';
ELSE
RS_Error_8.sMsgIn:='Continue Machine Operation' ;
END_IF
HmiXAxisPiston:=RS_Error_8.sMsgIn;

(*.................................Sealing Seperator Y Axis  Alarm...........................................*)

IF bASepYAxisRsErrorChkBit1 OR bASepYAxisRsErrorChkBit THEN bASepYAxisRsErrorChkOut:=TRUE; ELSE bASepYAxisRsErrorChkOut:=FALSE; END_IF

RS_Error_9(
	bValveOutOn:=bASepYAxisRsErrorChkOut ,
	bReedSwithIn:=bISealingSeparatorYAxisEnd,
	bErroReset:=(bErrorReset OR bAReset_all_error) ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#5s ,
	bRsError=>bASealSepYCylRsError ,
	sMsgOut=> );
IF RS_Error_9.bRsError THEN
RS_Error_9.sMsgIn:=' Y-Axis Piston End Sensor Timeout Error';
ELSE
RS_Error_9.sMsgIn:='Continue Machine Operation' ;
END_IF
HmiYAxisPiston:=RS_Error_9.sMsgIn;



(*.................................Supply Pressure  Alarm...........................................*)
(*
RS_Error_10(
	bValveOutOn:=bAutoModeOn,
	bReedSwithIn:=bIPressureSwitch,
	bErroReset:=bErrorReset ,
	sMsgIn:= ,
	RS_ErrChkDly:=t#10s ,
	bRsError=>bASupplyPressureError ,
	sMsgOut=> );
IF RS_Error_10.bRsError THEN
RS_Error_10.sMsgIn:=' Supply Pressure Timeout Error';
ELSE
RS_Error_10.sMsgIn:='Continue Machine Operation' ;
END_IF
HmiSupplyPressureMsg:=RS_Error_10.sMsgIn;


*)
IF bAutoModeOn AND NOT bIPressureSwitch THEN TON_1(IN:= TRUE, PT:= t#10s , Q=> , ET=> ); END_IF

IF bAutoModeOn AND TON_1.Q THEN bASupplyPressureError:=TRUE; END_IF

IF bAutoModeOn AND bASupplyPressureError AND bIPressureSwitch  THEN bASupplyPressureError:=FALSE;  TON_1(IN:= FALSE);  END_IF

IF bASupplyPressureError AND BlinkTimer1.Q THEN bPrssurePopUp:=TRUE; ELSE bPrssurePopUp:=FALSE; END_IF





               '   , K              DATA_LOG_Save йН`	йН`                      ъ  FUNCTION_BLOCK DATA_LOG_Save
VAR_INPUT
	bStartDataLog: BOOL;
	sDataLogFileName: STRING;
	LogData: STRING(1024);

END_VAR
VAR_OUTPUT

	bErrorDataLog: BOOL;
END_VAR
VAR

	R_TRIGStartDataLog: R_TRIG;
	nstep: INT;

	FB_OpenFile_Datalog: FB_FileOpen;
	nFB_OpenFile_Datalog_Errid: UDINT;

	FB_WriteFile_Datalog: FB_FileWrite;
	nFB_WriteFile_Datalog_ErrId: UDINT;

	FB_CloseFile_Datalog: FB_FileClose;
	nFB_CloseFile_Datalog_ErrId: UDINT;
	hDataLogSrcFile: UINT;

END_VAR  R_TRIGStartDataLog(CLK:=bStartDataLog , Q=> );
IF R_TRIGStartDataLog.Q THEN
		nstep :=1;
	END_IF

CASE nstep OF

	0:
		;
		FB_OpenFile_Datalog.bExecute:=FALSE;
		FB_WriteFile_Datalog.bExecute:=FALSE;
		FB_CloseFile_Datalog.bExecute:=FALSE;

	1:		(* do nothing *)
			nstep:=nstep+1;

	2:		(* ####	File Open ####*)

			FB_OpenFile_Datalog(  bExecute := FALSE  );
			FB_OpenFile_Datalog(	sNetId :='192.168.0.103.1.1' ,
			sPathName := sDataLogFileName,
			nMode := FOPEN_MODEAPPEND    ,
			ePath := PATH_GENERIC,
			tTimeout := T#2s,
			bExecute := TRUE );
			nstep := nstep+ 1;



	3:		FB_OpenFile_Datalog( bExecute := FALSE );
			IF ( NOT FB_OpenFile_Datalog.bBusy ) THEN
			IF ( FB_OpenFile_Datalog.bError ) THEN
			nFB_OpenFile_Datalog_Errid := FB_OpenFile_Datalog.nErrId;
			bErrorDataLog := TRUE;
			nstep := 50;
			ELSE
			hDataLogSrcFile := FB_OpenFile_Datalog.hFile;
			nstep := nstep + 1;
			END_IF
			END_IF

	4:		(*write data to destination file*)
			(*num:=num+1;*)
			FB_WriteFile_Datalog( bExecute := FALSE );
			FB_WriteFile_Datalog(	sNetId:='192.168.0.103.1.1',
			hFile:=FB_OpenFile_Datalog.hFile,
			pWriteBuff:= ADR(LogData),
			cbWriteLen:= LEN(LogData),		(*	i_len,	*)
			bExecute:=TRUE,
			tTimeout:=T#2s );
			nstep := nstep + 1;

	5:		FB_WriteFile_Datalog( bExecute := FALSE );
			IF ( NOT FB_WriteFile_Datalog.bBusy ) THEN
			IF ( FB_WriteFile_Datalog.bError ) THEN
			nFB_WriteFile_Datalog_ErrId := FB_WriteFile_Datalog.nErrId;
			bErrorDataLog := TRUE;
			nstep := 50;
			ELSE
			hDataLogSrcFile := FB_OpenFile_Datalog.hFile;
			nstep := nstep + 1;
			END_IF
			END_IF

	6:		(* close the destination file *)
			FB_CloseFile_Datalog( bExecute := FALSE );
			FB_CloseFile_Datalog( 	sNetId:='192.168.0.103.1.1' ,
			hFile:=FB_OpenFile_Datalog.hFile,
			bExecute:=TRUE,
			tTimeout:=T#2s );
			nstep := nstep + 1;

	7:		FB_CloseFile_Datalog( bExecute := FALSE );
			IF ( NOT FB_CloseFile_Datalog.bBusy ) THEN
			IF ( FB_CloseFile_Datalog.bError ) THEN
			nFB_CloseFile_Datalog_ErrId := FB_CloseFile_Datalog.nErrId;
			bErrorDataLog := TRUE;
			END_IF
			nstep := 0;
			END_IF

END_CASE                  , K         	   DataLog_1 йН`	йН`       x |          PROGRAM DataLog_1
VAR
	FB_FileOpen_Indo: FB_FileOpen;
	FB_FileWrite_Indo: FB_FileWrite;
	FB_FileClose_Indo: FB_FileClose;
	FB_FileDelete_Indo: FB_FileDelete;

	ST1_ProductionDataValues: STRING(3000);
	S1_iCyc_Count_DISP: INT;
	S1_iACT_HLD_TIMEDISP: INT;
	stActiveuserCredential: BOOL;
	nPressureMaxvalue: REAL;
	OperatorName: STRING;
	nMinimumTopTempLimit_ST1: INT;
	nMaximumTopTempLimit_ST1: INT;
	nTOPTempMaxvalue: UINT;
	nMinimumBTMTempLimit_ST1: INT;
	nBTMTempMaxvalue: UINT;
	nMaximumBTMTempLimit_ST1: INT;
	Set_HLDTIME: INT;
	S_1_iPressure: REAL;
	rS_PressureRange1: REAL;
	nMaxEnergy: REAL;
	nMaxPower: REAL;
	S_iSET_COUNT: INT;
	S1_iTotCyc_Count_DISP: INT;
	sJobStatus_ST1: STRING;
	sStation1_ProductionData_FileName: STRING(80) := 'Hard Disk\Reports\Test1\ProductionData.csv';
	Fb_LoagProductionData: DATA_LOG_Save;
	SaveData: BOOL;
	ST1_ProductionData: STRING(500);
	Fb_CreateFileFormat_1: Fb_CreateFileFormat;
	bEnableFileFormat: BOOL;
	wTodayTemp: STRING;
	sDateTemp: STRING;
	sOLDFileName_ST1: T_MaxString;
	Fb_FormatDrive_1: Fb_FormatDrive;
	bFileDelete: BOOL;
	Fb_CopyBackupAL_Server_LogOf_1: Fb_CopyFileToRemotePC;
	bool2: BOOL;
	bAstart: BOOL;
	TON_1: TON;
	TON_2: TON;
	CTU_1: CTU;
	R_TRIG_1: R_TRIG;
	R_TRIG_2: R_TRIG;
	bACreateNewFile: BOOL;
	ReportStep: INT;
	bANewDay: BOOL;
	Timer1: TON;
	Timer2: TON;
	R_TRIG1: R_TRIG;


	iUnitBNetWtTemp1: REAL;
	rRetUnitBWeightTemp1: REAL;
	StepTemp1: INT;
	rRetUnitBWeightTemp2: REAL;
	StepTemp2: INT;
	BCreateDir: BOOL;
	FB_CreateDir_1: FB_CreateDir;
	bANewDaytemp: BOOL;
	bit2: BOOL;
	hfile: UINT;
	FB_FileOpen_1: FB_FileOpen;
	test: BOOL;
	bit3: BOOL;
	FB_FileWrite_1: FB_FileWrite;
	bEnableFileFormattemp: BOOL;
	BDelete: BOOL;
	FB_FileDelete_1: FB_FileDelete;
	Timer3: TON;
	iCartoNoHmiTemp: DWORD;
	dateInint: WORD;
	E_OpenPath: E_OpenPath;
	FB_FileDelete_2: FB_FileDelete;
	btest: BOOL;
	iLotNoPrevious: STRING;
	CartonNo:INT;
	SameLotNo:BOOL;


	TON_CountCheck: TON;

	LotChangeCompleted: BOOL;
END_VAR_3  
FB_FileOpen_Indo(
	sNetId:='192.168.0.103.1.1',
	sPathName:= '\\Admin-PC\Public\' ,
	nMode:=FOPEN_MODEAPPEND ,
	ePath:=PATH_GENERIC ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> ,
	hFile=> );

FB_FileWrite_Indo(
	sNetId:='192.168.0.103.1.1',
	hFile:=FB_FileOpen_Indo.hFile ,
	pWriteBuff:=ADR(ST1_ProductionData),
	cbWriteLen:=LEN(ST1_ProductionData),
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> ,
	cbWrite=> );


FB_FileClose_Indo(
	sNetId:='192.168.0.103.1.1',
	hFile:=FB_FileOpen_Indo.hFile ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

FB_FileDelete_Indo(
	sNetId:='192.168.0.103.1.1' ,
	sPathName:= '\\Admin-PC\Public\' ,
	ePath:=PATH_GENERIC ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );FileCreateTemp;

Fb_CreateFileFormat_1(
	sInputMessage:=ST1_ProductionData ,
	sFileName:='ProductionData' ,
	sDirectory:='\\Admin-PC\Public\' (*  'Hard Disk\Reports\Indo\'  *),
	bEnable:=bEnableFileFormat ,
	wToday:=wTodayTemp ,
	sDate=> sDateTemp,
	bNewDateFound=> bANewDay,
	sOldFileName=>sOLDFileName_ST1 ,
	sFilePathFinal=> );

FB_FileDelete_2(
	sNetId:='192.168.0.103.1.1' ,
	sPathName:= sStation1_ProductionData_FileName ,
	ePath:=E_OpenPath ,
	bExecute:=bFileDelete ,
	tTimeout:=t#1s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

IF bAutoModeOn THEN Pgm_NoHmi:=1; END_IF
(*bLoadPgm;
IF (bloadRecipeHmi OR bSaveRecipeHmi) THEN
iCartoNoHmiTemp:=iCartoNoHmi;
ELSE
iCartoNoHmiTemp:=(ITotalSample +iCartoNoHmi);
END_IF

iCartonSample:=iCartoNoHmiTemp;*)

		stStation1_ProductionData.S_No						:=INT_TO_STRING( Pgm_NoHmi );
		stStation1_ProductionData.ConeType				:=INT_TO_STRING( iATotalNoOfCones );
		stStation1_ProductionData.CartonNo					:=INT_TO_STRING(CartonNoHmi)(*CartonNoHmi*);
		stStation1_ProductionData.LotNo					:= (iLotNoHmi);
		stStation1_ProductionData.SDateF					:= (sDATEFinal);
		stStation1_ProductionData.NetWt					:=REAL_TO_STRING(var_5);
		stStation1_ProductionData.WorkOrderNo				:= (iWorkOrderNoHmi);
		stStation1_ProductionData.DefaultNettWeight			:=REAL_TO_STRING (DefaultNetWeightHmi);
		stStation1_ProductionData.DefaultGrossWeight		:= REAL_TO_STRING(DefaultGrossWeightHmi);
		stStation1_ProductionData.Blend					:= (BlendHmi);
		stStation1_ProductionData.Shade					:= (ShadeHmi );
		stStation1_ProductionData.ConeTip					:= (ConeTipHmi);
		stStation1_ProductionData.ConeNettWeight			:= (*REAL_TO_STRING*)(ConeNettHmi);
		stStation1_ProductionData.ConeLength				:=REAL_TO_STRING (ConeLengthHmi);
		stStation1_ProductionData.Dom_Exp					:= (Dom_ExpHmi);
		stStation1_ProductionData.PackType				:= (PackTypeHmi);
		stStation1_ProductionData.CountCode				:= (CountCodeHmi);




		(*	######## LOG PRODUCTION DATA		#####	*)

ST1_ProductionDataValues:= CONCAT(stStation1_ProductionData.S_No,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.ConeType);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.CartonNo);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.LotNo);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
(*ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.ActualNetWt	);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');*)
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.SDateF);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.NetWt);
(*ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData. NetWt );
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.StandardGrossWt);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.sEmpConeWt);*)
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');    (**)
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.WorkOrderNo);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');

ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.DefaultNettWeight);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.DefaultGrossWeight);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.Blend);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.Shade);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.ConeTip);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.ConeNettWeight);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.ConeLength);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.Dom_Exp);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.PackType);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,',');
ST1_ProductionDataValues:=	 CONCAT( ST1_ProductionDataValues,stStation1_ProductionData.CountCode);
ST1_ProductionDataValues:= CONCAT( ST1_ProductionDataValues,'$0A');
(*==========Saving the Data to Report===========*)


sStation1_ProductionData_FileName:= Fb_CreateFileFormat_1.sOldFileName ; (*    'Hard Disk\Reports\Test1\ProductionData.csv' ;*)


Fb_LoagProductionData(
	bStartDataLog:= SaveData ,
	sDataLogFileName:=sStation1_ProductionData_FileName ,
	LogData:=ST1_ProductionDataValues ,
	bErrorDataLog=> );






(*=============== file copy from CX Controller to Remote PC & File Delete In CX Device======================*)


	Fb_CopyBackupAL_Server_LogOf_1(
		bMakeDirectory:= ,
		bCopyFile:=bool2,
		sDestDriveName:=' \\Admin-PC\Public\',
		sSourceDirectory:='\Hard Disk\Reports\Indo' ,
		 );

(*\\ramrajg-nb2\Ramaraj_public\   *)

  (*Hard Disk\Reports\  *)

Fb_FormatDrive_1(sDriveName:= '\\Admin-PC\Public\', bFormatDisk:=bFileDelete );

R_TRIG1(CLK:=CycleComplete OR CycleComplete1 , Q=> );


CASE ReportStep OF

	0:	 IF R_TRIG1.Q   THEN  FileCreateTemp:=TRUE; Timer3(IN:=FALSE); ReportStep:=1; END_IF

	1:	(*		##### Station 1 Production Data	#####	*)

		ST1_ProductionData:= CONCAT( 'S.No',',');
		ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Cone Type');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
		ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Carton No');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
		ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Lot No');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
		ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Date');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
		ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Net Weight');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
		ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Work Order No');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');

ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Default Net Weight');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Defaulr Gross Weight');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Blend');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Shade');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Cone Tip');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Cone Nett Weight');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Cone Length');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Dom Exp');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'Pack Type');
		ST1_ProductionData:=CONCAT( ST1_ProductionData,',');
ST1_ProductionData:=	 CONCAT( ST1_ProductionData,'CountCode');
		ST1_ProductionData:= CONCAT( ST1_ProductionData,'$0A');
		ReportStep:=2;

	2:	Timer1(IN:=FALSE);
		bANewDay:=FALSE;
		ReportStep:=3;


	3:	bEnableFileFormat:=TRUE;
		Timer1(IN:=TRUE , PT:=T#100ms , Q=> , ET=> );
		IF Timer1.Q THEN bEnableFileFormat:=FALSE;  ReportStep:=4; END_IF


	4:
		SaveData:=TRUE;
		Timer1(IN:=FALSE);
		ReportStep:=5;

	5:	Timer3(IN:=TRUE , PT:=T#25s , Q=> , ET=> );
		IF Timer3.Q THEN SaveData:=FALSE;bFileDelete:=TRUE; ReportStep:=6; END_IF

	6:	 bFileDelete:=FALSE;Timer3(IN:=FALSE); FileCreateTemp:=FALSE; ReportStep:=0;

END_CASE





IF ParametesSave THEN LotNoChange:=TRUE;ELSE LotNoChange:=FALSE;END_IF

IF bAutoModeOn AND bAPauseSeq AND   LotNoChange  THEN
	CurrentCartonNo:=CartonNoHmi;LotChangeCompleted:=FALSE;SameLotNo:=FALSE;
 END_IF

IF bAutoModeOn AND LotChangeCompleted THEN
	iLotNoPrevious:=iLotNoHmi;
END_IF



IF iLotNoPrevious=iLotNoHmi THEN SameLotNo:=TRUE;
ELSE SameLotNo:=FALSE;END_IF

CASE CartonNo OF

0: 	IF (CycleComplete OR CycleComplete1) THEN CartonNo:=CartonNo+1;TON_CountCheck(IN:=FALSE);END_IF

1:	IF SameLotNo THEN CartonNo:=CartonNo+1;
	ELSIF NOT SameLotNo THEN CartonNo:=3;END_IF

2:	CurrentCartonNo:=CurrentCartonNo+1;CartonNo:=4;

3:	CurrentCartonNo:=CartonNoHmi;CartonNo:=CartonNo+1;

4:	TON_CountCheck(IN:=TRUE, PT:=t#30s, Q=> , ET=> );
	IF TON_CountCheck.Q THEN CartonNo:=CartonNo+1;END_IF

5:	CartonNo:=0;LotChangeCompleted:=TRUE;

END_CASE









(*
CASE StepTemp1 OF
	0:	IF bRetUnitBStart THEN rRetUnitBWeightTemp1:=rRetUnitBWeight; StepTemp1:=StepTemp1+1; END_IF

	1:	IF UnitBCompleteCheckCount.CV = 18 AND bAutoModeOn THEN rRetUnitBWeightTemp2:=rRetUnitBWeightTemp1;  StepTemp1:=0; END_IF
 END_CASE




CASE StepTemp2 OF
	0:	IF bRetUnitBStart THEN rRetUnitBWeightTemp1:=rRetUnitBWeight; StepTemp2:=StepTemp2+1; END_IF

	1:	IF c18_ConeCounter1.CV = 18 AND bAutoModeOn THEN rRetUnitBWeightTemp2:=rRetUnitBWeightTemp1; c18_ConeCounter1.RESET:=TRUE;  StepTemp2:=StepTemp2+1; END_IF

	2:	c18_ConeCounter1.RESET:=FALSE;  StepTemp2:=0;
 END_CASE*)


(*IF LotAHmi AND NOT LotBHmi AND NOT LotCHmi THEN LotASelected:=TRUE;LotBSelected:=FALSE;LotCSelected:=FALSE;END_IF
IF NOT LotAHmi AND  LotBHmi AND NOT LotCHmi THEN LotBSelected:=TRUE;LotASelected:=FALSE;LotCSelected:=FALSE;END_IF
IF NOT LotAHmi AND NOT LotBHmi AND  LotCHmi THEN LotCSelected:=TRUE;LotBSelected:=FALSE;LotASelected:=FALSE;END_IF

IF LotASelected THEN CartonNoHmi:=LotACartonNo;
ELSIF LotBSelected THEN CartonNoHmi:=LotBCartonNo;
ELSIF  LotCSelected THEN CartonNoHmi:=LotCCartonNo;
ELSIF  LotDSelected THEN CartonNoHmi:=LotDCartonNo;
ELSIF  LotESelected THEN CartonNoHmi:=LotECartonNo;
ELSIF  LotFSelected THEN CartonNoHmi:=LotFCartonNo;
END_IF

IF CartonNoResetHmi OR  (NOT LotAHmi AND NOT LotBHmi AND NOT LotCHmi) THEN
	LotACartonNo:=0;
	LotBCartonNo:=0;
	LotCCartonNo:=0;
	LotDCartonNo:=0;
	LotECartonNo:=0;
	LotFCartonNo:=0;
END_IF



CASE LotA OF

0:	IF LotASelected THEN LotA:=LotA+1;END_IF

1:	IF (CycleComplete OR CycleComplete1) THEN LotA :=LotA +1;END_IF

2:	LotACartonNo:=LotACartonNo+1;
	LotA :=LotA +1;

3:	TON_11(IN:=TRUE , PT:=t#25s , Q=> , ET=> );
	IF TON_11.Q THEN LotA :=LotA +1;END_IF

4:	LotA :=0;

END_CASE


CASE LotB OF

0:	IF LotBSelected THEN LotB:=LotB+1;END_IF

1:	IF (CycleComplete OR CycleComplete1) THEN LotB:=LotB+1;END_IF

2:	LotBCartonNo:=LotBCartonNo+1;
	LotB:=LotB+1;

3:	TON_12(IN:=TRUE , PT:=t#25s , Q=> , ET=> );
	IF TON_12.Q THEN LotA :=LotA +1;END_IF

4:	LotB:=0;

END_CASE


CASE LotC OF

0:	IF LotCSelected THEN LotC:=LotC+1;END_IF

1:	IF (CycleComplete OR CycleComplete1) THEN LotC:=LotC+1;END_IF

2:	LotCCartonNo:=LotCCartonNo+1;
	LotC:=LotC+1;

3:	TON_13(IN:=TRUE , PT:=t#25s , Q=> , ET=> );
	IF TON_13.Q THEN LotA :=LotA +1;END_IF

4:	LotC:=0;

END_CASE*)                 , K K рЖ           DATALOG_PRINT йН`	йН`      s e fat         9  PROGRAM DATALOG_PRINT
VAR
	step: INT;
	bOpen: BOOL;
	FB_FileOpen1: FB_FileOpen;
	(*sPrintPath: STRING(80):= '\\PLC-PC\Reports\Print.csv';*)
	FB_FileWrite1: FB_FileWrite;
	FB_FileClose1: FB_FileClose;
	FB_FileDelete1: FB_FileDelete;

	TON_1: TON;
	bOpen1: BOOL;
	sHeadline: STRING;
	sData: STRING;
	ProductionData_PrintData: ProductionData_PrintData;

	PrintEnabled: BOOL;

	Timer_1: TON;
	Timer_2: TON;
	TON_2: TON;

	R_TRIGPrint: R_TRIG;
	TON_Opendly: TON;
	OpenError: INT;
	TON_writedly: TON;
	WriteError: INT;
	BlendPrint: STRING;
END_VAR&  IF PrintEnableHmi THEN PrintEnabled:=TRUE;PrintValue:=1;ELSE PrintEnabled:=FALSE;PrintValue:=1;END_IF

BlendPrint:=CONCAT( BlendHmi , '%');
(*

		ProductionData_PrintData.Print						:=INT_TO_STRING( PrintValue );
		ProductionData_PrintData.ConeType1				:=(COUNT_DIS);
		ProductionData_PrintData.Blend1					:=(BLEND_DIS);
		ProductionData_PrintData.DefaultnetWt1				:=(NetwtPrint);
		ProductionData_PrintData.DefaultGrossWt1			:=(GrosswtPrint);
		ProductionData_PrintData.LotNo1					:=(LOTNO_DIS);
		ProductionData_PrintData.BagNo1					:=DINT_TO_STRING(CARTONNO_DIS);
		ProductionData_PrintData.Shade1					:=(SHADE_DIS);*)



ProductionData_PrintData.Print						:=INT_TO_STRING( PrintValue );
ProductionData_PrintData.PgNo						:=INT_TO_STRING( Pgm_NoHmi );
ProductionData_PrintData.TotNoCones						:=INT_TO_STRING( iATotalNoOfCones );
ProductionData_PrintData.CartNo						:=INT_TO_STRING(CartonNoHmi);
ProductionData_PrintData.LotNo						:=(iLotNoHmi);
ProductionData_PrintData.DateTi						:=(sDATEFinal);
ProductionData_PrintData.NetWt						:=REAL_TO_STRING(DefaultNetWeightHmi);
ProductionData_PrintData.WrkOrdNo						:=(iWorkOrderNoHmi);
ProductionData_PrintData.DfltNetWt						:=REAL_TO_STRING (DefaultNetWeightHmi);
ProductionData_PrintData.DfltGrsWt						:=REAL_TO_STRING(DefaultGrossWeightHmi);
ProductionData_PrintData.Blnd						:=(BlendPrint);
ProductionData_PrintData.Shd						:=(ShadeHmi );
ProductionData_PrintData.ConeTip						:=(ConeTipHmi);
ProductionData_PrintData.ConeNetWt						:=(ConeNettHmi);
ProductionData_PrintData.ConeLenght						:=REAL_TO_STRING (ConeLengthHmi);
ProductionData_PrintData.Dom						:=(Dom_ExpHmi);
ProductionData_PrintData.Pack						:=(PackTypeHmi);
ProductionData_PrintData.CountCod						:=(CountCodeHmi);


		(*	######## LOG PRODUCTION DATA		#####	*)

ProductionDataValues_Print:= CONCAT(ProductionData_PrintData.Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.CountCod);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.Blnd);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.NetWt);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.DfltGrsWt);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.LotNo);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.CartNo);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.ConeTip);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.Pack);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.TotNoCones);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.Shd);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.ConeNetWt);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.ConeLenght);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,'$0A');
(*ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.WrkOrdNo);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.DfltNetWt);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,',');
ProductionDataValues_Print:=	 CONCAT( ProductionDataValues_Print,ProductionData_PrintData.Dom);
ProductionDataValues_Print:= CONCAT( ProductionDataValues_Print,'$0A');*)




ProductionData_Print:= CONCAT( 'Print',',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'Count');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'Blend');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'NetWt');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
         ProductionData_Print:=	 CONCAT( ProductionData_Print,'GrossWt');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'LotNo');
ProductionData_Print:= CONCAT( ProductionData_Print,',');

	ProductionData_Print:=	 CONCAT( ProductionData_Print,'CartonNo');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'ConeTip');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'Pack');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'TotNoCone');
ProductionData_Print:= CONCAT( ProductionData_Print,',');

	ProductionData_Print:=	 CONCAT( ProductionData_Print,'Shade');
ProductionData_Print:= CONCAT( ProductionData_Print,',');
	ProductionData_Print:=	 CONCAT( ProductionData_Print,'ConeNetWt');
ProductionData_Print:= CONCAT( ProductionData_Print,',');

ProductionData_Print:=	 CONCAT( ProductionData_Print,'ConeLeng');
		ProductionData_Print:= CONCAT( ProductionData_Print,'$0A');
(*ProductionData_Print:=	 CONCAT( ProductionData_Print,'WorkOrdNo');
		ProductionData_Print:= CONCAT( ProductionData_Print,',');
ProductionData_Print:=	 CONCAT( ProductionData_Print,'DfltNtWt');
		ProductionData_Print:= CONCAT( ProductionData_Print,',');
ProductionData_Print:=	 CONCAT( ProductionData_Print,'Dom');
		ProductionData_Print:= CONCAT( ProductionData_Print,'$0A');*)








FB_FileOpen1(
	sNetId:='192.168.0.103.1.1' ,
	sPathName:= '\\Admin-PC\Reports\productiondata.csv' ,
	nMode:=FOPEN_MODEAPPEND ,
	ePath:=PATH_GENERIC ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> ,
	hFile=> );

FB_FileWrite1(
	sNetId:='192.168.0.103.1.1' ,
	hFile:=FB_FileOpen1.hFile ,
	pWriteBuff:=ADR(ProductionDataValues_Print_Com),
	cbWriteLen:=LEN(ProductionDataValues_Print_Com),
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> ,
	cbWrite=> );


FB_FileClose1(
	sNetId:='192.168.0.103.1.1' ,
	hFile:=FB_FileOpen1.hFile ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

FB_FileDelete1(
	sNetId:='192.168.0.103.1.1' ,
	sPathName:= '\\Admin-PC\Reports\productiondata.csv' ,
	ePath:=PATH_GENERIC ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

R_TRIGPrint(CLK:=CycleComplete OR CycleComplete1 , Q=> );

CASE step OF

0: IF R_TRIGPrint.Q THEN
	TON_2(IN:=FALSE);
	ReportSave:=TRUE;

	FB_FileOpen1.bExecute:=TRUE;
	IF NOT FB_FileOpen1.bBusy AND NOT FB_FileOpen1.bError AND FB_FileOpen1.hFile>0 THEN bOpen1:=FALSE; step:=step+1;END_IF
	END_IF


1:	IF NOT FB_FileOpen1.bBusy AND NOT FB_FileOpen1.bError AND FB_FileOpen1.hFile>0 THEN bOpen1:=FALSE; PrintOk:=FALSE;step:=step+1;END_IF

2:
	ProductionDataValues_Print_Com:=ProductionData_Print;
	FB_FileWrite1.bExecute:=TRUE;
	IF NOT FB_FileWrite1.bBusy AND NOT FB_FileWrite1.bError THEN step:=step+1;END_IF


3:	IF NOT FB_FileWrite1.bBusy AND NOT FB_FileWrite1.bError THEN FB_FileWrite1.bExecute:=FALSE; step:=step+1;END_IF

4:	ProductionDataValues_Print_Com:=ProductionDataValues_Print;
	FB_FileWrite1.bExecute:=TRUE;
	IF NOT FB_FileWrite1.bBusy AND NOT FB_FileWrite1.bError THEN step:=step+1;END_IF



5:	step:=step+1;


6:	IF NOT FB_FileWrite1.bBusy AND NOT FB_FileWrite1.bError THEN FB_FileWrite1.bExecute:=FALSE; step:=step+1;END_IF


7:	FB_FileClose1.bExecute:=TRUE;
	 IF NOT FB_FileClose1.bBusy AND NOT FB_FileClose1.bError THEN  step:=step+1;END_IF

8:	TON_1(IN:=TRUE , PT:=t#1s , Q=> , ET=> );
	IF TON_1.Q THEN step:=step+1;END_IF

9:	IF NOT FB_FileDelete1.bBusy AND NOT FB_FileDelete1.bError THEN
	TON_1(IN:=FALSE);
	(*FB_FileDelete1.bExecute:=TRUE;*)step:=step+1;END_IF

10:
	FB_FileOpen1.bExecute:=FALSE;
	FB_FileWrite1.bExecute:=FALSE;
	FB_FileClose1.bExecute:=FALSE;
	FB_FileDelete1.bExecute:=FALSE;
	bOpen:=FALSE;step:=step+1;

11:		TON_2(IN:=TRUE , PT:=t#10s , Q=> , ET=> );
	IF TON_2.Q THEN(* PrintOk:=TRUE;	*) step:=0;END_IF

END_CASE



CASE WriteError OF

0:	IF FB_FileWrite1.bError THEN FB_FileWrite1.bExecute:=FALSE;TON_writedly(IN:=FALSE);
	WriteError:=WriteError+1;END_IF

1:	TON_writedly(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
	IF TON_writedly.Q THEN FB_FileWrite1.bExecute:=TRUE;WriteError:=WriteError+1;END_IF

2:	TON_writedly(IN:=FALSE);WriteError:=0;

END_CASE




CASE OpenError OF

0:	IF FB_FileOpen1.bError THEN FB_FileOpen1.bExecute:=FALSE;TON_Opendly(IN:=FALSE);
	OpenError:=OpenError+1;END_IF

1:	TON_Opendly(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
	IF TON_Opendly.Q THEN FB_FileOpen1.bExecute:=TRUE;OpenError:=OpenError+1;END_IF

2:	TON_Opendly(IN:=FALSE);OpenError:=0;

END_CASE
                 , d d љЯ           DATALOG_REPORT йН`	йН`          р        т  PROGRAM DATALOG_REPORT
VAR
	R_TRIG_IndoPrint: R_TRIG;
	FB_FileOpen_Indo: FB_FileOpen;
	FB_FileWrite_Indo: FB_FileWrite;
	FB_FileClose_Indo: FB_FileClose;
	FB_FileDelete_Indo: FB_FileDelete;
	IndoReport: INT;
	ReportHead1_Indo: BOOL;
	ST1_ProductionData: BOOL;
	ReportHead2_Indo: BOOL;
	ReportBot1_Indo: BOOL;
	stStation1_ProductionData: BOOL;
	ReportBot2_Indo: BOOL;
	testbit: BOOL;
	TON_Indo1: TON;
	TON_Indo2: TON;
	TON_Indo3: TON;
	TON_Indo4: TON;
	sOldDay: STRING;
	TON_Newdaydly: TON;
	TON_NEWDAY: TON;

	TON_NewdaydlyError: TON;
	WriteError: INT;
	TON_writedly: TON;
	OpenError: INT;
	TON_Opendly: TON;


	BarcodeNo: STRING;
	BarCode1: STRING;
	EmptyConeWtRep: REAL;
	EmptyConeWtRep1: REAL;
END_VARE  


FB_FileOpen_Indo(
	sNetId:='192.168.0.103.1.1' ,
	sPathName:= ReportPath_Final_2,
	nMode:=FOPEN_MODEAPPEND ,
	ePath:=PATH_GENERIC ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> ,
	hFile=> );

FB_FileWrite_Indo(
	sNetId:='192.168.0.103.1.1' ,
	hFile:=FB_FileOpen_Indo.hFile ,
	pWriteBuff:=ADR(ProductionDataValues_IndoPrint_Com),
	cbWriteLen:=LEN(ProductionDataValues_IndoPrint_Com),
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> ,
	cbWrite=> );


FB_FileClose_Indo(
	sNetId:='192.168.0.103.1.1' ,
	hFile:=FB_FileOpen_Indo.hFile ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

FB_FileDelete_Indo(
	sNetId:='192.168.0.103.1.1' ,
	sPathName:=ReportPath_Final_2,
	ePath:=PATH_GENERIC ,
	bExecute:= ,
	tTimeout:=T#2s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

R_TRIG_IndoPrint(CLK:=( bANewDay OR testbit)  , Q=> );

CASE IndoReport OF
0:	  IF TON_NEWDAY.Q   THEN	sOldDay := sDay;TON_Newdaydly(IN:=TRUE , PT:=t#0.2s , Q=> , ET=> );
		IF TON_Newdaydly.Q THEN
		bANewDay:=FALSE;IndoReport:=1; SerialNoError:=1;FB_FileOpen_Indo.bExecute:=TRUE;END_IF END_IF

1:	TON_Newdaydly(IN:=FALSE);TON_NEWDAY(IN:=FALSE);
	IF NOT FB_FileOpen_Indo.bBusy AND NOT FB_FileOpen_Indo.bError AND FB_FileOpen_Indo.hFile>0 THEN ReportHead1_Indo:=TRUE;END_IF

	IF ReportHead1_Indo THEN
	ProductionData_IndoPrint:= CONCAT( 'DATE',',');
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'DOM ');
		ProductionData_IndoPrint:= CONCAT( ProductionData_IndoPrint,',');
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'BAG NO');
		ProductionData_IndoPrint:= CONCAT( ProductionData_IndoPrint,',');
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,' PACK');
		ProductionData_IndoPrint:= CONCAT( ProductionData_IndoPrint,',');
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'ITEM CODE');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'LOT NO');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'COUNT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'BLEND');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'SHDAE');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');


ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'CONES');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'NET WT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'TARE WT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');


ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'GR WT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');


ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'CN WT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'CN LEN');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'WORK ORDER');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'BAR CODE');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');

	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'WORCP FLAG');
ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
		(*ProductionData_IndoPrint:= CONCAT( ProductionData_IndoPrint,'$0A');*)
(*ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'DFLT GROSS WT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'ACT GROSS WT');
		ProductionData_IndoPrint:= CONCAT( ProductionData_IndoPrint,'$0A');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn9Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn10Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn11Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn12Wt');
	ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');*)
IndoReport:=2; END_IF

2:	PROCESSCOMPLETE:=FALSE;ReportHead1_Indo:=FALSE;ProductionDataValues_IndoPrint_Com:=ProductionData_IndoPrint;
	TON_Indo1(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
	FB_FileWrite_Indo.bExecute:=TRUE;
	IF NOT FB_FileWrite_Indo.bBusy AND NOT FB_FileWrite_Indo.bError AND FB_FileWrite_Indo.hFile>0 AND TON_Indo1.Q THEN IndoReport:=IndoReport+1; END_IF

3:	ProductionDataValues_IndoPrint_Com:=ProductionData_IndoPrint;
	FB_FileWrite_Indo.bExecute:=TRUE;
	IF NOT FB_FileWrite_Indo.bBusy AND NOT FB_FileWrite_Indo.bError THEN IndoReport:=IndoReport+1; END_IF

4:	FB_FileWrite_Indo.bExecute:=FALSE;ProductionData_IndoPrint:='';IndoReport:=IndoReport+1;

5:	ReportHead2_Indo:=TRUE;
	IF ReportHead2_Indo THEN IndoReport:=IndoReport+1;END_IF

6:	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'ISSUE DESP');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'LOCATION');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'REMARKS');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'ITEM DESCR');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'CN TIP');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'ACT WT');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'FYEAR');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
(*ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn20Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn21Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn22Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');
ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'Cn23Wt');
		ProductionData_IndoPrint:=CONCAT( ProductionData_IndoPrint,',');*)
	ProductionData_IndoPrint:=	 CONCAT( ProductionData_IndoPrint,'AVG COUNT');
ProductionData_IndoPrint:= CONCAT( ProductionData_IndoPrint,'$0A');
ReportHead2_Indo:=FALSE;
IndoReport:=IndoReport+1;

7:	ReportHead1_Indo:=FALSE;ProductionDataValues_IndoPrint_Com:=ProductionData_IndoPrint;
TON_Indo2(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
	FB_FileWrite_Indo.bExecute:=TRUE;
	IF NOT FB_FileWrite_Indo.bBusy AND NOT FB_FileWrite_Indo.bError  AND TON_Indo2.Q THEN  IndoReport:=IndoReport+1; END_IF

8:	FB_FileWrite_Indo.bExecute:=FALSE;
	FB_FileClose_Indo.bExecute:=TRUE;
	 IF NOT FB_FileClose_Indo.bBusy AND NOT FB_FileClose_Indo.bError THEN FB_FileOpen_Indo.bExecute:=FALSE; IndoReport:=IndoReport+1;END_IF(*ProductionData_IndoPrint:='';*)

9:	FB_FileClose_Indo.bExecute:=FALSE;
	IF ReportSave OR testbit THEN

	FB_FileOpen_Indo.bExecute:=TRUE;
	IF NOT FB_FileOpen_Indo.bBusy AND NOT FB_FileOpen_Indo.bError AND FB_FileOpen_Indo.hFile>0 THEN  ReportBot1_Indo:=TRUE;END_IF

	IF ReportBot1_Indo THEN IndoReport:=IndoReport+1;END_IF END_IF

10:
ProductionData_IndoPrint2:= CONCAT(ProductionData_IndoPrint11.SDATE,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.DOM);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.BAGNO	);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.PACKTYP	);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.ITEMCODE);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.LOTNO);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.COUNT);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');

ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.BLND);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');

ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.SHD);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
(*

ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.BLND);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.SHD);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
*)

ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.NOOFCONE);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.DFLTNETWEIGHT);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.TAREWEIGHTDET);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.DFLTGRSST);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.CONNETWT);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.CONLEN);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');


ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.WRKORNO);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
(*ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,'$0A');*)

ReportBot1_Indo:=FALSE;ReportSave:=FALSE;
IndoReport:=11;


11:	ProductionDataValues_IndoPrint_Com:=ProductionData_IndoPrint2;
	TON_Indo3(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
	FB_FileWrite_Indo.bExecute:=TRUE;
	IF NOT FB_FileWrite_Indo.bBusy AND NOT FB_FileWrite_Indo.bError AND TON_Indo3.Q THEN IndoReport:=IndoReport+1; END_IF

12:	FB_FileWrite_Indo.bExecute:=FALSE;(*ProductionData_IndoPrint:='';*)IndoReport:=IndoReport+1;

13:	ReportBot2_Indo:=TRUE;
	IF ReportBot2_Indo THEN IndoReport:=IndoReport+1;END_IF

14:ProductionData_IndoPrint2:= CONCAT(ProductionData_IndoPrint11.BARCODE,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.WORKFLAGDET);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.ISSUEDESPATCH);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.LOCATIONDET);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.REMARKSDET);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.DESCRIPTION);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.CONTIP);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.ACTWT);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.FINYEAR);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
(*ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.NetWt21);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.NetWt22);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.NetWt23);
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');*)
ProductionData_IndoPrint2:=	 CONCAT( ProductionData_IndoPrint2,ProductionData_IndoPrint11.AVERAGEGCOUNT);
(*ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,',');*)
ProductionData_IndoPrint2:= CONCAT( ProductionData_IndoPrint2,'$0A');
ReportBot2_Indo:=FALSE;
IndoReport:=IndoReport+1;

15:ProductionDataValues_IndoPrint_Com:=ProductionData_IndoPrint2;
TON_Indo4(IN:=TRUE , PT:=t#5s , Q=> , ET=> );

	FB_FileWrite_Indo.bExecute:=TRUE; IndoReport:=IndoReport+1;
	(*IF NOT FB_FileWrite_Indo.bBusy AND NOT FB_FileWrite_Indo.bError AND TON_Indo4.Q  THEN IndoReport:=IndoReport+1;END_IF*)

16:	IF NOT FB_FileWrite_Indo.bBusy AND NOT FB_FileWrite_Indo.bError THEN FB_FileWrite_Indo.bExecute:=FALSE; IndoReport:=IndoReport+1;END_IF


17:	TON_Indo3(IN:=FALSE);TON_Indo4(IN:=FALSE);TON_Indo2(IN:=FALSE);TON_Indo1(IN:=FALSE);FB_FileWrite_Indo.bExecute:=FALSE;IndoReport:=IndoReport+1;

18:	FB_FileClose_Indo.bExecute:=TRUE;
	 IF NOT FB_FileClose_Indo.bBusy AND NOT FB_FileClose_Indo.bError THEN  IndoReport:=20;END_IF

19:	IF bANewDay THEN IndoReport:=IndoReport+1;
	ELSIF NOT bANewDay THEN FB_FileOpen_Indo.bExecute:=FALSE; IndoReport:=9;
END_IF

20:	FB_FileOpen_Indo.bExecute:=FALSE;SerialNo:=SerialNo+1;IndoReport:=9;

END_CASE



IF sDay <> sOldDay THEN bANewDay:=TRUE;IndoReport:=0; SerialNo:=0;END_IF
TON_NEWDAY(IN:=bANewDay , PT:=T#0.5s , Q=> , ET=> );




CASE WriteError OF

0:	IF FB_FileWrite_Indo.bError THEN FB_FileWrite_Indo.bExecute:=FALSE;TON_writedly(IN:=FALSE);
	WriteError:=WriteError+1;END_IF

1:	TON_writedly(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
	IF TON_writedly.Q THEN FB_FileWrite_Indo.bExecute:=TRUE;WriteError:=WriteError+1;END_IF

2:	TON_writedly(IN:=FALSE);WriteError:=0;

END_CASE




CASE OpenError OF

0:	IF FB_FileOpen_Indo.bError THEN FB_FileOpen_Indo.bExecute:=FALSE;TON_Opendly(IN:=FALSE);
	OpenError:=OpenError+1;END_IF

1:	TON_Opendly(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
	IF TON_Opendly.Q THEN FB_FileOpen_Indo.bExecute:=TRUE;OpenError:=OpenError+1;END_IF

2:	TON_Opendly(IN:=FALSE);OpenError:=0;

END_CASE

EmptyConeWtRep1:=(iATotalNoOfCones * EmptyConeWt);
EmptyConeWtRep:=(var_5  - EmptyConeWtRep1);

TareWeight:=(DefaultGrossWeightHmi - DefaultNetWeightHmi);


BarCode1:=CONCAT(STR1:=iLotNoHmi, STR2:='.');
BarCode:=CONCAT(STR1:=BarCode1, STR2:=(sBagNoRep));








	ProductionData_IndoPrint11.DOM	:= (Dom_ExpHmi);
	ProductionData_IndoPrint11.BAGNO	:=INT_TO_STRING(CartonNoHmi)(*CartonNoHmi*);
	ProductionData_IndoPrint11.PACKTYP	:=(PackTypeHmi);
	ProductionData_IndoPrint11.ITEMCODE	:=(ItemCodeHmi);
	ProductionData_IndoPrint11.LOTNO	:=(iLotNoHmi);
	ProductionData_IndoPrint11.COUNT	:=(CountCodeHmi);
	ProductionData_IndoPrint11.BLND	:=(BlendHmi);
	ProductionData_IndoPrint11.SHD	:=(ShadeHmi );
	ProductionData_IndoPrint11.NOOFCONE	:=INT_TO_STRING( iATotalNoOfCones );
	ProductionData_IndoPrint11.DFLTNETWEIGHT	:=REAL_TO_STRING(DefaultNetWeightHmi);
	ProductionData_IndoPrint11.TAREWEIGHTDET	:=REAL_TO_STRING(TareWeight);
	ProductionData_IndoPrint11.DFLTGRSST	:=REAL_TO_STRING(DefaultGrossWeightHmi);
	ProductionData_IndoPrint11.CONNETWT	:=(*REAL_TO_STRING*)(ConeNettHmi);
	ProductionData_IndoPrint11.CONLEN	:=REAL_TO_STRING (ConeLengthHmi);
	ProductionData_IndoPrint11.WRKORNO	:=(iWorkOrderNoHmi);
	ProductionData_IndoPrint11.BARCODE	:=(BarCode);
	ProductionData_IndoPrint11.WORKFLAGDET	:=(WorkFlag);
	ProductionData_IndoPrint11.ISSUEDESPATCH	:=(IssueDesp);
	ProductionData_IndoPrint11.LOCATIONDET	:=(Location);
	ProductionData_IndoPrint11.REMARKSDET	:=(Remarks);
	ProductionData_IndoPrint11.DESCRIPTION	:=(Description);
	ProductionData_IndoPrint11.CONTIP	:=(ConeTipHmi);
	ProductionData_IndoPrint11.ACTWT	:=REAL_TO_STRING(EmptyConeWtRep);
	ProductionData_IndoPrint11.FINYEAR	:=(Fyear);
	ProductionData_IndoPrint11.AVERAGEGCOUNT	:=(AvgCount);

		ProductionData_IndoPrint11.SERIALNO	:=INT_TO_STRING(Pgm_NoHmi);
		ProductionData_IndoPrint11.SDATE	:=(sDaateReport);


















               (   ,    K           Fb_CopyFileToRemotePC йН`	йН`                      	  FUNCTION_BLOCK Fb_CopyFileToRemotePC
VAR
	sCopyFileCommandTemp: T_MaxString;
	sFormatedDestDirectory: T_Maxstring;
	sCopyFileCommand: T_MaxString;
	sFormatedDirectory: T_MaxString;
	sMakeDirCommand: T_MaxString;

	Fb_SystemTime: FB_LocalSystemTime;
	FB_MakeDirectory: NT_StartProcess;
	Fb_CopyFiles: NT_StartProcess;
END_VAR
VAR_INPUT

	bMakeDirectory: BOOL;
	bCopyFile: BOOL;
	sDestDriveName: T_MaxString;
	sSourceDirectory: T_MaxString;
END_VAR
VAR_OUTPUT
	sFinalDestDirectory: T_MaxString;
END_VAR	      Fb_SystemTime'5.55.248.150.1.1'TRUE11At#2sFB_LocalSystemTime              AFb_SystemTime.systemTime.wYearWORD_TO_STRINGA'_'CONCATBAFb_SystemTime.systemTime.wMonthWORD_TO_STRINGCONCATA'_'CONCATBAFb_SystemTime.systemTime.wDayWORD_TO_STRINGCONCAT  sFormatedDestDirectory     AsDestDriveNameMOVE  sFinalDestDirectory     '/c 'A'MKDIR'CONCATA' 'CONCATA'"'CONCATAsFinalDestDirectoryCONCATA'"'CONCATA' 'CONCAT  sMakeDirCommand     FB_MakeDirectory'5.55.248.150.1.1''\WINDOWS\cmd.exe' sMakeDirCommandbMakeDirectoryAT#2sNT_StartProcess              AsSourceDirectoryMOVE  sFormatedDirectory     '/c 'A'copy'CONCATA' 'CONCATA'"'CONCATAsFormatedDirectoryCONCATA'\*.*'CONCATA'"'CONCAT  sCopyFileCommandTemp     sCopyFileCommandTempA' 'CONCATA'"'CONCATAsFinalDestDirectoryCONCATA'"'CONCAT  sCopyFileCommand     Fb_CopyFiles'5.55.248.150.1.1''\WINDOWS\cmd.exe' sCopyFileCommand	bCopyFileAT#2sNT_StartProcess         d                  )   ,   K           Fb_CreateFileFormat йН`	йН`                      ;  FUNCTION_BLOCK Fb_CreateFileFormat
VAR
	Fb_OpenFile: FB_FileOpen;
	Fb_WriteFile: FB_FileWrite;
	F_Trig1: F_TRIG;
	F_Trig2: F_TRIG;
	Fb_closeFile: FB_FileClose;
	F_Trig3: F_TRIG;


	SysteMtime: FB_LocalSystemTime;
	stSystemtimeAlrm: Timestruct;

	sFileName_Temp: T_MaxString;


	bCreateFileTrig: R_TRIG;
	bCreateFile: BOOL;
	Fb_SavePersistant: FB_WritePersistentData;
	TuneparaSave: BOOL;
END_VAR
VAR_INPUT

	sInputMessage: STRING(255);
	sFileName: T_MaxString;
	sDirectory: T_MaxString;
	bEnable: BOOL;

END_VAR
VAR_OUTPUT

	sDate: STRING;

	bNewDateFound: BOOL;
END_VAR

VAR_OUTPUT PERSISTENT
	sOldFileName: T_MaxString;
	sFilePathFinal: t_MaxString;
END_VAR
VAR PERSISTENT
	sOldDate: STRING;
	sNewFileName_Temp: T_MaxString;
END_VAR
VAR_IN_OUT PERSISTENT
	wToday: STRING;
END_VAR      CFb_SavePersistant''801TuneparaSaveT#5sASPDM_VAR_BOOSTFB_WritePersistentData          TuneparaSave        E
SysteMtime'5.55.248.150.1.1'TRUE11AT#1sFB_LocalSystemTime  stSystemtimeAlrm              CAstSystemtimeAlrm.wDayWORD_TO_STRINGA'_'CONCATBAstSystemtimeAlrm.wMonthWORD_TO_STRINGCONCATA'_'CONCATBAstSystemtimeAlrm.wYearWORD_TO_STRINGCONCAT  sDate        CwTodayA'_'CONCATBAstSystemtimeAlrm.wMonthWORD_TO_STRINGCONCATA'_'CONCATBAstSystemtimeAlrm.wYearWORD_TO_STRINGCONCAT  sOldDate        C	sFileNameA'_'CONCATAsDateCONCATA'.csv'CONCAT  sFileName_Temp        C	sFileNameA'_'CONCATAsOldDateCONCATA'.csv'CONCAT  sNewFileName_Temp        C
sDirectoryAsNewFileName_TempCONCAT  sOldFileName        C
sDirectoryAsFileName_TempCONCAT  sFilePathFinal        ClogDayAwTodayNE  bNewDateFoundSysteMtime.bValid       џ	bEnableJbNewDateFoundKFileCreateTemp  bCreateFile     џ	bCreateFileEbCreateFileTrig@R_TRIG             EFb_OpenFile'192.168.0.103.1.1'sFilePathFinalFOPEN_MODEAPPENDPATH_GENERICbCreateFileTrig.QAT#2sFB_FileOpen                   џ	Fb_OpenFile.bBusyEF_Trig1@F_TRIG             EFb_WriteFile'192.168.0.103.1.1'Fb_OpenFile.hFileADR(sInputMessage)LEN(sInputMessage)	F_Trig1.QAT#2sFB_FileWrite                   џ	Fb_WriteFile.bBusyEF_Trig2@F_TRIG             EFb_closeFile'192.168.0.103.1.1'Fb_OpenFile.hFile	F_Trig2.QAT#2sFB_FileClose                 CAlogDayMOVE  wToday	Fb_CloseFile.bBusyEF_Trig3@F_TRIG             џ	F_Trig3.Q bCreateFiled                  *   ,     K            Fb_FormatDrive йН`	йН`                      $  FUNCTION_BLOCK Fb_FormatDrive
VAR_INPUT
	sDriveName: T_MaxString;
	bFormatDisk: BOOL;
END_VAR
VAR_OUTPUT
END_VAR
VAR
	sDeleteCommand_Temp: T_MaxString;
	sDeleteCommand: T_MaxString;
	nDirectoryLength: INT;
	sFormatedDirectory: T_MaxString;
	FbFormatDisk: NT_StartProcess;
END_VAR      '/c 'A'del'CONCATA' 'CONCATA'"'CONCATA
sDriveNameCONCAT  sDeleteCommand_Temp     sDeleteCommand_TempA'*.*'CONCATA'"'CONCATA' 'CONCATA'/Q'CONCAT  sDeleteCommand     A
sDriveNameLEN  nDirectoryLength     
sDriveNameA(nDirectoryLength-1)LEFT  sFormatedDirectory     FbFormatDisk'5.55.248.150.1.1''\WINDOWS\cmd.exe'sFormatedDirectorysDeleteCommandbFormatDiskAt#2sNT_StartProcess         d                     , и сD           FlimRollerUnit йН`	йН`      verMor23           PROGRAM FlimRollerUnit
VAR
	step: INT;
	bQAFilmRollerMotor1OnAuto: BOOL;
	bQAFilmRollerMotor2OnAuto: BOOL;
	bQAFilmRollerMotor3OnAuto: BOOL;
END_VARS  bQAFilmRollerMotor1:= ( bQAFilmRollerMotor1OnAuto );

bQAFilmRollerMotor2:= ( bQAFilmRollerMotor2OnAuto );

bQAFilmRollerMotor3:=( bQAFilmRollerMotor3OnAuto );





		IF NOT 	bIWrappingFilmTensionPlate_1  THEN
		bQAFilmRollerMotor1OnAuto:=TRUE;
		ELSE
		bQAFilmRollerMotor1OnAuto:=FALSE;
		END_IF


		IF NOT	bIWrappingFilmTensionPlate_2   THEN
		bQAFilmRollerMotor2OnAuto:=TRUE;
		ELSE
		bQAFilmRollerMotor2OnAuto:=FALSE;
		END_IF



		IF NOT	bIWrappingFilmTensionPlate_3    THEN
		bQAFilmRollerMotor3OnAuto:=TRUE;
		ELSE
		bQAFilmRollerMotor3OnAuto:=FALSE;
		END_IF                   , l си         	   FwdPiston йН`	йН`      Poti3 ND          PROGRAM FwdPiston
VAR
	step: INT;
	bA2ndConeReached: BOOL;
	bA3rdConeReached: BOOL;
	bAFirstConeReached: BOOL;


	InterLockCounter: CTU;
	R_TRIG_1: R_TRIG;
	step2: INT;
	bAFwdPistonReady: BOOL;


	TimerON: TON;
	R_TRIG_2: R_TRIG;
	bWrapConvStarted: BOOL;
	F_TRIG_1: F_TRIG;
	bConutEnable: BOOL;
	bA3Pushed: BOOL;
	Step12: INT;
	R_TRIG_5: R_TRIG;
	TON_5: TON;
END_VAR  
	(*=============================Forward piston On/Off logic =======================*)


CASE step OF


	0:	IF  bAFwdPistonReady AND  bAConeFeedOver   THEN
		bAFirstConeReached:=TRUE;
		InterLockCounter.RESET:=TRUE;
		step:=step+1;
		END_IF

	1:	IF NOT bAPauseSeq THEN InterLockCounter.RESET:=FALSE ;step:=step+1; END_IF

	2:	IF  NOT bQAWrappingConveyorMotor  AND bAutoModeOn  AND bAFirstConeReached    AND InterLockCounter.CV=0(*  AND Wrapping_Unit.bA3Pushed  *)
		AND NOT bAConeMissErrorAtWrpConv  AND NOT bConeMiss2AtWrapConv THEN
		bQAForwardPistonValve:=TRUE;
		 bAErrorChkBit:=TRUE;
		bAConeFeedOver:=FALSE;
		step:=step+1;
		END_IF

	3:	IF NOT bAPauseSeq THEN step:=step+1; END_IF

	4:	IF  bAutoModeOn AND bIForwardPistonEnd AND NOT bAFwdCylRsError  THEN

		(*bQAForwardPistonValve:=FALSE; *)
		bAFirstConeReached:=FALSE;

		bAFwdPistonComp1:=TRUE;
		step:=step+1;
		END_IF

	5:	IF NOT bCheckWrappingSen  (* bIConeFeedingPistonEnd *)    THEN  bQAForwardPistonValve:=FALSE;  bAWrappingConvStart1:=TRUE; bAErrorChkBit:=FALSE;
		step:=step+1; END_IF

	6:	IF  InterLockCounter.CV=1 AND bAConeFeedOver   AND NOT bConeMiss2AtWrapConv THEN
		bA2ndConeReached:=TRUE;
		bAWrappingConvStart1:=FALSE;
		step:=step+1;
		END_IF


	7:	IF NOT bAPauseSeq THEN step:=step+1; END_IF

	8:	 step:=step+1;

	9:	 step:=step+1;

	10:	IF  bAutoModeOn AND NOT bQAWrappingConveyorMotor   AND bA2ndConeReached AND InterLockCounter.CV=1 AND NOT bAConeMissErrorAtWrpConv
		AND NOT bConeMiss2AtWrapConv  THEN
		bQAForwardPistonValve:=TRUE;
		 bAErrorChkBit2:=TRUE;
		bAConeFeedOver:=FALSE;
		step:=step+1;
		END_IF

	11:	IF NOT bAPauseSeq THEN step:=step+1; END_IF

	12:	IF  bAutoModeOn AND bIConeFeedingPistonHome  AND bIForwardPistonEnd  AND NOT bAFwdCylRsError  THEN
		(*bQAForwardPistonValve:=FALSE;*)
		bA2ndConeReached:=FALSE;
		(*bAWrappingConvStart2:=TRUE;  *)
		bAFwdPistonComp2:=TRUE;
		step:=step+1;
		END_IF


	13:	 IF NOT bCheckWrappingSen2 (* bIConeFeedingPistonEnd *) THEN  bQAForwardPistonValve:=FALSE;  bAWrappingConvStart2:=TRUE; bAErrorChkBit2:=FALSE;
		step:=step+1; END_IF
(*-=========================mod need here=======================*)
	14:	IF   bIConeFeedingPistonEnd AND  bAConeFeedOver THEN
		bA3rdConeReached:=TRUE;
		bAWrappingConvStart2:=FALSE;
		step:=step+1;
		END_IF


	15:	IF NOT bAPauseSeq THEN step:=step+1; END_IF

	16:	IF  bAutoModeOn AND NOT bQAWrappingConveyorMotor   AND  bA3rdConeReached  AND  InterLockCounter.CV=2   AND bFwdPistonStartTemp  AND NOT bConeMiss1AtWrapConv  THEN
		bQAForwardPistonValve:=TRUE;
		 bAErrorChkBit3:=TRUE;
		bAConeFeedOver:=FALSE;
		step:=step+1;
		END_IF

	17:	IF NOT bAPauseSeq THEN step:=step+1; END_IF

	18:	IF  bAutoModeOn AND bIConeFeedingPistonHome  AND bIForwardPistonEnd  AND NOT bAFwdCylRsError   THEN

	(*	bQAForwardPistonValve:=FALSE; *)
		bA3rdConeReached:=FALSE;
	(*	bAWrappingConvStart3:=TRUE; *)
		bAFwdPistonComp3:=TRUE;
		step:=step+1;
		END_IF


	19:	IF NOT bAPauseSeq THEN step:=step+1; END_IF


	20:	IF NOT bCheckWrappingSen3 (* bIConeFeedingPistonEnd *) THEN  bQAForwardPistonValve:=FALSE;  bAWrappingConvStart3:=TRUE; bAErrorChkBit3:=FALSE;
		step:=step+1; END_IF



	21:	 IF  bAutoModeOn AND bIForwardPistonHome AND   InterLockCounter.CV=3 OR bAByPassOn    THEN
		InterLockCounter.RESET:=TRUE;
		bAWrappingConvStart3:=FALSE;
		step:=step+1;
		END_IF

	22:	IF NOT bAPauseSeq THEN (* InterLockCounter.RESET:=FALSE ;*) bAByPassOn:=FALSE;  step:=0; END_IF



END_CASE


CASE Step12 OF

	0:	IF R_TRIG_5.Q  THEN Step12:=1; TON_5(IN:=FALSE);  bConutEnable:=FALSE ;END_IF

	1:	IF NOT bQAWrappingConveyorMotor THEN Step12:=2;
		ELSE IF InterLockCounter.CV=2 THEN Step12:=2; END_IF END_IF

	2:	IF  TON_5.Q THEN Step12:=3;
		ELSE IF InterLockCounter.CV=2 AND R_TRIG_1.Q  THEN Step12:=3; END_IF  END_IF

	3:	bConutEnable:=TRUE ; Step12:=4;

	4:	Step12:=0;

END_CASE

R_TRIG_1(CLK:= (  bIWrappingConeDeductionSen), Q=> );
R_TRIG_5(CLK:= (  bWrapConvStarted), Q=> );
TON_5(IN:=bIWrappingConeDeductionSen , PT:=t#0.8s , Q=> , ET=> );

(*IF R_TRIG_1.Q (* bIWrappingConeDeductionSen*)  AND bWrapConvStarted THEN bConutEnable:=TRUE ; ELSE bConutEnable:=FALSE ;END_IF *)

InterLockCounter(
	CU:=bConutEnable ,
	RESET:= ,
	PV:= ,
	Q=> ,
	CV=> );

R_TRIG_2(CLK:=bQAWrappingConveyorMotor , Q=> );

IF R_TRIG_2.Q THEN bWrapConvStarted:=TRUE; END_IF


F_TRIG_1(CLK:= bQAWrappingConveyorMotor, Q=> );

IF F_TRIG_1.Q THEN bWrapConvStarted:=FALSE; END_IF
(*Hanging Logic======*)


IF bAErrorChkBit AND bQAForwardPistonValve  AND  bIWrappingConeDeductionSen  THEN bCheckWrappingSen:=TRUE; END_IF

IF  bWrpConvIntOver AND bSealConvIntOver THEN  bAFwdPistonReady:=TRUE; ELSE 	bAFwdPistonReady:=FALSE; END_IF


IF bAErrorChkBit2 AND  bQAForwardPistonValve AND bIWrappingConeDeductionSen AND (  bIWrappingCone1 OR bIWrappingCone2 OR bIWrappingCone3 ) THEN bCheckWrappingSen2:=TRUE; END_IF


IF bAErrorChkBit3 AND  bQAForwardPistonValve AND bIWrappingConeDeductionSen AND   bIWrappingCone1 AND ( bIWrappingCone2 OR bIWrappingCone3 ) THEN bCheckWrappingSen3:=TRUE; END_IF





IF  NOT bIEmergency OR   bAutoModeOff  OR bStopHmi OR bIMCStop  THEN

bAFirstConeReached:=FALSE;
bQAForwardPistonValve:=FALSE;
bAWrappingConvStart1:=FALSE;
bAFwdPistonComp1:=FALSE;
bA2ndConeReached:=FALSE;
step:=0;
bAWrappingConvStart2:=FALSE;
bAFwdPistonComp2:=FALSE;
bA3rdConeReached:=FALSE;
bAWrappingConvStart3:=FALSE;
bAFwdPistonComp3:=FALSE;
bWrpConvIntOver:=FALSE;
bSealConvIntOver:=FALSE;
InterLockCounter.RESET:=TRUE;

ELSE
InterLockCounter.RESET:=FALSE;

END_IF

IF bErrorReset  AND bCheckWrappingSen AND NOT  bIWrappingConeDeductionSen THEN bAErrorChkBit:=FALSE;  bCheckWrappingSen:=FALSE;WrapConeSenDetMes:=''; InterLockCounter.RESET:=TRUE; ELSE InterLockCounter.RESET:=FALSE;END_IF
IF bCheckWrappingSen THEN  WrapConeSenDetMes:='Wrapping Cone Home Sensor Error';END_IF



IF bErrorReset  AND bCheckWrappingSen2 AND NOT  bIWrappingCone1 AND NOT   bIWrappingCone2 AND NOT bIWrappingCone3  THEN bAErrorChkBit2:=FALSE;  bCheckWrappingSen2:=FALSE;WrapConeSenDetMes:=''; END_IF
IF bCheckWrappingSen2 THEN  WrapConeSenDetMes:='Wrapping Cone Sensor Error';END_IF


IF bErrorReset  AND bCheckWrappingSen3 AND NOT   bIWrappingCone2 AND NOT bIWrappingCone3  THEN bAErrorChkBit3:=FALSE;  bCheckWrappingSen3:=FALSE;WrapConeSenDetMes:=''; END_IF
IF bCheckWrappingSen3 THEN  WrapConeSenDetMes:='Wrapping Cone Sensor Error';END_IF
               2   ,   ъ н _           INT_All йН`	йН`      ;RSrr_8        И   PROGRAM INT_All
VAR
	bCartonOnConv: BOOL;
	bWrpConvIntOverTemp: BOOL;
	bSealConvIntOverTemp: BOOL;
	bAInializeStartedtenp: BOOL;
	bStopInt: BOOL;

	F_TRIG_1: F_TRIG;

END_VAR;  IF bInitializeHmi AND bAMcStartInAuto  AND bAutoModeOn (*AND bMCStartInAuto   *) AND NOT   bAInializeStarted    AND NOT bInterlockInitial_2 THEN
bAInitializeSeq:=TRUE;
bAInializeStarted:=TRUE;
bIntialAckBit:=TRUE;
bInterlockInitial_2:=TRUE;
END_IF

blink();

WrapConvRst();


SealingConvRst();


SealingUnitRst();



IF  bWrpConvIntOver   AND bSealConvIntOver THEN bAInializeStarted:=FALSE ; bIntialAckBit:=FALSE;END_IF

IF bStopHmi OR bIMCStop  AND bAutoModeOn   THEN bAStop :=TRUE;  bWrpConvIntOver:=FALSE; bSealConvIntOver:=FALSE;  bAMcReady:=FALSE; END_IF

IF( bStopHmi OR bIMCStop)  AND bAutoModeOn AND NOT  bIEmergency THEN bInterlockInitial_2:=FALSE; END_IF


F_TRIG_1(CLK:= bAInializeStarted, Q=> );

IF F_TRIG_1.Q  AND bAutoModeOn AND   bWrpConvIntOver   AND bSealConvIntOver THEN   bAMcReady:=TRUE; END_IF


IF bAMcReady AND bAutoModeOn AND (bRetUnitAStart OR bRetUnitBStart  ) THEN bAMcRunninig:=TRUE;  bAMcReady:=FALSE; END_IF

(* IF NOT bIEmergency OR bIMCStop   OR bInitializeHmi  THEN bStopInt:=TRUE; ELSE bStopInt:=FALSE; END_IF  *)

(*
AlarmList();
*)


(*
(*=============FULL CARTON CONVEYOR INITIALIZE LOGIC==========*)

	IF    bICartonPosition1 OR  bICartonPosition2 OR  bICartonPosition3  THEN bCartonOnConv:=TRUE; ELSE  bCartonOnConv:=FALSE;  END_IF

	IF 	bAInitializeSeq  AND  bCartonOnConv   AND bAutoModeOn  THEN
	sCartonConvStatus:='Clear the Cone on Carton Conveyor';
	ELSIF 	bAInitializeSeq AND NOT bCartonOnConv AND bAutoModeOn THEN
	bClearConeInt:=TRUE;
	bCartonOnConv:=FALSE;
	sCartonConvStatus:='';
	END_IF
*)
               7   , tQє           MAIN йН`	йН`      qа            -   PROGRAM MAIN
VAR
	bTestBool: BOOL;
END_VARф  (*================== Model Selection Logic==========*)
IF bIAutoManual THEN bAutoModeOn:=TRUE; sAMcModeStatus:='Machine In Auto Mode'; bManualModeOn:=FALSE;

ELSIF NOT bIAutoManual THEN bManualModeOn:=TRUE;  sAMcModeStatus:='Machine In Manual Mode'; bAutoModeOn:=FALSE; END_IF

DATALOG_PRINT();
DATALOG_REPORT();
PARAMETER_SETTINGS();

One_Min_Conv();
FlimRollerUnit();
Auto();
UnitA_RowStopper();
UnitB_RowStopper();
Manual();
Outputs();
ConeFeedPiston();
ConeFeedConv();
Serial();
FwdPiston();

Wrapping_Unit();
Sealing_Unit();
Sealing_Conveyor();
WeightCalc();

INT_All();
Cylinder_Alarm();
ConeAllignAlarm();
ConeMiss_Alarm();
Common();

DataLog_1();

(*-===========Sealing Complete delay from Hmi==================*)

SealComDlyTemp:= REAL_TO_TIME(rSealCompDlyHmi * 1000);


(*==========Pause & Reume Logic====================*)


	IF bPauseHmi  OR bAPauseEnable THEN bAPauseSeq:=TRUE; END_IF
	IF bResumeHmi THEN bAPauseSeq:=FALSE; END_IF




               -   ,   й           Manual йН`	йН`       §џѕ           С   PROGRAM Manual
VAR
	b_SHPistonValveREVOffHmi: BOOL;
	Timer1: TON;
	step: INT;
	bIManualSealingTemp: BOOL;
	bEnableManSeal1: BOOL;
	bEnableManSeal2: BOOL;
	bEnableManSeal: BOOL;
END_VARљ  (*=============MANUAL OPERATION============*)



(*=============UNIT-A ROW STOPPER MOTOR FWD & REV==========*)


	IF  bManualModeOn AND  bUA_RowStopperMotorFwdOnHmi  AND NOT bIUnitA_RowStopperEnd    THEN	bQMUnitA_RowStopperMotorForward:=TRUE; ELSE   bQMUnitA_RowStopperMotorForward:=FALSE; END_IF
	IF  bManualModeOn AND   bIUnitA_RowStopperEnd THEN bQMUnitA_RowStopperMotorForward:=FALSE; END_IF




	IF bManualModeOn AND bUA_RowStopperMotorRevOnHmi AND NOT bIUnitA_RowStopperHome THEN	bQMUnitA_RowStopperMotorReverse:=TRUE; ELSE  bQMUnitA_RowStopperMotorReverse:=FALSE;  END_IF
	IF  bManualModeOn AND   bIUnitA_RowStopperHome THEN  bQMUnitA_RowStopperMotorReverse:=FALSE;  END_IF



(*=============UNIT-B ROW STOPPER MOTOR FWD & REV==========*)


	IF  bManualModeOn AND  bUB_RowStopperMotorFwdOnHmi AND NOT  bIUnitB_RowStopperEnd   THEN	bQMUnitB_RowStopperMotorForward:=TRUE; ELSE  	bQMUnitB_RowStopperMotorForward:=FALSE;   END_IF
	IF  bManualModeOn AND   bIUnitB_RowStopperEnd THEN bQMUnitB_RowStopperMotorForward:=FALSE; END_IF




	IF bManualModeOn AND bUB_RowStopperMotorRevOnHmi  AND NOT   bIUnitB_RowStopperHome   THEN 	bQMUnitB_RowStopperMotorReverse:=TRUE; ELSE  bQMUnitB_RowStopperMotorReverse:=FALSE;    END_IF
	IF  bManualModeOn AND   bIUnitB_RowStopperHome THEN  bQMUnitB_RowStopperMotorReverse:=FALSE;  END_IF




(**************************CONE FEEDING OPERATION***************************)

	IF bManualModeOn AND bCFPistonOnHmi THEN bQMConeFeedingPistonValve:=TRUE; END_IF
	IF bManualModeOn AND bCFPistonOffHmi THEN bQMConeFeedingPistonValve:=FALSE;END_IF

(*=============FORWARD PISTON VALVE=================*)

	IF bManualModeOn AND bFPValveOnHmi  THEN bQMForwardPistonValve:=TRUE;END_IF
	IF bManualModeOn AND bFPValveOffHmi THEN bQMForwardPistonValve:=FALSE;END_IF


(*=================WRAPPING CHANNEL1=================*)

	IF bManualModeOn AND bWrappingCPV1OnHmi THEN bQMWrappingChannelPistonValve1:=TRUE;END_IF
	IF bManualModeOn AND bWrappingCPV1OffHmi THEN bQMWrappingChannelPistonValve1:=FALSE;END_IF


(*=================WRAPPING CHANNEL2=================*)

	IF bManualModeOn AND bWrappingCPV2OnHmi THEN bQMWrappingChannelPistonValve2:=TRUE;END_IF
	IF bManualModeOn AND bWrappingCPV2OffHmi THEN bQMWrappingChannelPistonValve2:=FALSE;END_IF

(*=================WRAPPING CHANNEL3=================*)

	IF bManualModeOn AND bWrappingCPV3OnHmi THEN bQMWrappingChannelPistonValve3:=TRUE;END_IF
	IF bManualModeOn AND bWrappingCPV3OffHmi THEN bQMWrappingChannelPistonValve3:=FALSE;END_IF

(*=================SEALING TOP PISTON=================*)

	IF bManualModeOn AND bSealingTopPVOnHmi THEN bQMSealingTopPistonValve:=TRUE;END_IF
	IF bManualModeOn AND bSealingTopPVOffHmi THEN bQMSealingTopPistonValve:=FALSE;END_IF

(*=================SEALING BOTTOM PISTON=================*)

	IF bManualModeOn AND bSealingBottomPVOnHmi	 THEN bQMSealingBottomPistonValve:=TRUE;END_IF
	IF bManualModeOn AND bSealingBottomPVOffHmi THEN bQMSealingBottomPistonValve:=FALSE;END_IF

(*=================FEEDING CONVEYOR MOTOR=================*)

	IF  bManualModeOn AND       bFCMotorOnHmi THEN bQMFeedingConveyorMotor:=TRUE;END_IF
	IF   bManualModeOn AND      bFCMotorOffHmi THEN bQMFeedingConveyorMotor:=FALSE;END_IF

(*=================WRAPPING CONVEYOR MOTOR=================*)

	IF bManualModeOn AND bWCMotorOnHmi THEN bQMWrappingConveyorMotor:=TRUE;END_IF
	IF bManualModeOn AND bWCMotorOffHmi THEN bQMWrappingConveyorMotor:=FALSE;END_IF

(*=================SEALING CONVEYOR MOTOR=================*)

	IF bManualModeOn AND bSCMotorOnHmi THEN bQMSealingConveyorMotor:=TRUE;END_IF
	IF bManualModeOn AND bSCMotorOffHmi THEN bQMSealingConveyorMotor:=FALSE;END_IF

(*=================FLIM ROLLER MOTOR1=================*)

	IF bManualModeOn AND bFRMotor1OnHmi THEN bQMFilmRollerMotor1:=TRUE;END_IF
	IF bManualModeOn AND bFRMotor1OffHmi THEN bQMFilmRollerMotor1:=FALSE;END_IF

(*=================FLIM ROLLER MOTOR2=================*)

	IF bManualModeOn AND bFRMotor2OnHmi THEN bQMFilmRollerMotor2:=TRUE;END_IF
	IF bManualModeOn AND bFRMotor2OffHmi THEN bQMFilmRollerMotor2:=FALSE;END_IF

(*=================FLIM ROLLER MOTOR3=================*)

	IF bManualModeOn AND bFRMotor3OnHmi THEN bQMFilmRollerMotor3:=TRUE;END_IF
	IF bManualModeOn AND bFRMotor3OffHmi THEN bQMFilmRollerMotor3:=FALSE;END_IF

(*==============SEALING SEPARATOR Y PISTON VALVE===================*)

	IF bManualModeOn AND bSSYAxisPistonValveOnHmi THEN  bQMSealingSeparatorYAxisPistonValve:=TRUE;END_IF
	IF bManualModeOn AND bSSYAxisPistonValveOffHmi THEN  bQMSealingSeparatorYAxisPistonValve:=FALSE;END_IF


(*================SEALING SEPARATOR X PISTON VALVE=================*)

	IF bManualModeOn AND bSSXAxisPistonValveOnHmi THEN  bQMSealingSeparatorXAxisPistonValve:=TRUE;END_IF
	IF bManualModeOn AND bSSXAxisPistonValveOffHmi THEN  bQMSealingSeparatorXAxisPistonValve:=FALSE;END_IF







(*======================manual Sealing Logic==========================*)

IF NOT bAutoModeOn AND bIManualSealing THEN bEnableManSeal1:=TRUE; ELSE  bEnableManSeal1:=FALSE; END_IF

 IF bAutoModeOn AND bIManualSealing AND bAPauseSeq  THEN bEnableManSeal2:=TRUE; ELSE  bEnableManSeal2:=FALSE; END_IF

IF bEnableManSeal1 OR bEnableManSeal2 THEN bEnableManSeal:=TRUE; ELSE  bEnableManSeal:=FALSE; END_IF

CASE step OF

	0:	IF bEnableManSeal  THEN bMManualSealOn:=TRUE; step:=step+1;  END_IF

	1:	Timer1(IN:= FALSE);
		bQMSealingTopPistonValve:=TRUE;
		step:=step+1;

	2:	 IF bISealingBottomPistonEnd AND bISealingTopPistonEnd THEN
		 step:=step+1;
		END_IF

	3:	Timer1(IN:=TRUE , PT:=SealComDlyTemp , Q=> , ET=> );
		IF Timer1.Q THEN step:=step+1; END_IF


	4:	bMManualSealOn:=FALSE;
		bQMSealingTopPistonValve:=FALSE;
		Timer1(IN:= FALSE);
		 step:=step+1;

	5:	step:=0;

END_CASE               !   ,   сl            One_Min_Conv йН`	йН`      x.1р0(ю          PROGRAM One_Min_Conv
VAR
	TON_5: TON;
	TON_6: TON;
	rGrossWtTolMin: REAL;
	rGrossWtTolMax: REAL;
	bGrossWieghtOkTemp: BOOL;
	bQAGrossWtPiston1: BOOL;
	bcheck: BOOL;

	TEST1: BOOL;
	TEST2: BOOL;
	tGrossWtEndSenDly: TON;
	CylErrChkBit: BOOL;
END_VAR'  IF NOT  bIEmergency   OR bStopHmi  OR  bAutoModeOff  OR bIMCStop THEN
One_Min_Conv_1:=0;
bQGross_Roller_On:=FALSE; TON_5(IN:=FALSE); TON_6(IN:=FALSE);
END_IF
rGrossWtTolMax:= (sGrosswt + sGrossTol);

rGrossWtTolMin:= (sGrosswt - sGrossTol);


CASE One_Min_Conv_1 OF


	0:	IF bAutoModeOn AND bIGross_Crossing_Input  AND bAMcStartInAuto   AND NOT bAPauseSeq THEN
		bQGross_Roller_On:=TRUE; TON_5(IN:=FALSE);
		One_Min_Conv_1:=One_Min_Conv_1+1; END_IF

	1:	TON_5(IN:=TRUE , PT:=t#10S , Q=> , ET=> );
		IF  bIGross_Weight_Stop   AND NOT bAPauseSeq AND NOT  TON_5.Q THEN  One_Min_Conv_1:=One_Min_Conv_1+1;
		ELSE
		 IF  TON_5.Q THEN bcheck:=TRUE;  bQGross_Roller_On:=FALSE;  One_Min_Conv_1:=0;
		END_IF
		END_IF

	2:	IF bAutoModeOn AND bIGross_Weight_Stop   AND NOT bAPauseSeq THEN
		tGrossWtEndSenDly(IN:= FALSE);
		bQGross_Roller_On:=FALSE; bQGross_Cylinder_On:=TRUE;
		(*tGrossWtEndSenDly(IN:= TRUE, PT:=t#5s , Q=> , ET=> ); *)
		CylErrChkBit:=TRUE;
		One_Min_Conv_1:=One_Min_Conv_1+1; END_IF

	3:	IF bIGross_Cyl_End THEN 	CylErrChkBit:=FALSE; One_Min_Conv_1:=One_Min_Conv_1+1;
		ELSIF NOT bIGross_Cyl_End AND tGrossWtEndSenDly.Q THEN
		bGrossWtCylEndSenError:=TRUE;
		SGrossWtCylEndSenErrMsg:='Gross weight Cyl End Sensor Error';
		One_Min_Conv_1:=13;
		END_IF

	4:	TON_6(IN:=TRUE , PT:=t#9.5S , Q=> , ET=> );
		 IF  TON_6.Q THEN One_Min_Conv_1:=One_Min_Conv_1+1;  END_IF

	5:	IF  rGrossWeight >=rGrossWtTolMin  AND  rGrossWeight  <= rGrossWtTolMax  THEN
		bGrossWieghtOkTemp:=TRUE; rGrossWeighToReport:=rGrossWeight ;  bGrossWieghtNokTemp:=FALSE;
		One_Min_Conv_1:=One_Min_Conv_1+1;
		ELSIF  rGrossWeight  >  rGrossWtTolMax THEN
		bGrossWieghtNokTemp:=TRUE; bGrossWieghtOkTemp:=FALSE;
		One_Min_Conv_1:=One_Min_Conv_1+2;
		ELSIF   rGrossWeight  < rGrossWtTolMin   THEN
		bGrossWieghtNokTemp:=TRUE; bGrossWieghtOkTemp:=FALSE;
		One_Min_Conv_1:=One_Min_Conv_1+2;
		END_IF

	6:	IF bGrossWieghtOkTemp (*AND TEST1*)  THEN bGrossWieghtOk:=TRUE; bQAGrossWieghtOkIndi:=TRUE; One_Min_Conv_1:=One_Min_Conv_1+2;  TON_6(IN:=FALSE);  END_IF

	7:	IF bGrossWieghtNokTemp  (*AND TEST2 *)THEN bGrossWieghtNOk:=TRUE;
		SGrossWtNokMsg:='Gross Weight is Less OR more';
		bReadGWieght:=FALSE; One_Min_Conv_1:=One_Min_Conv_1+2;   TON_6(IN:=FALSE); END_IF


	8:	IF bGrossWieghtOk (*  AND NOT bGrossWieghtNok *) AND bAutoModeOn  AND NOT bAPauseSeq THEN
		 bQGross_Cylinder_On:=FALSE; bReadGWieght:=FALSE; bGrossWieghtOkTemp:=FALSE;
		bQAGrossWieghtOkIndi:=FALSE;   (*====== Modified for  Gross  Weight   bypass  ==============*)
		bACyclePass:=TRUE;
		GrossWtReedSwBit:=TRUE;
		One_Min_Conv_1:=One_Min_Conv_1+2;
		 END_IF

	9:	IF bErrorReset THEN  bGrossWieghtNOk:=FALSE;
		SGrossWtNokMsg:='';
		One_Min_Conv_1:=4; END_IF

	10:	IF bIGross_Cyl_Home  AND NOT bAGrossWtHomeSenRsError THEN GrossWtReedSwBit:=FALSE ; bQGross_Roller_On:=TRUE;  One_Min_Conv_1:=One_Min_Conv_1+1;END_IF

	11:	bACyclePass:=FALSE;One_Min_Conv_1:=One_Min_Conv_1+1;

	12:	IF bAutoModeOn AND NOT  bIGross_Weight_Stop   AND NOT bAPauseSeq THEN
		 One_Min_Conv_1:=0;  bQGross_Roller_On:=FALSE; END_IF

	13:	IF bErrorReset AND bIGross_Cyl_End THEN
		CylErrChkBit:=FALSE;
		bGrossWtCylEndSenError:=FALSE;
		tGrossWtEndSenDly(IN:= FALSE);
		SGrossWtCylEndSenErrMsg:='';
		One_Min_Conv_1:=2;
		ELSIF NOT bIGross_Cyl_End AND bErrorReset THEN
		CylErrChkBit:=FALSE;
		bGrossWtCylEndSenError:=FALSE;
		tGrossWtEndSenDly(IN:= FALSE);
		SGrossWtCylEndSenErrMsg:='';
		One_Min_Conv_1:=2;
		END_IF
END_CASE





IF CylErrChkBit THEN tGrossWtEndSenDly(IN:= TRUE, PT:=t#5s , Q=> , ET=> );
END_IF               8   , t,Q           Outputs йН`	йН`      JXЩ           4   PROGRAM Outputs
VAR
	bQABuzzertemp: BOOL;
END_VARЄ	  		bQConeFeedingPistonValve   :=   (bQMConeFeedingPistonValve OR bQAConeFeedingPistonValve) ;
		bQForwardPistonValve  :=   (bQMForwardPistonValve OR bQAForwardPistonValve OR bQRForwardPistonValve ) ;
		bQWrappingChannelPistonValve1  :=  bQMWrappingChannelPistonValve1 OR  bQAWrappingChannelPistonValve1 OR bQRWrappingChannelPistonValve1;
		bQWrappingChannelPistonValve2  :=  bQMWrappingChannelPistonValve2 OR bQAWrappingChannelPistonValve2 OR bQRWrappingChannelPistonValve2;
		bQWrappingChannelPistonValve3  :=  bQMWrappingChannelPistonValve3 OR bQAWrappingChannelPistonValve3 OR bQRWrappingChannelPistonValve3;
		bQSealingTopPistonValve  :=  bQMSealingTopPistonValve OR bQASealingTopPistonValve OR bQRSealingTopPistonValve ;
		bQSealingBottomPistonValve  :=  bQMSealingBottomPistonValve OR bQASealingBottomPistonValve  ;
		bQSealingSeparatorYAxisPistonValve:=  (bQMSealingSeparatorYAxisPistonValve OR bQASealingSeparatorYAxisPistonValve OR bQRSealingSeparatorYAxisPistonValve );

		bQSealingSeparatorXAxisPistonValve:=  ( bQMSealingSeparatorXAxisPistonValve OR bQASealingSeparatorXAxisPistonValve OR bQRSealingSeparatorXAxisPistonValve );
		bQFeedingConveyorMotor:=bQMFeedingConveyorMotor OR bQAFeedingConveyorMotor  ;
		bQWrappingConveyorMotor:=bQMWrappingConveyorMotor OR bQAWrappingConveyorMotor OR bQRWrappingConveyorMotor;
		bQFilmRollerMotor1:=bQMFilmRollerMotor1 OR bQAFilmRollerMotor1;
		bQFilmRollerMotor2 :=bQMFilmRollerMotor2 OR bQAFilmRollerMotor2;
		bQFilmRollerMotor3 :=bQMFilmRollerMotor3 OR bQAFilmRollerMotor3;
		bQSealingConveyorMotorFWD :=bQMSealingConveyorMotor OR bQASealingConveyorMotor OR bQRSealingConveyorMotor;

		bQUnitARowStopperMotorFwd:=  (bQAUnitARowStopperMotorFwd   OR bQMUnitA_RowStopperMotorForward);
		bQUnitARowStopperMotorRev:= (bQAUnitARowStopperMotorRev OR bQMUnitA_RowStopperMotorReverse  );
		bQUnitBRowStopperMotorFwd:=bQAUnitBRowStopperMotorFwd OR bQMUnitB_RowStopperMotorForward ;
		bQUnitBRowStopperMotorRev :=bQAUnitBRowStopperMotorRev OR bQMUnitB_RowStopperMotorReverse ;
		bQUnitAWeightokLamp:= bQAUnitAWeightokLamp;
		bQUnitAWeightNokLamp:= bQAUnitAWeightNokLamp;
		bQUnitBWeightOkLamp:= bQAUnitBWeightOkLamp;
		bQUnitBWeightNokLamp:= bQAUnitBWeightNokLamp;
		bQTLGreen:=bQAGreen;
		bQTLAmber:=bQAAmber;
		bQTLRed:=bQARed;
		 bQBuzzer:= bQABuzzer;





bQAUnitARowStopperMotorFwd:= bQAUnitA_RowStopperMotorForward1;

bQAUnitARowStopperMotorRev:=bQAUnitA_RowStopperMotorReverse1;

                 , } } ш           PARAMETER_SETTINGS йН`	йН`      @ѓџ            л   PROGRAM PARAMETER_SETTINGS
VAR
	R_TRIG_1: R_TRIG;

	PrintVar: INT;
	negativetolerance1: BOOL;
	negativetolerance2: BOOL;
	negativetolerance3: BOOL;
	negativetolerance4: BOOL;
	negativetolerance5: BOOL;
END_VARт2  IF SAVE AND PRGNO=1 AND NegTolEnableHmi THEN NegTol1:=1;ELSIF SAVE AND PRGNO=1 AND NOT  NegTolEnableHmi THEN  NegTol1:=0;END_IF
IF SAVE AND PRGNO=2 AND NegTolEnableHmi THEN NegTol2:=1;ELSIF SAVE AND PRGNO=2 AND NOT NegTolEnableHmi THEN  NegTol2:=0;END_IF
IF SAVE AND PRGNO=3 AND NegTolEnableHmi THEN NegTol3:=1;ELSIF SAVE AND PRGNO=3 AND NOT NegTolEnableHmi THEN  NegTol3:=0;END_IF
IF SAVE AND PRGNO=4 AND NegTolEnableHmi THEN NegTol4:=1;ELSIF SAVE AND PRGNO=4 AND NOT NegTolEnableHmi THEN  NegTol4:=0;END_IF
IF SAVE AND PRGNO=5 AND NegTolEnableHmi THEN NegTol5:=1;ELSIF SAVE AND PRGNO=5 AND NOT NegTolEnableHmi THEN  NegTol5:=0;END_IF

IF SAVE AND PRGNO=1 THEN

	PRGNO1:=PRGNO;
	COUNT1:=COUNT;
	DETAILS1:=DETAILS;
	LOTNO1:=LOTNO;
	CARTONNO1:=CARTONNO;
	WORKORDERNO1:=WORKORDERNO;
	BLEND1:=BLEND;
	SHADE1:=SHADE;
	CONETIP1:=CONETIP;
	CONELENGTH1:=CONELENGTH;
	CONENETWT1:=CONENETWT;
	DFLTNETWT1:=DFLTNETWT;
	NETWTTOL1:=NETWTTOL;
	DFLTGROSSWT1:=DFLTGROSSWT;
	GROSSWTTOL1:=GROSSWTTOL;
	(*NegTol1:=NegTol;*)

ELSIF SAVE AND PRGNO=2 THEN

	PRGNO2:=PRGNO;
	COUNT2:=COUNT;
	DETAILS2:=DETAILS;
	LOTNO2:=LOTNO;
	CARTONNO2:=CARTONNO;
	WORKORDERNO2:=WORKORDERNO;
	BLEND2:=BLEND;
	SHADE2:=SHADE;
	CONETIP2:=CONETIP;
	CONELENGTH2:=CONELENGTH;
	CONENETWT2:=CONENETWT;
	DFLTNETWT2:=DFLTNETWT;
	NETWTTOL2:=NETWTTOL;
	DFLTGROSSWT2:=DFLTGROSSWT;
	GROSSWTTOL2:=GROSSWTTOL;
	(*NegTol2:=NegTol;*)

ELSIF SAVE AND PRGNO=3 THEN

	PRGNO3:=PRGNO;
	COUNT3:=COUNT;
	DETAILS3:=DETAILS;
	LOTNO3:=LOTNO;
	CARTONNO3:=CARTONNO;
	WORKORDERNO3:=WORKORDERNO;
	BLEND3:=BLEND;
	SHADE3:=SHADE;
	CONETIP3:=CONETIP;
	CONELENGTH3:=CONELENGTH;
	CONENETWT3:=CONENETWT;
	DFLTNETWT3:=DFLTNETWT;
	NETWTTOL3:=NETWTTOL;
	DFLTGROSSWT3:=DFLTGROSSWT;
	GROSSWTTOL3:=GROSSWTTOL;
	(*NegTol3:=NegTol;*)


ELSIF SAVE AND PRGNO=4 THEN

	PRGNO4:=PRGNO;
	COUNT4:=COUNT;
	DETAILS4:=DETAILS;
	LOTNO4:=LOTNO;
	CARTONNO4:=CARTONNO;
	WORKORDERNO4:=WORKORDERNO;
	BLEND4:=BLEND;
	SHADE4:=SHADE;
	CONETIP4:=CONETIP;
	CONELENGTH4:=CONELENGTH;
	CONENETWT4:=CONENETWT;
	DFLTNETWT4:=DFLTNETWT;
	NETWTTOL4:=NETWTTOL;
	DFLTGROSSWT4:=DFLTGROSSWT;
	GROSSWTTOL4:=GROSSWTTOL;
	(*NegTol4:=NegTol;*)

ELSIF SAVE AND PRGNO=5 THEN

	PRGNO5:=PRGNO;
	COUNT5:=COUNT;
	DETAILS5:=DETAILS;
	LOTNO5:=LOTNO;
	CARTONNO5:=CARTONNO;
	WORKORDERNO5:=WORKORDERNO;
	BLEND5:=BLEND;
	SHADE5:=SHADE;
	CONETIP5:=CONETIP;
	CONELENGTH5:=CONELENGTH;
	CONENETWT5:=CONENETWT;
	DFLTNETWT5:=DFLTNETWT;
	NETWTTOL5:=NETWTTOL;
	DFLTGROSSWT5:=DFLTGROSSWT;
	GROSSWTTOL5:=GROSSWTTOL;
	(*NegTol5:=NegTol;*)

ELSIF SAVE AND PRGNO=6 THEN

	PRGNO6:=PRGNO;
	COUNT6:=COUNT;
	DETAILS6:=DETAILS;
	LOTNO6:=LOTNO;
	CARTONNO6:=CARTONNO;
	WORKORDERNO6:=WORKORDERNO;
	BLEND6:=BLEND;
	SHADE6:=SHADE;
	CONETIP6:=CONETIP;
	CONELENGTH6:=CONELENGTH;
	CONENETWT6:=CONENETWT;
	DFLTNETWT6:=DFLTNETWT;
	NETWTTOL6:=NETWTTOL;
	DFLTGROSSWT6:=DFLTGROSSWT;
	GROSSWTTOL6:=GROSSWTTOL;


ELSIF SAVE AND PRGNO=7 THEN

	PRGNO7:=PRGNO;
	COUNT7:=COUNT;
	DETAILS7:=DETAILS;
	LOTNO7:=LOTNO;
	CARTONNO7:=CARTONNO;
	WORKORDERNO7:=WORKORDERNO;
	BLEND7:=BLEND;
	SHADE7:=SHADE;
	CONETIP7:=CONETIP;
	CONELENGTH7:=CONELENGTH;
	CONENETWT7:=CONENETWT;
	DFLTNETWT7:=DFLTNETWT;
	NETWTTOL7:=NETWTTOL;
	DFLTGROSSWT7:=DFLTGROSSWT;
	GROSSWTTOL7:=GROSSWTTOL;


ELSIF SAVE AND PRGNO=8 THEN

	PRGNO8:=PRGNO;
	COUNT8:=COUNT;
	DETAILS8:=DETAILS;
	LOTNO8:=LOTNO;
	CARTONNO8:=CARTONNO;
	WORKORDERNO8:=WORKORDERNO;
	BLEND8:=BLEND;
	SHADE8:=SHADE;
	CONETIP8:=CONETIP;
	CONELENGTH8:=CONELENGTH;
	CONENETWT8:=CONENETWT;
	DFLTNETWT8:=DFLTNETWT;
	NETWTTOL8:=NETWTTOL;
	DFLTGROSSWT8:=DFLTGROSSWT;
	GROSSWTTOL8:=GROSSWTTOL;


ELSIF SAVE AND PRGNO=9 THEN

	PRGNO9:=PRGNO;
	COUNT9:=COUNT;
	DETAILS9:=DETAILS;
	LOTNO9:=LOTNO;
	CARTONNO9:=CARTONNO;
	WORKORDERNO9 :=WORKORDERNO;
	BLEND9 :=BLEND;
	SHADE9 :=SHADE;
	CONETIP9 :=CONETIP;
	CONELENGTH9 :=CONELENGTH;
	CONENETWT9 :=CONENETWT;
	DFLTNETWT9 :=DFLTNETWT;
	NETWTTOL9 :=NETWTTOL;
	DFLTGROSSWT9 :=DFLTGROSSWT;
	GROSSWTTOL9 :=GROSSWTTOL;


ELSIF SAVE AND PRGNO=10 THEN

	PRGNO10:=PRGNO;
	COUNT10:=COUNT;
	DETAILS10:=DETAILS;
	LOTNO10:=LOTNO;
	CARTONNO10:=CARTONNO;
	WORKORDERNO10:=WORKORDERNO;
	BLEND10:=BLEND;
	SHADE10:=SHADE;
	CONETIP10:=CONETIP;
	CONELENGTH10:=CONELENGTH;
	CONENETWT10:=CONENETWT;
	DFLTNETWT10:=DFLTNETWT;
	NETWTTOL10:=NETWTTOL;
	DFLTGROSSWT10:=DFLTGROSSWT;
	GROSSWTTOL10:=GROSSWTTOL;

END_IF










IF LOAD AND PRGNO_LOAD=1 THEN

	PRGNO_DIS:=PRGNO1;
	COUNT_DIS:=COUNT1;
	DETAILS_DIS:=DETAILS1;
	LOTNO_DIS:=LOTNO1;
	CARTONNO_DIS:=CARTONNO1;
	WORKORDERNO_DIS:=WORKORDERNO1;
	BLEND_DIS:=BLEND1;
	SHADE_DIS:=SHADE1;
	CONETIP_DIS:=CONETIP1;
	CONELENGTH_DIS:=CONELENGTH1;
	CONENETWT_DIS:=CONENETWT1;
	DFLTNETWT_DIS:=DFLTNETWT1;
	NETWTTOL_DIS:=NETWTTOL1;
	DFLTGROSSWT_DIS:=DFLTGROSSWT1;
	GROSSWTTOL_DIS:=GROSSWTTOL1;
	NegTol_DIS:=NegTol1;
	PRG1RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;

ELSIF LOAD AND PRGNO_LOAD=2 THEN

	PRGNO_DIS:=PRGNO2;
	COUNT_DIS:=COUNT2;
	DETAILS_DIS:=DETAILS2;
	LOTNO_DIS:=LOTNO2;
	CARTONNO_DIS:=CARTONNO2;
	WORKORDERNO_DIS:=WORKORDERNO2;
	BLEND_DIS:=BLEND2;
	SHADE_DIS:=SHADE2;
	CONETIP_DIS:=CONETIP2;
	CONELENGTH_DIS:=CONELENGTH2;
	CONENETWT_DIS:=CONENETWT2;
	DFLTNETWT_DIS:=DFLTNETWT2;
	NETWTTOL_DIS:=NETWTTOL2;
	DFLTGROSSWT_DIS:=DFLTGROSSWT2;
	GROSSWTTOL_DIS:=GROSSWTTOL2;
	NegTol_DIS:=NegTol2;
	PRG2RUNNING:=TRUE;
	PRG1RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;

ELSIF LOAD AND PRGNO_LOAD=3 THEN

	PRGNO_DIS:=PRGNO3;
	COUNT_DIS:=COUNT3;
	DETAILS_DIS:=DETAILS3;
	LOTNO_DIS:=LOTNO3;
	CARTONNO_DIS:=CARTONNO3;
	WORKORDERNO_DIS:=WORKORDERNO3;
	BLEND_DIS:=BLEND3;
	SHADE_DIS:=SHADE3;
	CONETIP_DIS:=CONETIP3;
	CONELENGTH_DIS:=CONELENGTH3;
	CONENETWT_DIS:=CONENETWT3;
	DFLTNETWT_DIS:=DFLTNETWT3;
	NETWTTOL_DIS:=NETWTTOL3;
	DFLTGROSSWT_DIS:=DFLTGROSSWT3;
	GROSSWTTOL_DIS:=GROSSWTTOL3;
	NegTol_DIS:=NegTol3;
	PRG3RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;


ELSIF LOAD AND PRGNO_LOAD=4 THEN

	PRGNO_DIS:=PRGNO4;
	COUNT_DIS:=COUNT4;
	DETAILS_DIS:=DETAILS4;
	LOTNO_DIS:=LOTNO4;
	CARTONNO_DIS:=CARTONNO4;
	WORKORDERNO_DIS:=WORKORDERNO4;
	BLEND_DIS:=BLEND4;
	SHADE_DIS:=SHADE4;
	CONETIP_DIS:=CONETIP4;
	CONELENGTH_DIS:=CONELENGTH4;
	CONENETWT_DIS:=CONENETWT4;
	DFLTNETWT_DIS:=DFLTNETWT4;
	NETWTTOL_DIS:=NETWTTOL4;
	DFLTGROSSWT_DIS:=DFLTGROSSWT4;
	GROSSWTTOL_DIS:=GROSSWTTOL4;
	NegTol_DIS:=NegTol4;
	PRG4RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;


ELSIF LOAD AND PRGNO_LOAD=5 THEN

	PRGNO_DIS:=PRGNO5;
	COUNT_DIS:=COUNT5;
	DETAILS_DIS:=DETAILS5;
	LOTNO_DIS:=LOTNO5;
	CARTONNO_DIS:=CARTONNO5;
	WORKORDERNO_DIS:=WORKORDERNO5;
	BLEND_DIS:=BLEND5;
	SHADE_DIS:=SHADE5;
	CONETIP_DIS:=CONETIP5;
	CONELENGTH_DIS:=CONELENGTH5;
	CONENETWT_DIS:=CONENETWT5;
	DFLTNETWT_DIS:=DFLTNETWT5;
	NETWTTOL_DIS:=NETWTTOL5;
	DFLTGROSSWT_DIS:=DFLTGROSSWT5;
	GROSSWTTOL_DIS:=GROSSWTTOL5;
	NegTol_DIS:=NegTol5;
	PRG5RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;

ELSIF LOAD AND PRGNO_LOAD=6 THEN

	PRGNO_DIS:=PRGNO6;
	COUNT_DIS:=COUNT6;
	DETAILS_DIS:=DETAILS6;
	LOTNO_DIS:=LOTNO6;
	CARTONNO_DIS:=CARTONNO6;
	WORKORDERNO_DIS:=WORKORDERNO6;
	BLEND_DIS:=BLEND6;
	SHADE_DIS:=SHADE6;
	CONETIP_DIS:=CONETIP6;
	CONELENGTH_DIS:=CONELENGTH6;
	CONENETWT_DIS:=CONENETWT6;
	DFLTNETWT_DIS:=DFLTNETWT6;
	NETWTTOL_DIS:=NETWTTOL6;
	DFLTGROSSWT_DIS:=DFLTGROSSWT6;
	GROSSWTTOL_DIS:=GROSSWTTOL6;
	PRG6RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;

ELSIF LOAD AND PRGNO_LOAD=7 THEN

	PRGNO_DIS:=PRGNO7;
	COUNT_DIS:=COUNT7;
	DETAILS_DIS:=DETAILS7;
	LOTNO_DIS:=LOTNO7;
	CARTONNO_DIS:=CARTONNO7;
	WORKORDERNO_DIS:=WORKORDERNO7;
	BLEND_DIS:=BLEND7;
	SHADE_DIS:=SHADE7;
	CONETIP_DIS:=CONETIP7;
	CONELENGTH_DIS:=CONELENGTH7;
	CONENETWT_DIS:=CONENETWT7;
	DFLTNETWT_DIS:=DFLTNETWT7;
	NETWTTOL_DIS:=NETWTTOL7;
	DFLTGROSSWT_DIS:=DFLTGROSSWT7;
	GROSSWTTOL_DIS:=GROSSWTTOL7;
	PRG7RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;


ELSIF LOAD AND PRGNO_LOAD=8 THEN

	PRGNO_DIS:=PRGNO8;
	COUNT_DIS:=COUNT8;
	DETAILS_DIS:=DETAILS8;
	LOTNO_DIS:=LOTNO8;
	CARTONNO_DIS:=CARTONNO8;
	WORKORDERNO_DIS:=WORKORDERNO8;
	BLEND_DIS:=BLEND8;
	SHADE_DIS:=SHADE8;
	CONETIP_DIS:=CONETIP8;
	CONELENGTH_DIS:=CONELENGTH8;
	CONENETWT_DIS:=CONENETWT8;
	DFLTNETWT_DIS:=DFLTNETWT8;
	NETWTTOL_DIS:=NETWTTOL8;
	DFLTGROSSWT_DIS:=DFLTGROSSWT8;
	GROSSWTTOL_DIS:=GROSSWTTOL8;
	PRG8RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;


ELSIF LOAD AND PRGNO_LOAD=9 THEN

	PRGNO_DIS:=PRGNO9;
	COUNT_DIS:=COUNT9;
	DETAILS_DIS:=DETAILS9;
	LOTNO_DIS:=LOTNO9;
	CARTONNO_DIS:=CARTONNO9;
	WORKORDERNO_DIS:=WORKORDERNO9;
	BLEND_DIS:=BLEND9;
	SHADE_DIS:=SHADE9;
	CONETIP_DIS:=CONETIP9;
	CONELENGTH_DIS:=CONELENGTH9;
	CONENETWT_DIS:=CONENETWT9;
	DFLTNETWT_DIS:=DFLTNETWT9;
	NETWTTOL_DIS:=NETWTTOL9;
	DFLTGROSSWT_DIS:=DFLTGROSSWT9;
	GROSSWTTOL_DIS:=GROSSWTTOL9;
	PRG9RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;
	PRG10RUNNING:=FALSE;


ELSIF LOAD AND PRGNO_LOAD=10 THEN

	PRGNO_DIS:=PRGNO10;
	COUNT_DIS:=COUNT10;
	DETAILS_DIS:=DETAILS10;
	LOTNO_DIS:=LOTNO10;
	CARTONNO_DIS:=CARTONNO10;
	WORKORDERNO_DIS:=WORKORDERNO10;
	BLEND_DIS:=BLEND10;
	SHADE_DIS:=SHADE10;
	CONETIP_DIS:=CONETIP10;
	CONELENGTH_DIS:=CONELENGTH10;
	CONENETWT_DIS:=CONENETWT10;
	DFLTNETWT_DIS:=DFLTNETWT10;
	NETWTTOL_DIS:=NETWTTOL10;
	DFLTGROSSWT_DIS:=DFLTGROSSWT10;
	GROSSWTTOL_DIS:=GROSSWTTOL10;
	PRG10RUNNING:=TRUE;
	PRG2RUNNING:=FALSE;
	PRG3RUNNING:=FALSE;
	PRG4RUNNING:=FALSE;
	PRG5RUNNING:=FALSE;
	PRG6RUNNING:=FALSE;
	PRG7RUNNING:=FALSE;
	PRG8RUNNING:=FALSE;
	PRG9RUNNING:=FALSE;
	PRG1RUNNING:=FALSE;

END_IF


IF PRG1RUNNING AND NegTol1=1 THEN negativetolerance1:=TRUE; ELSE negativetolerance1:=FALSE;END_IF

IF PRG2RUNNING AND NegTol2=1 THEN negativetolerance2:=TRUE; ELSE negativetolerance2:=FALSE;END_IF

IF PRG3RUNNING AND NegTol3=1 THEN negativetolerance3:=TRUE; ELSE negativetolerance3:=FALSE;END_IF

IF PRG4RUNNING AND NegTol4=1 THEN negativetolerance4:=TRUE; ELSE negativetolerance4:=FALSE;END_IF

IF PRG5RUNNING AND NegTol5=1 THEN negativetolerance5:=TRUE; ELSE negativetolerance5:=FALSE;END_IF

IF PRG1RUNNING AND negativetolerance1 THEN negativetolerance:=TRUE;
ELSIF PRG2RUNNING AND negativetolerance2 THEN negativetolerance:=TRUE;
ELSIF PRG3RUNNING AND negativetolerance3 THEN negativetolerance:=TRUE;
ELSIF PRG4RUNNING AND negativetolerance4 THEN negativetolerance:=TRUE;
ELSIF PRG5RUNNING AND negativetolerance5 THEN negativetolerance:=TRUE;END_IF
IF LOAD THEN negativetolerance:=FALSE;END_IF

R_TRIG_1(CLK:=(PROCESSCOMPLETE) , Q=> );


IF R_TRIG_1.Q THEN
CartonNoHmi:=CartonNoHmi+1;
(*CARTONNO_DIS:=CARTONNO_DIS+1;*)


END_IF

IF PRGNO_LOAD=3 AND R_TRIG_1.Q THEN CARTONNO3:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=2 AND R_TRIG_1.Q THEN CARTONNO2:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=1 AND R_TRIG_1.Q THEN CARTONNO1:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=4 AND R_TRIG_1.Q THEN CARTONNO4:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=5 AND R_TRIG_1.Q THEN CARTONNO5:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=6 AND R_TRIG_1.Q THEN CARTONNO6:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=7 AND R_TRIG_1.Q THEN CARTONNO7:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=8 AND R_TRIG_1.Q THEN CARTONNO8:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=9 AND R_TRIG_1.Q THEN CARTONNO9:=CARTONNO_DIS;
ELSIF PRGNO_LOAD=10 AND R_TRIG_1.Q THEN CARTONNO10:=CARTONNO_DIS;
END_IF

DefaultNetWt :=DFLTNETWT_DIS;
NetWtTolRep:=	NETWTTOL_DIS;
DefaultGrossWt:=	DFLTGROSSWT_DIS;
GrossWtTolRep:=	GROSSWTTOL_DIS;
               +   , K           RS_Error йН`	йН`          Э           ј   FUNCTION_BLOCK RS_Error
VAR_INPUT
	bValveOutOn: BOOL;
	bReedSwithIn: BOOL;
	bErroReset: BOOL;
	sMsgIn: STRING;
	RS_ErrChkDly: TIME;
END_VAR
VAR_OUTPUT
	bRsError: BOOL;
	sMsgOut: STRING;
END_VAR
VAR
	FbStep: INT;
	Timer1: TON;
END_VARи  CASE FbStep OF


	0:	Timer1(IN:=FALSE);  FbStep:=FbStep+1;

	1:	IF bValveOutOn THEN FbStep:=FbStep+1; END_IF

	2:	IF bValveOutOn THEN  Timer1(IN:=TRUE , PT:=RS_ErrChkDly , Q=> , ET=> );
		IF Timer1.Q THEN FbStep:=FbStep+1; ;END_IF
		ELSE
		Timer1(IN:=FALSE);  FbStep:= 0 ;
		END_IF


	3:	IF bReedSwithIn THEN  FbStep:=FbStep+1;
		ELSIF NOT bReedSwithIn THEN FbStep:=FbStep+2; END_IF

	4:	IF  NOT bValveOutOn THEN sMsgOut:='';  FbStep:=0; END_IF

	5:	bRsError:=TRUE;  sMsgOut:=sMsgIn; FbStep:=FbStep+1;

	6:	IF bReedSwithIn AND  bErroReset  THEN bRsError:=FALSE; sMsgOut:='' ;  FbStep:=0;
		ELSIF NOT   bReedSwithIn AND    bErroReset THEN bRsError:=FALSE;   sMsgOut:='' ;   FbStep:=0;
		 END_IF

END_CASE               "   , н _Кд           Sealing_Conveyor йН`	йН`      T AMrion        ?  PROGRAM Sealing_Conveyor
VAR

	bA3ConeSealStarted23: BOOL;
	bQASealingConveyor2: BOOL;
	ConvStopDly1_23: TON;
	bA3ConeSealComp23: BOOL;
	step1: INT;
	(*CTU_1: CTU;*)
	bAConeCountSenEnable1: BOOL;
	bA6thConeSealStarted23: BOOL;
	bA6thConeSealComp23: BOOL;
	ConvStopDly2_23: TON;
	step2: INT;
	step3: INT;
	bSealConvIntOverTemp: BOOL;
	bStopHmitemp: BOOL;
	ConeMissErr_1: BOOL;

	ConeMissErr_2: BOOL;
	test: BOOL;
	bA3COneCrossed: BOOL;
	bSealConvStart3: BOOL;
	bSealConvStart1: BOOL;
	TON1: TON;
	Timer1: TON;
	Timer2: TON;

	Timer3: TON;
	bConeMissBit2: BOOL;
	bConeMissBit3: BOOL;
	bConeMissBit1: BOOL;
	Timer4: TON;
	bConeMissBit: BOOL;
	ConeChkDly: TON;
	SealConeMiss: STRING;
	bQASealingConveyor3: BOOL;
	bAConeMissAtSealConv2: BOOL;
	bA3ConeSealComp23Temp: BOOL;
	bTemp: BOOL;

END_VAR  bQASealingConveyorMotor:= bQASealingConveyor1 OR bQASealingConveyor2 OR bQASealingConveyor3 ;


CASE step1 OF

	0:	IF bAutoModeOn  AND   bA3ConeWrappOver AND bQASealingSeparatorYAxisPistonValve  THEN
		CTU_1.RESET:=TRUE;
		TON1(IN:=FALSE);
		bA3ConeSealStarted23:=TRUE;
		ConvStopDly1_23(IN:=FALSE);
		step1:=step1+1;
		END_IF
	1:	IF NOT bAPauseSeq THEN step1:=step1+1; END_IF


	2:	IF bAutoModeOn  AND  bA3ConeSealStarted23 AND bISealingSeparatorXAxisEnd THEN
		bA3ConeSealComp23:=TRUE;
		CTU_1.RESET:=FALSE;
		step1:=step1+1;
		END_IF

	3:	step1:=step1+1;

	4:	IF bAutoModeOn AND   bA3ConeSealComp23Temp  AND   NOT bAPauseSeq    AND NOT bASealSepXCylRsError THEN
		bQASealingConveyor1:=TRUE;
		step1:=step1+1;
		END_IF

	5:	 TON1(IN:=FALSE); step1:=step1+1;


	6:	IF CTU_1.CV>=3 THEN
		bSealConvStart1:=FALSE;
		bSealConvStart3:=FALSE;
		bA3ConeSealComp23Temp:=FALSE;
		bA3ConeSealStarted23:=FALSE;
		bA3COneCrossed:=TRUE;
		TON1(IN:=TRUE, PT:=  t#1s, Q=> , ET=> );
		IF TON1.Q THEN  CTU_1.RESET:=TRUE; step1:=step1+1; END_IF
		END_IF

	7:	bQASealingConveyor1:=FALSE;
		bQASealingConveyor2:=FALSE;
		bQASealingConveyor3:=FALSE;
		bASealConvEnd1:=TRUE;
		CTU_1.RESET:=FALSE;
		TON1(IN:=FALSE);
		step1:=0;



END_CASE

IF NOT bQASealingConveyorMotor AND bIConeCountSensor  THEN bAWrapwait:=TRUE;ELSE bAWrapwait:=FALSE;END_IF

IF bA3ConeSealComp23 THEN  bA3ConeSealComp23Temp:=TRUE;  bA3ConeSealComp23:=FALSE; END_IF


IF bQASealingConveyorMotor AND bIConeCountSensor  THEN
bAConeCountSenEnable1:=TRUE;
ELSE
bAConeCountSenEnable1:=FALSE;
END_IF

CTU_1(
	CU:=bAConeCountSenEnable1 ,
	RESET:= ,
	PV:=3 ,
	Q=> ,
	CV=> );

IF CTU_1.CV<>3 AND (bQASealingConveyor1 OR bQASealingConveyor2 OR bQASealingConveyor3 )THEN
(*ConeMissbit:=TRUE;*)
ConeChkDly(IN:= TRUE , PT:=t#7s , Q=> , ET=> );
ELSE
ConeChkDly(IN:= FALSE);
END_IF


(*
CASE SealingStep OF



	0:	Timer1(IN:=FALSE);
		Timer2(IN:=FALSE);
		Timer3(IN:=FALSE);
		SealingStep:=SealingStep+1;

	1:	IF  ConeMissbit  THEN
		Timer1(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
		IF NOT Timer1.Q  AND (CTU_1.CV ) = 1 THEN SealingStep:=SealingStep+1;
		ELSIF  Timer1.Q	 AND (CTU_1.CV)<>1 THEN  SealingStep:=3;
		END_IF
		END_IF

	2:	IF (CTU_1.CV)=1 THEN
		SealingStep:=SealingStep+2;
		END_IF

	3:	IF  (CTU_1.CV)<>1 THEN
		bConeMissBit1:=TRUE;
		AlarmMessg:='One Cone  Missing From Sealing Conveyor';
		SealingStep:=11;
		ELSIF (CTU_1.CV) = 1  THEN
		AlarmMessg:='';
		SealingStep:=SealingStep+1;
		END_IF


	4:	Timer2(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
		IF NOT Timer2.Q  AND (CTU_1.CV ) = 2 THEN SealingStep:=SealingStep+1;
		ELSIF  Timer2.Q	 AND (CTU_1.CV)<>2 THEN  SealingStep:=6; END_IF


	5:	IF (CTU_1.CV)=2 THEN
		SealingStep:=SealingStep+2; END_IF




	6:	IF  (CTU_1.CV)<>2 THEN
		bConeMissBit2:=TRUE;
		AlarmMessg:='Two Cone  Missing From Sealing Conveyor';
		SealingStep:=11;
		ELSIF (CTU_1.CV) = 2  THEN
		AlarmMessg:='';
		SealingStep:=SealingStep+1;

		END_IF

	7:	Timer3(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
		IF NOT Timer3.Q AND  NOT bAPauseSeq  AND (CTU_1.CV ) =3 THEN SealingStep:=SealingStep+1;
		ELSIF  Timer3.Q AND  NOT bAPauseSeq	 AND (CTU_1.CV)<>3 THEN  SealingStep:=9; END_IF

	8:	IF (CTU_1.CV)=3 THEN
		SealingStep:=10;
		END_IF

	9:	IF (CTU_1.CV) <> 3  THEN
		bConeMissBit3:=TRUE;
		AlarmMessg:='One Cone  Missing From Sealing Conveyor';
		SealingStep:=11;
		ELSIF (CTU_1.CV) = 3  THEN
		AlarmMessg:='';
		SealingStep:=SealingStep+1;
		END_IF


	10:	IF (CTU_1.CV)=0 THEN
		ConeMissbit:=FALSE;
		Timer3(IN:=FALSE);
		Timer2(IN:=FALSE);
		Timer1(IN:=FALSE);
		SealingStep:=0;
		END_IF

	11:	Timer4(IN:=TRUE , PT:= t#3m, Q=> , ET=> );
		IF bConeMissBit  AND  (CTU_1.CV)=1  AND  Timer4.Q THEN(* bAPauseEnable:=TRUE; *)  bQASealingConveyor1:=FALSE;  Step1:=4;  SealingStep:=7;
		ELSIF bConeMissBit  AND  (CTU_1.CV)=2  AND  Timer4.Q THEN (*bAPauseEnable:=TRUE; *) bQASealingConveyor1:=FALSE;  Step1:=4;  SealingStep:=7;
		END_IF

END_CASE




IF bQASealingConveyor1_23 AND CTU_AlarmOnly.CV =3  THEN  bCountLock1:=TRUE; END_IF

IF bQASealingConveyor5_23 AND CTU_AlarmOnly.CV =3  THEN  bCountLock5:=TRUE; END_IF

IF bQASealingConveyor6_23 AND CTU_AlarmOnly.CV =3  THEN  bCountLock6:=TRUE; END_IF


IF bQASealingConveyor2_23 AND CTU_AlarmOnly.CV =6  THEN  bCountLock2:=TRUE; END_IF


IF bQASealingConveyor3_23 AND CTU_AlarmOnly.CV =6  THEN  bCountLock3:=TRUE; END_IF


IF bQASealingConveyor4_23 AND CTU_AlarmOnly.CV =6  THEN  bCountLock4:=TRUE; END_IF


 IF bCountLock1 OR bCountLock2 OR  bCountLock3 OR bCountLock4 OR  bCountLock5 OR bCountLock6 THEN bCountLock:=TRUE; ELSE bCountLock:=FALSE; END_IF
*)


IF bQASealingConveyor1  AND  ConeChkDly.Q   AND   CTU_1.CV<>3  THEN bAConeMissAtSealConv:=TRUE; AlarmMessg:=' Cone  Missing From Sealing Conveyor';  bQASealingConveyor1:=FALSE;  END_IF




IF bAConeMissAtSealConv AND bErrorReset THEN bQASealingConveyor2:=TRUE;  Step1:=5;    AlarmMessg:=''; bAConeMissAtSealConv:=FALSE; END_IF

IF bQASealingConveyor2  AND  ConeChkDly.Q   AND CTU_1.CV<>3   THEN bAConeMissAtSealConv2:=TRUE; AlarmMessg:=' Cone  Missing From Sealing Conveyor';  bQASealingConveyor2:=FALSE;  END_IF

IF bAConeMissAtSealConv2 AND bErrorReset THEN bQASealingConveyor3:=TRUE;  Step1:=5;  ConeChkDly(IN:= FALSE);  AlarmMessg:=''; bAConeMissAtSealConv2:=FALSE; END_IF

IF bQASealingConveyor3 AND ConeChkDly.Q  AND CTU_1.CV<>3 THEN bQASealingConveyor3:=FALSE; bTemp:=TRUE;  AlarmMessg:=' Cone  Missing From Sealing Conveyor'; END_IF

IF bTemp  AND bErrorReset THEN
Step1:=4;  ConeChkDly(IN:= FALSE); bTemp:=FALSE;
END_IF



IF bAConeMissAtSealConv OR bAConeMissAtSealConv2 THEN bAConeMissAtSealConv:=TRUE; ELSE  bAConeMissAtSealConv:=FALSE; END_IF



IF NOT  bIEmergency OR  bAutoModeOff  OR bStopHmi OR bIMCStop  THEN
step1:=0;
bA3ConeSealStarted23:=FALSE;
ConvStopDly1_23(IN:=FALSE);
bA3ConeSealComp23:=FALSE;
bQASealingConveyor1:=FALSE;
bQASealingConveyor2:=FALSE;
bQASealingConveyor3:=FALSE;
bAConeMissAtSealConv:=FALSE;
bAConeMissAtSealConv2:=FALSE;
bAConeMissAtSealConv:=FALSE;
CTU_1.RESET:=TRUE;
bAConeCountSenEnable1:=FALSE;
TON1(IN:=FALSE);
ELSE

CTU_1.RESET:=FALSE;

END_IF               #   ,   Iн О           Sealing_Unit йН`	йН`      P  В         t   PROGRAM Sealing_Unit
VAR
	step: INT;
	tA3ConeStartDly: TON;
	tA3ConeSealCompDly: TON;
	test: BOOL;


END_VARФ  IF NOT  bIEmergency   OR bStopHmi  OR  bAutoModeOff  OR bIMCStop THEN
	Step:=0;
	bQASealingSeparatorYAxisPistonValve:=FALSE;
	bQASealingTopPistonValve:=FALSE;
	bQASealingSeparatorXAxisPistonValve:=FALSE;
	bA3ConeWrappOver:=FALSE;
	bMManualSealOn:=FALSE;
	tA3ConeStartDly(IN:=FALSE);
	tA3ConeSealCompDly(IN:=FALSE);

END_IF


CASE step OF

	0:	IF bAutoModeOn  THEN
		Step:=step+1;
		END_IF

	1:	step:=step+1;


	2:	IF bAutoModeOn AND  bA3ConeWrappOver   AND NOT bAPauseSeq  THEN
		tA3ConeStartDly(IN:=TRUE , PT:=t#1.5s , Q=> , ET=> );
		IF tA3ConeStartDly.Q THEN  step:=step+1; END_IF
		END_IF

	3:	step:=step+1;

	4:	IF bAutoModeOn AND   bISealingBottomPistonHome  AND bISealingTopPistonHome AND bISealingSeparatorXAxisHome AND bISealingSeparatorYAxisHome AND  NOT bAPauseSeq THEN
		bQASealingSeparatorYAxisPistonValve:=TRUE;
		bASepYAxisRsErrorChkBit:=TRUE;
		tA3ConeSealCompDly(IN:=FALSE);
		step:=step+1;
		END_IF

	5:	 step:=step+1;

	6:	IF bAutoModeOn AND  bISealingSeparatorYAxisEnd AND  NOT bAPauseSeq  AND NOT bASealSepYCylRsError THEN
		tA3ConeStartDly(IN:=FALSE);
		bQASealingTopPistonValve:=TRUE;
		bASepYAxisRsErrorChkBit:=FALSE;
		step:=step+1;
		END_IF

	7:	step:=step+1;

	8:	IF bAutoModeOn AND  bISealingTopPistonEnd AND bISealingBottomPistonEnd  THEN
		tA3ConeSealCompDly(IN:=TRUE, PT:= SealComDlyTemp, Q=> , ET=> );
		IF tA3ConeSealCompDly.Q THEN   step:=step+1; END_IF
		END_IF

	9:	step:=step+1;

	10:	IF bAutoModeOn AND  bISealingTopPistonEnd AND bISealingBottomPistonEnd (*AND  bISealingSeparatorYAxisEnd*) AND  NOT bAPauseSeq  AND NOT bASealTopBotCylRsError  AND NOT bASealSepYCylRsError  THEN
		bQASealingSeparatorXAxisPistonValve:=TRUE;
		(*bASepYAxisRsErrorChkBit1:=TRUE;  *)
		step:=step+1;
		END_IF

	11:	 bASepYAxisRsErrorChkBit1:=FALSE; step:=step+1;

	12:	IF bAutoModeOn AND  bISealingSeparatorXAxisEnd AND  NOT bAPauseSeq  AND NOT bASealSepXCylRsError THEN

		step:=step+1;
		 END_IF

	13:	 step:=step+1;

	14:	bQASealingTopPistonValve:=FALSE;
		bA3ConeWrappOver:=FALSE;
		bA4thWrappOver:=FALSE;
		bA6thConeWrappOver:=FALSE;
		bA8thConeWrappOver:=FALSE;
		bA6ConeWrappOver23:=FALSE;
		bQASealingSeparatorYAxisPistonValve:=FALSE;
		bQASealingSeparatorXAxisPistonValve:=FALSE;
		step:=step+1;

	15:	step:=step+1;

	16:	IF bAutoModeOn AND  bISealingSeparatorXAxisHome AND  bISealingTopPistonHome AND bISealingBottomPistonHome AND bISealingSeparatorYAxisHome  THEN
		step:=step+1;
		END_IF


	17:	step:=step+1;

	18:	step:=step+1;

	19:	 step:=step+1;

	20:	step:=0;



END_CASE

		IF bAutoModeOn AND NOT bA3ConeWrappOver  AND NOT bA4thWrappOver AND NOT bA6thConeWrappOver AND NOT bA8thConeWrappOver
		 AND  bISealingSeparatorXAxisHome AND  bISealingTopPistonHome AND bISealingBottomPistonHome AND bISealingSeparatorYAxisHome  THEN
		SealingOk:=TRUE; ELSE SealingOk:=FALSE;
		END_IF













































(*

(*================Wrapping Conveyor On/Off Logic==========================*)

CASE step OF
	1:	IF SealDelay.Q   AND NOT bIColumnPushPistonHome THEN
		bQAWrappingConveyorMotor:=TRUE;
		END_IF
	2:	IF bIConeCountSensorVal=3 THEN bQAWrappingConveyorMotor:=FALSE; END_IF

	3: 	IF SealDelay.Q  AND NOT bIColumnPushPistonHome   THEN  bQAWrappingConveyorMotor:=TRUE;	END_IF

	4:	IF bIConeCountSensorVal=1 THEN bQAWrappingConveyorMotor:=FALSE; END_IF

	5:	 IF SealDelay.Q   AND NOT bIColumnPushPistonHome   THEN  bQAWrappingConveyorMotor:=TRUE;	END_IF

	6:	IF bIConeCountSensorVal=2 THEN bQAWrappingConveyorMotor:=FALSE; END_IF


	7:	 IF SealDelay.Q   AND NOT bIColumnPushPistonHome   THEN  bQAWrappingConveyorMotor:=TRUE;	END_IF

	8:	IF bIConeCountSensorVal=2 THEN bQAWrappingConveyorMotor:=FALSE; END_IF


	9:	step:=0;


END_CASE

*)







(*


		IF bAutoModeOn AND  bAWrapConeCyl123 AND bIWrappingChannelPiston1_Home   AND bIWrappingChannelPiston2_Home AND bIWrappingChannelPiston3_Home    THEN
		bAWrappingCone123OnAuto:=TRUE;

		END_IF

		IF  bAutoModeOn AND  bIWrappingChannelPiston1_End AND bIWrappingChannelPiston2_End AND bIWrappingChannelPiston3_End   THEN
		bAWrappingCone123OnAuto:=FALSE;
		bAWrapConeCyl123:=FALSE;


		END_IF

	IF  bAutoModeOn AND  bAWrappingCone123OnAuto  THEN
		bA3ConeWrapStarted:=TRUE;
	END_IF

IF  bA3ConeWrapStarted AND bIWrappingChannelPiston1_End THEN
bA1ConeWrappOver:=TRUE;END_IF

 IF bA3ConeWrapStarted AND bIWrappingChannelPiston2_End THEN
bA2ConeWrappOver:=TRUE;
END_IF

IF bA3ConeWrapStarted AND  bIWrappingChannelPiston3_End THEN
bA3ConeWrappOver:=TRUE;
END_IF


IF bA1ConeWrappOver AND bA2ConeWrappOver AND bA3ConeWrappOver  THEN
bAll3ConeWrapOver:=TRUE;
 bASet1Comp:=TRUE;
END_IF


*)               3   ,   _н д           SealingConvRst йН`	йН`      ц\т  "            PROGRAM SealingConvRst
VAR
	step: INT;
	bConeAtWrppingConveyor1: BOOL;
	TON_1: TON;
	bConePresent: BOOL;
	TON_1Running: BOOL;

END_VAR  CASE step OF

	0:	 IF bSaelUnitIntOver AND bAutoModeOn THEN
		bQASealingConveyorMotor:=FALSE;
		bQMSealingConveyorMotor:=FALSE;
		bQASealingConveyor1:=FALSE;
		step:=step+1;
		END_IF

	1:	bQRSealingConveyorMotor:=TRUE;
		bSaelUnitIntOver:=FALSE;
		step:=step+1;

	2:	IF bConePresent THEN
		step:=step+2;
		ELSIF NOT bConePresent THEN
		step:=step+1;
		END_IF

	3:	IF  TON_1Running  AND bConePresent THEN
		step:=step+1;
		ELSIF TON_1.Q  AND NOT bConePresent THEN
		step:=step+2;
		END_IF

	4:	bQRSealingConveyorMotor:=FALSE;
		TON_1(IN:=FALSE);
		sSealConvStatus:='Clear Cone At Sealing Conveyor';
		bConePresent:=FALSE;
		step:=step+1;

	5:	IF NOT bConePresent AND bAutoModeOn   THEN
		sSealConvStatus:=' ';
		bQRSealingConveyorMotor:=FALSE;
		step:=step+1;
		END_IF

	6:	TON_1(IN:=FALSE);
		bSealConvIntOver:=TRUE;
		step:=0;

END_CASE


(*
IF  bIColumnconeDetection  THEN
bConePresent:=TRUE;
ELSE
bConePresent:=FALSE;
END_IF

*)



IF TON_1.ET >t#1ms AND  TON_1.ET<=t#10s THEN
TON_1Running:=TRUE;
ELSE
TON_1Running:=FALSE;
END_IF



TON_1(IN:=bQRSealingConveyorMotor , PT:=T#10s , Q=> , ET=> );               4   ,   u н ъ            SealingUnitRst йН`	йН`      П$т            Ж   PROGRAM SealingUnitRst
VAR
	bARWrappingCone123FwdCom: BOOL;
	TON_1: TON;
	step: INT;
	tA3ConesealStartDly: TON;
	tA3ConeSealCompDly: TON;

	bFwdRevPistonRst: BOOL;

END_VARв  IF NOT  bIEmergency   OR bStopHmi  OR  bAutoModeOff  OR bIMCStop THEN
bInitializeHmi:=FALSE;
bAInitializeSeq:=FALSE;
bQMWrappingChannelPistonValve1:=FALSE;
bQMWrappingChannelPistonValve2:=FALSE;
bQMWrappingChannelPistonValve3:=FALSE;
bQMForwardPistonValve:=FALSE;
bAWrappingCone123OnAuto:=FALSE; bARWrappingCone123FwdCom:=FALSE; bARWrappingCone123OnRst:=FALSE;
bQAForwardPistonValve:=FALSE;
bQMForwardPistonValve:=FALSE;
bFwdPistonRst:=FALSE;
tA3ConeSealCompDly(IN:=FALSE);
bASepYAxisRsErrorChkBit1:=FALSE; bA3ConeWrappOver:=FALSE; tA3ConesealStartDly(IN:=FALSE); bAR3ConeWrappOver:=FALSE;
bQRSealingSeparatorYAxisPistonValve:=FALSE; step:=0;
bQRSealingSeparatorXAxisPistonValve:=FALSE;
bQRSealingTopPistonValve:=FALSE;
END_IF

bQRWrappingChannelPistonValve1:=bARWrappingCone123OnRst;
bQRWrappingChannelPistonValve2:=bARWrappingCone123OnRst;
bQRWrappingChannelPistonValve3:=bARWrappingCone123OnRst;


CASE step OF

	0:	IF  bAutoModeOn AND bAInitializeSeq THEN
		bInitializeHmi:=FALSE;
		Step:=step+1;
		END_IF


	1:	bQMWrappingChannelPistonValve1:=FALSE;
		bQMWrappingChannelPistonValve2:=FALSE;
		bQMWrappingChannelPistonValve3:=FALSE;
		bQMForwardPistonValve:=FALSE;
		bAWrappingCone123OnAuto:=FALSE;
		bQAForwardPistonValve:=FALSE;
		bQMForwardPistonValve:=FALSE;
		bAInitializeSeq:=FALSE;
		Step:=step+1;


	2:	sMessage:='Check Cylinder top & Bottom';  IF NOT bQASealingConveyorMotor AND bISealingSeparatorXAxisHome AND  bISealingTopPistonHome AND bISealingBottomPistonHome
		AND bISealingSeparatorYAxisHome THEN
		bFwdPistonRst:=TRUE;
		bARWrappingCone123OnRst:=TRUE;
		step:=step+1; sMessage:='';
		END_IF


	3:	IF bARWrappingCone123OnRst AND bIWrappingChannelPiston1_End AND bIWrappingChannelPiston2_End AND bIWrappingChannelPiston3_End THEN
		bARWrappingCone123FwdCom:=TRUE;
		TON_1(IN:= FALSE);
		step:=step+1;
		END_IF

	4:	 IF bARWrappingCone123FwdCom THEN
		bARWrappingCone123OnRst:=FALSE;
		step:=step+1;
		END_IF

	5:	 IF  bIWrappingChannelPiston1_Home   AND bIWrappingChannelPiston2_Home AND bIWrappingChannelPiston3_Home   THEN bAR3ConeWrappOver:=TRUE;
		step:=step+1; END_IF


	6:	IF bAutoModeOn AND  bAR3ConeWrappOver  THEN
		tA3ConesealStartDly(IN:=TRUE , PT:=t#2s , Q=> , ET=> );
		IF tA3ConesealStartDly.Q THEN  step:=step+1; END_IF
		END_IF

	7:	IF bAutoModeOn AND   bISealingBottomPistonHome  AND bISealingTopPistonHome AND bISealingSeparatorXAxisHome AND bISealingSeparatorYAxisHome   THEN
		bQRSealingSeparatorYAxisPistonValve:=TRUE;
		tA3ConeSealCompDly(IN:=FALSE);
		bASepYAxisRsErrorChkBit1:=TRUE;
		  step:=step+1;
		END_IF

	8:	IF bAutoModeOn AND  bISealingSeparatorYAxisEnd  AND NOT bASealSepYCylRsError  THEN
		tA3ConesealStartDly(IN:=FALSE);
		bQRSealingTopPistonValve:=TRUE;
		bASepYAxisRsErrorChkBit1:=FALSE;
		step:=step+1;
		END_IF

	9:	IF bAutoModeOn AND  bISealingTopPistonEnd AND bISealingBottomPistonEnd AND NOT bASealBotCylRsError AND NOT bASealTopCylRsError  THEN
		tA3ConeSealCompDly(IN:=TRUE, PT:= t#2s, Q=> , ET=> );
		IF tA3ConeSealCompDly.Q THEN   step:=step+1; END_IF
		END_IF


	10:	IF bAutoModeOn AND  bISealingTopPistonEnd AND bISealingBottomPistonEnd AND bISealingSeparatorYAxisEnd THEN
		bQRSealingSeparatorXAxisPistonValve:=TRUE;
		step:=step+1;
		END_IF



	11:	IF bAutoModeOn AND  bISealingSeparatorXAxisEnd  AND NOT bASealSepXCylRsError THEN
		step:=step+1;
		 END_IF

	12:	bQRSealingTopPistonValve:=FALSE;
		bA3ConeWrappOver:=FALSE;
		bQRSealingSeparatorYAxisPistonValve:=FALSE;
		bQRSealingSeparatorXAxisPistonValve:=FALSE;
		step:=step+1;

	13:	IF bAutoModeOn AND  bISealingSeparatorXAxisHome AND  bISealingTopPistonHome AND bISealingBottomPistonHome AND bISealingSeparatorYAxisHome  THEN

		step:=step+1;
		END_IF

	14:	bSaelUnitIntOver:=TRUE;
		step:=step+1;



	15:	step:=0;



END_CASE

IF bFwdPistonRst THEN bQRForwardPistonValve:=TRUE;  END_IF

IF bIForwardPistonEnd  THEN bFwdPistonRst:=FALSE;  bFwdRevPistonRst:=FALSE; bQRForwardPistonValve:=FALSE;  END_IF               ,   , K        	   SenSelect йН`	йН`       SIN
D_        В   FUNCTION_BLOCK SenSelect
VAR_INPUT


	bVarIn1: BOOL;
	bVarIn2: BOOL;
	bVarIn3: BOOL;
	bVarIn4: BOOL;
END_VAR
VAR_OUTPUT


	ByteResult: USINT;
END_VAR
VAR

END_VARm   ByteResult.0:=bVarIn1;
ByteResult.1:=bVarIn2;
ByteResult.2:=bVarIn3;
ByteResult.3:=bVarIn4;

ByteResult;               9   , tШ Q,           Serial Ѕћ`	Ѕћ`      #иН        "  PROGRAM Serial
VAR
	bSendStr:BOOL;
	Timer: TON;
	TrigSend:R_TRIG;
	TransmitStr : SendString;
	SendBusy: BOOL;
	SendErrorID: ComError_t;

	ReceiveStr :ReceiveString;
	ReStr: STRING;
	LastReceivedString: STRING;
	StringReceived: BOOL;
	ReceiveBusy: BOOL;
	ReceiveError: BOOL;
	ReceiveErrorID: ComError_t;
	ReceiveTimeout: BOOL;
	ReceiveCounter: UDINT;

	(* Serial communication with the COM port device *)
	COMportControl: SerialLineControl;
	COMportControlError: BOOL;
	COMportControlErrorID: ComError_t;


	Decimaldata: BYTE;
	Stringdata: STRING;
	RxBufferStringdata: STRING(300);
	TxBufferStringdata: STRING(300);
	RxBufferArrdata: ARRAY [0..80] OF BYTE;
	TxBufferArrdata: ARRAY [0..80] OF BYTE :=(*16#0F, 16#FA, 16#03, 16#00, 16#0D, 16#00, 16#10, 16#20, 16#01, 16#05, 16#58, 16#DF, 16#98, 16#00, 16#00, 16#02, 16#04, 16#E0, 16#B4, 16#F0;*)
16#0F, 16#FA, 16#03, 16#00, 16#02, 16#00, 16#38, 16#24, 16#F0; (*16#00, 16#00, 16#00, 16#00;, 16#10, 16#20, 16#05, 16#02, 16#AF, 16#F6, 16#98, 16#00, 16#00, 16#02, 16#04, 16#E0, 16#84, 16#F0;*)
	i: INT;
	ReceiveData_1: ReceiveData;

	SReceivedataFormat: ARRAY [0..300] OF BYTE;
	SReceivedatStringFt: STRING(300);
	sSendString_1: STRING(300);
	TransmitArrByteData: SendData;
(*==============port 2==========*)
	ReceiveData_2: ReceiveData;

	test: BOOL;
	SReceivedataFormat_2: ARRAY [0..300] OF BYTE;
	SReceivedatStringFt_2: STRING(300);
	COMportControl_2: SerialLineControl;
	COMportControlError_2: BOOL;
	COMportControlErrorID_2: ComError_t;
	SReceivedatStringFtTemp: STRING;
	SReceivedatStringFt_2Temp: STRING(80);
	ReceiveData_3: ReceiveData;
	SReceivedataFormat_3: ARRAY [0..300] OF BYTE;
	SReceivedatStringFt_3: STRING(300);
	SReceivedatStringFt_3Temp: STRING;
	COMportControl_3: SerialLineControl;
	COMportControlError_3: BOOL;
	COMportControlErrorID_3: ComError_t;
	ReceiveByte_2: ReceiveByte;

	ReceiveString_sample_1: ReceiveString;
	prefix_data_1: BYTE ;
	sufix_data_1: BYTE;
	samplestring_1: STRING;
	RetWeight_1: REAL;
	resultWt_1: STRING;
	ipos_1: INT;

END_VAR  (*==============El6002 serial Communication Program for Laod Cell value read in Rs232  ==================*)

COMportControl(
	Mode:= SERIALLINEMODE_EL6_22B,
	pComIn:= ADR(COMin_COMPort),
	pComOut:= ADR(COMOut_COMPort),
	SizeComIn:= SIZEOF(COMin_COMPort),
	TxBuffer:= TxBuffer1,
	RxBuffer:= RxBuffer1,
	Error=> COMportControlError,
	ErrorID=> COMportControlErrorID );


ReceiveString_sample_1(
	Prefix:='w' ,
	Suffix:='g' ,
	Timeout:= t#5s,
	Reset:= ,
	ReceivedString:=samplestring_1 ,
	RXbuffer:= RxBuffer1,
	StringReceived=> ,
	Busy=> ,
	Error=> ,
	RxTimeout=> );
ipos_1:=FIND(samplestring_1,'n');

resultWt_1:= MID (samplestring_1,9,ipos_1+1);

(*RetWeight*)rRetUnitAWeight:=STRING_TO_REAL(resultWt_1);
(*************************************************(*==============El6002 serial Communication Program for Laod Cell value read in Rs232 port 1 ==================*)


COMportControl(
	Mode:= SERIALLINEMODE_EL6_22B,
	pComIn:= ADR(COMin_COMport),
	pComOut:= ADR(COMout_COMport),
	SizeComIn:= SIZEOF(COMin_COMport),
	TxBuffer:= TxBuffer1,
	RxBuffer:= RxBuffer1,
	Error=> COMportControlError,
	ErrorID=> COMportControlErrorID );

(************************************
MAIN.string_Dec();

***)



(*
FOR i:=0 TO 300 DO
	RxBufferStringData[i]:= RxBuffer1.Buffer[i];
END_FOR*)

ReceiveData_1(
	pPrefix:= ,
	LenPrefix:= ,
	pSuffix:= ,
	LenSuffix:= ,
	pReceiveData:=  ADR(SReceivedataFormat),
	SizeReceiveData:= 100,
	Timeout:=t#1s ,
	Reset:= ,
	RXbuffer:=RxBuffer1 ,
	DataReceived=> ,
	busy=> ,
	Error=> ,
	RxTimeout=> ,
	LenReceiveData=> );

MEMCPY(ADR(SReceivedatStringFt), ADR(SReceivedataFormat), 50);

SReceivedatStringFtTemp:=MID(STR:=SReceivedatStringFt, LEN:=7, POS:=3);


 rRetUnitAWeight:=STRING_TO_REAL (SReceivedatStringFtTemp);*****************************)

(*==============El6002 serial Communication Program for Laod Cell value read in Rs232 port 2 ==================*)

COMportControl_2(
	Mode:= SERIALLINEMODE_EL6_22B,
	pComIn:= ADR(COMin_2_COMport_2),
	pComOut:= ADR(COMout_2_COMport_2),
	SizeComIn:= SIZEOF(COMin_2_COMport_2),
	TxBuffer:= TxBuffer2,
	RxBuffer:= RxBuffer2,
	Error=> COMportControlError_2,
	ErrorID=> COMportControlErrorID_2 );






ReceiveData_2(
	pPrefix:= ,
	LenPrefix:= ,
	pSuffix:= ,
	LenSuffix:= ,
	pReceiveData:=  ADR(SReceivedataFormat_2),
	SizeReceiveData:= 100,
	Timeout:=t#1s ,
	Reset:= ,
	RXbuffer:=RxBuffer2 ,
	DataReceived=> ,
	busy=> ,
	Error=> ,
	RxTimeout=> ,
	LenReceiveData=> );

MEMCPY(ADR(SReceivedatStringFt_2), ADR(SReceivedataFormat_2), 50);

 rRetUnitBWeight:=STRING_TO_REAL (SReceivedatStringFt_2);


SReceivedatStringFt_2Temp:=MID(STR:=SReceivedatStringFt_2, LEN:=7, POS:=3);


 rRetUnitBWeight:=STRING_TO_REAL (SReceivedatStringFt_2Temp);



(*==============El6002 serial Communication Program for Laod Cell value read in Rs232 port 2 (  GROSS WEIGHT    )  ==================*)

COMportControl_3(
	Mode:= SERIALLINEMODE_EL6_22B,
	pComIn:= ADR(COMin_3_COMport_3),
	pComOut:= ADR(COMout_3_COMport_3),
	SizeComIn:= SIZEOF(COMin_3_COMport_3),
	TxBuffer:= TxBuffer3,
	RxBuffer:= RxBuffer3,
	Error=> COMportControlError_3,
	ErrorID=> COMportControlErrorID_3 );






ReceiveData_3(
	pPrefix:= ,
	LenPrefix:= ,
	pSuffix:= ,
	LenSuffix:= ,
	pReceiveData:=  ADR(SReceivedataFormat_3),
	SizeReceiveData:= 100,
	Timeout:=t#1s ,
	Reset:= ,
	RXbuffer:=RxBuffer3 ,
	DataReceived=> ,
	busy=> ,
	Error=> ,
	RxTimeout=> ,
	LenReceiveData=> );

MEMCPY(ADR(SReceivedatStringFt_3), ADR(SReceivedataFormat_3), 50);




SReceivedatStringFt_3Temp:=MID(STR:=SReceivedatStringFt_3, LEN:=7, POS:=3);


 rGrossWeight:=STRING_TO_REAL (SReceivedatStringFt_3Temp);




(*
ReceiveByte_2(
	RxBuffer:=  RxBuffer2  ,
	ByteReceived=> ,
	ReceivedByte=> ,
	Error=> );


*)               $   , К,           UnitA_RowStopper йН`	йН`        0ѓџ        ч  PROGRAM UnitA_RowStopper
VAR
	step: INT;

	iSensorOnVal:UINT;
	CTU_1Enable: BOOL;
	R_TRIG_1: F_TRIG;
	CTU_2: CTU;
	R_TRIG_2: R_TRIG;
	tRowStopperRevDly1: TON;
	UnitAConeCrossCount: CTU;
	test: BOOL;
	bStopRetUnitA: BOOL;
	RowStopperMotorStopDly: TON;
	bRetUnitAStarttemp: BOOL;
	bAUnitAWeighOktemp: BOOL;
	RowStopperEndRSErrorDly: TON;
	bStartTemp1: BOOL;
	UnitAOverTemp: BOOL;
	RowStopperEndSenErr: BOOL;
	interLockStep: INT;
	UnitACompleteCheckCountCv: INT;
	bEnableBit1: BOOL;
	UnitAConeCross: CTU;
	Testtimer: TON;
	bAUnitBConeCrossingOff_2: BOOL;
	step3: INT;
	TON_7: TON;
	R_TRIG_4: R_TRIG;
	timer3: TON;

	SenSelect_1: SenSelect;
	iAConeCrossCount: INT;
	bQAUnitA_RowStopperMotorFwd2: BOOL;
	bQAUnitA_RowStopperMotorFwd1: BOOL;
	bQAUnitA_RowStopperMotorRev1: BOOL;
	sRetreivalAStatus: STRING;
	bRetUnitARst: BOOL;
	iAConeCrossCounttemp: INT;
	GetDLy: TON;
	bCheckSensor: BOOL;
	tConeChkDly: TON;
	bUnitAConeMiss:BOOL ;
	iAConeCrossPVal: INT;
	tConeCrossDly: TON;
	step2: INT;
	F_TRIG_5: F_TRIG;
	TON_6: TON;
	bAUnitBConeCrossing_1: BOOL;
	bAUnitBConeCrossingOff: BOOL;
	step4: INT;
	TON_8: TON;
	bAUnitAConeCrossing_1: BOOL;
	TON_9: TON;
	bAUnitAConeCrossingOff: BOOL;
	TON_10: TON;
	F_TRIG_3: F_TRIG;
	CountAtLimitBNok: BOOL;
	CountCheckdly: TON;
	UnitAConeCompChkCount: CTU;
	tRowStopperMidDly1: TON;
	tUnitACountDelay1: TON;
	TEnableCounter: BOOL;
	CompleteTestbitA: BOOL;
	bCounterLockUnitA: BOOL;
	bStartUnitaCompCount: BOOL;
END_VAR='  UnitASenSelet:=iSensorOnVal;

(*=============Checking the No of sensors sensed================*)

IF bCheckSensor THEN
SenSelect_1(
		bVarIn1:=bIUnitAConeDetection1 ,
		bVarIn2:= bIUnitAConeDetection2,
		bVarIn3:= bIUnitAConeDetection3,
		bVarIn4:= bIUnitAConeDetection4,
		ByteResult=>iSensorOnVal );


END_IF

IF iSensorOnVal=15 THEN iAConeCrossCount:=4;
		ELSIF  iSensorOnVal=14 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=13 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=12 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=11 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=10 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=9 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=8 THEN iAConeCrossCount:=1;
		ELSIF  iSensorOnVal=7 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=6 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=5 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=4 THEN iAConeCrossCount:=1;
		ELSIF  iSensorOnVal=3 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=2 THEN iAConeCrossCount:=1;
		ELSIF  iSensorOnVal=1 THEN iAConeCrossCount:=1;
		END_IF





bQAUnitA_RowStopperMotorForward1:=( bQAUnitA_RowStopperMotorFwd1 OR bQAUnitA_RowStopperMotorFwd2 );

bQAUnitA_RowStopperMotorReverse1:= ( bQAUnitA_RowStopperMotorRev1 OR bRetUnitARst );

CASE step OF

	0:	IF bAutoModeOn AND bAUnitAWeighOk  AND bRetUnitAStart   AND NOT bAInializeStarted  AND NOT bIntialAckBit  AND bInterlockInitial_2 THEN
		CTU_2.RESET:=TRUE;

		step:=step+1;
		END_IF

	1:	step:=step+1;

	2:	IF bAutoModeOn(* AND bIUnitA_LiftPistonHome  *)THEN
		step:=step+1;


		END_IF

	3:	UnitAConeCompChkCount.RESET:=FALSE;
		TestTimer(IN:=FALSE);
		step:=step+1;

	4:	IF bAutoModeOn    AND NOT bUnitBRowStopperStarted  AND NOT UnitB_RowStopper.ConeInCompleteB  (*ConeInCompleteTestbitB*)
		AND NOT bAPauseSeq  AND NOT ConeInCompleteA   AND bInterlockInitial_2 THEN
		bQAUnitA_RowStopperMotorFwd1:=TRUE;
		UnitAConeCrossCount.RESET:=TRUE;
		bAUnitAWeighOk:=FALSE;

		bUnitARowStopperStarted:=TRUE;
		sRetreivalAStatus:= 'Running';

		 step:=step+1;
		END_IF

	5:	RowStopperMotorStopDly(In:=FALSE);
		 step:=step+1;

	6:	IF bIUnitAConeDetection1 OR  bIUnitAConeDetection2 OR  bIUnitAConeDetection3 OR   bIUnitAConeDetection4  THEN

		step:=step+1;
		ELSIF NOT bIUnitAConedetection1 AND NOT  bIUnitAConedetection2 AND NOT  bIUnitAConedetection3 AND NOT bIUnitAConeDetection4 AND  bIUnitA_RowStopperEnd THEN

		step:=15;
		END_IF

	7:	CompleteTestbitA:=FALSE;
		RowStopperMotorStopDly( IN:=TRUE , PT:=T#0.4s , Q=> , ET=> );
		IF RowStopperMotorStopDly.Q THEN  UnitAConeCrossCount.RESET:=FALSE;  step:=step+1; END_IF


	8:	bStartUnitaCompCount:=TRUE;
		bQAUnitA_RowStopperMotorFwd1:=FALSE;
		GetDLy(IN:=FALSE);
		tRowStopperRevDly1(IN:=FALSE);
		step:=step+1;

	9:	 IF  NOT   bAPauseSeq THEN  bCheckSensor:=TRUE;

		step:=step+1;

		END_IF


	10:	GetDLy(IN:=TRUE , PT:=t#0.4s , Q=> , ET=> );
		 IF GetDLy.Q THEN bCheckSensor:=FALSE;   step:=step+1;
		END_IF





	11:	IF UnitAConeCrossCount.CV=iAConeCrossCount  THEN
		RowStopperMotorStopDly(In:=FALSE);
		GetDLy(IN:=FALSE);
		step:=step+1;
		ELSIF UnitAConeCrossCount.CV <> iAConeCrossCount  THEN
		tConeChkDly(IN:=TRUE , PT:=t#5s , Q=> , ET=> );

	 (*	IF tConeChkDly.Q THEN bUnitAConeMiss:=TRUE; ELSE bUnitAConeMiss:=FALSE ;  END_IF *)
		END_IF

	12:	IF NOT bAPauseSeq THEN step:=step+1;
		END_IF

	13:	IF bAutoModeOn   THEN
		 UnitAConeCrossCount.RESET:=TRUE;
		step:=step+1;
		END_IF

	14:	UnitAConeCrossCount.RESET:=FALSE; step:=step+1;


	15: 	IF bAutoModeOn AND bIUnitA_RowStopperEnd THEN
		bQAUnitA_RowStopperMotorFwd1:=FALSE;
		tRowStopperRevDly1(IN:=FALSE);
		 step:=step+1;
		ELSIF  bAutoModeOn AND NOT  bIUnitA_RowStopperEnd THEN
		 step:=4;
		END_IF

	16:	step:=step+1;

	17:	tRowStopperRevDly1(IN:=TRUE , PT:=t#1.5s , Q=> , ET=> );
		IF tRowStopperRevDly1.Q THEN step:=step+1; END_IF

	18:	 step:=step+1;


	19:	IF bAutoModeOn   THEN
		bQAUnitA_RowStopperMotorRev1:=TRUE;
		PROCESSCOMPLETE:=TRUE;
		step:=step+1;
		END_IF

	20:	IF bAutoModeOn AND bIUnitA_RowStopperMiddle   THEN
		PROCESSCOMPLETE:=FALSE;
		tUnitACountDelay1(IN:=FALSE);
		tRowStopperMidDly1(IN:=TRUE , PT:=t#0.2s , Q=> , ET=> );
		IF tRowStopperMidDly1.Q THEN  step:=step+1;
		END_IF
		END_IF


	21:	tUnitACountDelay1(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
		IF tUnitACountDelay1.Q THEN
		step:=step+1;
		END_IF




	22:	IF bAutoModeOn  AND UnitAConeCompChkCount.CV>=iATotalNoOfCones   THEN
		bUnitARowStopperStarted:=FALSE;
		UnitAConeCompChkCount.RESET:=TRUE;
		bStartUnitaCompCount:=FALSE;
		TestTimer(IN:=FALSE);
                  	step:=step+1;
		ELSIF  bAutoModeOn  AND UnitAConeCompChkCount.CV < iATotalNoOfCones  THEN
		TestTimer(IN:=FALSE);
		 ConeInCompleteA:=TRUE;
	(*	ConeInCompletetest:=TRUE; *)
		bStartUnitaCompCount:=FALSE;
		step:=step+1;

		END_IF


	23:	IF bAutoModeOn AND bIUnitA_RowStopperHome   AND ConeInCompleteA  THEN
		bQAUnitA_RowStopperMotorRev1:=FALSE;
		tRowStopperMidDly1(IN:=FALSE);
		sRetreivalAStatus:= 'IDLE';
		step:=0;
		ELSIF  bAutoModeOn AND bIUnitA_RowStopperHome   AND NOT ConeInCompleteA  THEN
		bQAUnitA_RowStopperMotorRev1:=FALSE;
		tRowStopperMidDly1(IN:=FALSE);
		sRetreivalAStatus:= 'IDLE';
		step:=0;
		END_IF

END_CASE

(***Incomplete Reset**)

IF  bAutoModeOn AND ConeInCompleteA   THEN
TEnableCounter:=TRUE;
ELSE
TEnableCounter:=FALSE;
END_IF



IF  bAutoModeOn AND ConeInCompleteA   AND   UnitAConeCompChkCount.CV >= iATotalNoOfCones THEN
TestTimer(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
CycleComplete:=TRUE;
END_IF


IF TestTimer.Q THEN
CycleComplete:=FALSE;
UnitAConeCompChkCount.RESET:=TRUE;
bUnitARowStopperStarted:=FALSE;
ConeInCompleteA :=FALSE;
TestTimer(IN:=FALSE);
END_IF
(*

IF  bAutoModeOn AND UnitAConeCompChkCount.CV >= iATotalNoOfCones THEN
TEnableCounter:=FALSE;
tUnitACountDelay1(IN:=FALSE);
ConeInComplete:=FALSE;

END_IF

IF   bAutoModeOn  AND UnitAConeCompChkCount.CV >=iATotalNoOfCones   AND( bUnitARowStopperStarted OR ConeInCompletetest) THEN
CompleteTestbitA:=TRUE;
bStartUnitaCompCount:=FALSE;
UnitAConeCompChkCount.RESET:=TRUE;
ConeInCompletetest:=FALSE;
ELSE
UnitAConeCompChkCount.RESET:=FALSE;
END_IF
*)
UnitAConeCrossCount(
	CU:= bAUnitAConeCrossing_1  (*   R_TRIG_1.Q*) ,
	RESET:= ,
	PV:=12,
	Q=> ,
	CV=> );



UnitAConeCompChkCount(
	CU:=  bAUnitBConeCrossing_1 ,
	RESET:= ,
	PV:=iATotalNoOfCones,
	Q=> ,
	CV=> );
UnitAConeCountHMI:=UnitAConeCompChkCount.CV;

(*=======For Retrival A Limit Switch======*)
(*
LimitSwitchBCount(
	CU:=  bAUnitBConeCrossing_1,
	RESET:= ,
	PV:=iATotalNoOfCones,
	Q=> ,
	CV=> );
*)

IF UnitAConeCompChkCount.CV >=  iATotalNoOfCones AND bIUnitA_RowStopperHome  AND NOT bQAUnitA_RowStopperMotorRev1 AND NOT ConeInCompleteA  THEN tConeCrossDly(IN:=TRUE , PT:=t#0.5s , Q=> , ET=> );  END_IF
(*
IF LimitSwitchBCount.CV< iATotalNoOfCones AND bUnitARowStopperStarted THEN  CountAtLimitBNok:=TRUE;ELSE CountAtLimitBNok:=FALSE;  (*CountCheckdly(IN:=TRUE , PT:=t#5s , Q=> , ET=> )*); END_IF*)

IF tConeCrossDly.Q THEN bUnitARowStopperStarted:=FALSE; UnitAConeCompChkCount.RESET:=TRUE; step:=0;  tConeCrossDly(IN:=FALSE); ELSE  UnitAConeCompChkCount.RESET:=FALSE; END_IF

(*
ELSE
UnitAConeCompChkCount.RESET:=FALSE; *)



(*===============Stop Sequence===========*)


IF NOT bIEmergency  OR  bStopHmi  OR bAutoModeOff  OR bIMCStop   THEN bStopRetUnitA:=TRUE; END_IF


IF bStopRetUnitA (*AND NOT  bIUnitA_RowStopperHome *) THEN
step:=0;
step2:=0;
step4:=0;
bAUnitAWeighOk:=FALSE;
bQAUnitA_RowStopperMotorFwd1:=FALSE;
bUnitARowStopperStarted:=FALSE;
UnitAConeCrossCount.RESET:=FALSE;
bQAUnitA_RowStopperMotorFwd2:=FALSE;
UnitAConeCompChkCount.RESET:=TRUE;
bQAUnitA_RowStopperMotorRev1:=FALSE;
bRetUnitARst:=TRUE;
bAUnitAConeCrossing_1:=FALSE;
bAUnitBConeCrossing_1:=FALSE;
END_IF

IF bIUnitA_RowStopperHome THEN
bRetUnitARst:=FALSE;
  UnitAConeCompChkCount.RESET:=FALSE;
bStopRetUnitA:=FALSE;
END_IF

(*
(*=============for Pause Operation bypass to Feeding Conveyor==================*)

IF UnitAConeCrossCount.CV >= 1 AND bPauseHmi AND  UnitAConeCrossCount.CV=iAConeCrossCount THEN bPauseExtend:=TRUE; ELSE  bPauseExtend:=FALSE;  END_IF


*)



(*IF NOT CompleteTestbitA THEN  *)
CASE step2 OF

	0:	IF   (bStartUnitaCompCount  (*bUnitARowStopperStarted  *) OR  TEnableCounter  ) THEN
		F_TRIG_3(CLK:=bIUnitBConeCrossing , Q=> );
		IF F_TRIG_3.Q THEN TON_6(IN:= FALSE); step2:=step2+1; END_IF END_IF


	1:	TON_6(IN:= FALSE);
		TON_9(IN:= FALSE);
		step2:=step2+1;


	2:	 bAUnitBConeCrossing_1 :=TRUE;
		 step2:=Step2+1;

	3:	 step2:=step2+1;

	4: 	TON_6(IN:=  TRUE  , PT:=t#100ms,Q=> , ET=> );
		IF TON_6.Q THEN bAUnitBConeCrossing_1:=FALSE;   step2:=step2+1; END_IF


	5:	 step2:=step2+1;

	6:	IF   bIUnitBConeCrossing THEN
		TON_9(IN:=  TRUE  , PT:=t#50ms,Q=> , ET=>);
		IF TON_9.Q THEN TON_6(IN:= FALSE);  step2:=step2+1; END_IF END_IF


	7:	 step2:=step2+1;

	8:	 step2:=step2+1;

	9:	 step2:=step2+1;

	10:	TON_9(IN:= FALSE);
		step2:=0;


END_CASE
(*END_IF *)


CASE step4 OF

	0:	IF bUnitARowStopperStarted THEN
		F_TRIG_5(CLK:=bIUnitAConeCrossing , Q=> );
		IF F_TRIG_5.Q THEN TON_8(IN:= FALSE); step4:=step4+1; END_IF END_IF


	1:	TON_8(IN:= FALSE);
		TON_10(IN:= FALSE);
		step4:=step4+1;


	2:	 bAUnitAConeCrossing_1 :=TRUE;
		 step4:=step4+1;

	3:	 step4:=step4+1;

	4: 	TON_8(IN:=  TRUE  , PT:=t#100ms,Q=> , ET=> );
		IF TON_8.Q THEN  bAUnitAConeCrossing_1:=FALSE;  step4:=step4+1; END_IF


	5:	 step4:=step4+1;

	6:	IF   bIUnitAConeCrossing THEN
		TON_10(IN:=  TRUE  , PT:=t#50ms,Q=> , ET=>);
		IF TON_10.Q THEN TON_8(IN:= FALSE);  step4:=step4+1; END_IF END_IF


	7:	 step4:=step4+1;;

	8:	 step4:=step4+1;

	9:	 step4:=step4+1;

	10:	TON_8(IN:= FALSE);
		step4:=0;


END_CASE


IF bRetUnitAStart THEN step4:=0; step2:=0 ; END_IF               %   , tXQМ           UnitB_RowStopper йН`	йН`        §џг          Б  PROGRAM UnitB_RowStopper
VAR
	step: INT;
	bAUnitAWeighOk: BOOL;
	CTU_1: CTU;
	CTU_1Enable: BOOL;
	R_TRIG_1: R_TRIG;
	R_TRIG_2: F_TRIG;
	bQAUnitA_RowStopperMotorFwd1: BOOL;
	bQAUnitA_RowStopperMotorFwd2: BOOL;
	tRowStopperRevDly1: TON;
	bQAUnitA_RowStopperMotorRev1: BOOL;
	CTU_2: CTU;
	UnitBConeCount: CTU;
	CTU_1EnableUnitB: BOOL;
	temp1: BOOL;
	bStopRetUnitB: BOOL;
	bRetUnitBRst: BOOL;
	RowStopperMotorStopDly: TON;
	F_TRIG_3: F_TRIG;
	UnitBCompleteCheckCount:CTU;
	UnitBOverTemp: BOOL;
	bStartTemp1: BOOL;
	R_TRIG_5: R_TRIG;
	test: BOOL;
	bStopTemp2: BOOL;
	CTU_2CV: INT;
	CTU_test: CTU;
	R_TRIG_test: R_TRIG;
	InterLockStep: INT;

	CTU_2Enable: BOOL;
	timer1: TON;
	UnitBCompleteCheckCountCV: INT;
	Ctu_2_Rst: BOOL;
	F_TRIG_1: F_TRIG;
	bRestBit: BOOL;
	bResetBit: BOOL;
	R_TRIG_6: R_TRIG;
	timer2: TON;
	UnitBConeCrossCount: CTU;
	bQAUnitB_RowStopperMotorFwd1: BOOL;
	sRetreivalBStatus: STRING;
	GetDLy: TON;
	bCheckSensor: BOOL;
	iAConeCrossCount: INT;
	bQAUnitB_RowStopperMotorRev1: BOOL;
	iSensorOnVal: USINT;
	SenSelect_2: SenSelect;
	tConeChkDly: TON;
	bConeMiss: BOOL;
	tConeCrossDly: TON;
	UnitBConeCompChkCount: CTU;
	iAConeCrossPVal: INT;
	TON_6: TON;
	step2: INT;
	bAUnitBConeCrossing_1: BOOL;
	bAUnitBConeCrossedOff: BOOL;
	R_TRIG_3: R_TRIG;
	TON_8: TON;
	R_TRIG_11: R_TRIG;

	F_TRIG_4: F_TRIG;
	tRowStopperMidDly2: TON;
	tUnitBCountDelay1: TON;
	ConeInCompleteB: BOOL;
	TEnableCounterB: BOOL;
	CompleteTestbitB: BOOL;
	bCounterDisableUnitB: BOOL;
	TestTimer: TON;
	bStartUnitBCompCount: BOOL;
	step3: INT;
	F_TRIG_5: F_TRIG;
	TON_9: TON;
	TON_10: TON;
	TON_11: TON;
	TON_12: TON;
	bAUnitBConeCrossedTemp: BOOL;
END_VAR8)  (*=============CHecking the No of sensors sensed on conveyor ==================*)

IF bCheckSensor THEN
SenSelect_2(
		bVarIn1:=bIUnitBConeDetection1 ,
		bVarIn2:= bIUnitBConeDetection2,
		bVarIn3:= bIUnitBConeDetection3,
		bVarIn4:= bIUnitBConeDetection4,
		ByteResult=>iSensorOnVal );


END_IF

IF iSensorOnVal=15 THEN iAConeCrossCount:=4;
		ELSIF  iSensorOnVal=14 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=13 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=12 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=11 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=10 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=9 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=8 THEN iAConeCrossCount:=1;
		ELSIF  iSensorOnVal=7 THEN iAConeCrossCount:=3;
		ELSIF  iSensorOnVal=6 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=5 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=4 THEN iAConeCrossCount:=1;
		ELSIF  iSensorOnVal=3 THEN iAConeCrossCount:=2;
		ELSIF  iSensorOnVal=2 THEN iAConeCrossCount:=1;
		ELSIF  iSensorOnVal=1 THEN iAConeCrossCount:=1;
		END_IF





bQAUnitBRowStopperMotorFwd:=( bQAUnitB_RowStopperMotorFwd1  );

bQAUnitBRowStopperMotorRev:= ( bQAUnitB_RowStopperMotorRev1 OR bRetUnitBRst  );

CASE step OF

	0:	CycleComplete1:=FALSE;
		IF bAutoModeOn  AND bAUnitBWeighOk  AND bRetUnitBStart  AND NOT bAInializeStarted AND NOT bIntialAckBit AND bInterlockInitial_2  THEN
		UnitBConeCrossCount.RESET:=TRUE;

		CTU_2.RESET:=TRUE;
		step:=step+1;
		END_IF

	1:
		step:=step+1;

	2:	IF bAutoModeOn(* AND bIUnitB_LiftPistonHome *)THEN
		CTU_2.RESET:=FALSE;
		UnitBConeCrossCount.RESET:=FALSE;
		UnitBCompleteCheckCount.RESET:=FALSE;
		step:=step+1;
		END_IF


	3:	UnitBConeCompChkCount.RESET:=FALSE;
		TestTimer(IN:=FALSE);
		step:=step+1;


	4:	IF bAutoModeOn   AND NOT  bUnitARowStopperStarted  AND NOT ConeInCompleteA AND NOT  ConeInCompleteB  AND NOT bAPauseSeq
		(*AND NOT bIUnitBConedetection1 AND NOT bIUnitBConedetection2 AND NOT bIUnitBConedetection3 *) AND bInterlockInitial_2 THEN
		timer1(IN:=FALSE);
		timer2(IN:=FALSE);
		bQAUnitB_RowStopperMotorFwd1:=TRUE;
		bAUnitBWeighOk:=FALSE;
		sRetreivalBStatus:= 'Running';
		bUnitBRowStopperStarted:=TRUE;
	(*	UnitBConeCrossCount.RESET:=TRUE; *)

		step:=step+1;
		END_IF

	5:	RowStopperMotorStopDly(In:=FALSE); step:=step+1;


	6:	IF bIUnitBConedetection1 OR  bIUnitBConedetection2  OR  bIUnitBConedetection3  OR bIUnitBConedetection4  AND NOT bAPauseSeq THEN

		step:=step+1;
		ELSIF NOT bIUnitBConedetection1 AND NOT  bIUnitBConedetection2 AND NOT  bIUnitBConedetection3 AND NOT bIUnitBConedetection4  AND bIUnitB_RowStopperEnd THEN

		step:=15;

		END_IF

	7:	CompleteTestbitB:=FALSE;
		UnitBConeCompChkCount.RESET:=TRUE;
		RowStopperMotorStopDly( IN:=TRUE , PT:=T#0.4S , Q=> , ET=> );
		IF RowStopperMotorStopDly.Q   THEN UnitBConeCrossCount.RESET:=FALSE;  UnitBConeCompChkCount.RESET:=FALSE ; step:=step+1; END_IF


	8:	bStartUnitBCompCount:=TRUE;
		bQAUnitB_RowStopperMotorFwd1:=FALSE;
		tRowStopperRevDly1(IN:=FALSE);
		GetDLy(IN:=FALSE);
		step:=step+1;

	9:	IF NOT   bAPauseSeq THEN bCheckSensor:=TRUE; step:=step+1;END_IF

	10:	GetDLy(IN:=TRUE , PT:=t#0.4s , Q=> , ET=> );
		 IF GetDLy.Q THEN bCheckSensor:=FALSE;  tConeChkDly(IN:=FALSE);  step:=step+1;
		END_IF



	11:	IF UnitBConeCrossCount.CV>=iAConeCrossCount  THEN
		RowStopperMotorStopDly(In:=FALSE);
		 tConeChkDly(IN:=FALSE);
		GetDLy(IN:=FALSE);
		step:=step+1;
		ELSIF UnitBConeCrossCount.CV <> iAConeCrossCount  THEN
		tConeChkDly(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
	(*	IF tConeChkDly.Q THEN bConeMiss:=TRUE; ELSE bConeMiss:=FALSE ;  END_IF *)
		END_IF


	12:	IF NOT bAPauseSeq THEN tRowStopperRevDly1(IN:=FALSE); step:=step+1; END_IF

	13:	IF bAutoModeOn   THEN
		UnitBConeCrossCount.RESET:=TRUE;
		step:=step+1;
		END_IF


	14:	 UnitBConeCrossCount.RESET:=FALSE; step:=step+1;

	15:	IF bAutoModeOn AND bIUnitB_RowStopperEnd THEN
		bQAUnitB_RowStopperMotorFwd1:=FALSE;
		 step:=step+1;
		ELSIF  bAutoModeOn AND NOT  bIUnitB_RowStopperEnd  THEN
		 step:=4;
		END_IF

	16:	tRowStopperRevDly1(IN:=TRUE , PT:=t#1.5s , Q=> , ET=> );
		IF tRowStopperRevDly1.Q THEN step:=step+1; END_IF

	17:	step:=step+1;

	18:	IF bAutoModeOn THEN
		tRowStopperMidDly2(IN:=FALSE);
		UnitBConeCount.RESET:=FALSE;
		bQAUnitB_RowStopperMotorRev1:=TRUE;
		PROCESSCOMPLETE:=TRUE;
		step:=step+1;
		END_IF

	19:	IF bAutoModeOn AND bIUnitB_RowStopperMiddle   THEN
		PROCESSCOMPLETE:=FALSE;
		  tUnitBCountDelay1(IN:=FALSE);
		tRowStopperMidDly2(IN:=TRUE , PT:=t#0.2s , Q=> , ET=> );
		IF tRowStopperMidDly2.Q THEN   bCounterDisableUnitB:=TRUE;  step:=step+1;
		END_IF
		END_IF

	20:    tUnitBCountDelay1(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
		IF tUnitBCountDelay1.Q THEN CycleComplete1:=TRUE; step:=step+1; END_IF

	21:	IF bAutoModeOn  AND UnitBCompleteCheckCount.CV >=iATotalNoOfCones THEN
		bUnitBRowStopperStarted:=FALSE;
		UnitBCompleteCheckCount.RESET:=TRUE;
	(*	bUnitACounterDIsable:=TRUE; *)
		bStartUnitBCompCount:=FALSE;
		step:=step+1;
		ELSIF  bAutoModeOn  AND UnitBCompleteCheckCount.CV < iATotalNoOfCones  THEN
		ConeInCompleteB:=TRUE;
		bStartUnitBCompCount:=FALSE;
		step:=step+1;
		END_IF

	22:	IF bAutoModeOn AND bIUnitB_RowStopperHome  AND ConeInCompleteB THEN
		bQAUnitB_RowStopperMotorRev1:=FALSE;
		tRowStopperMidDly2(IN:=FALSE);
		sRetreivalBStatus:= 'IDLE';
		step:=0;
		ELSIF bAutoModeOn AND bIUnitB_RowStopperHome  AND NOT ConeInCompleteB THEN
		bQAUnitB_RowStopperMotorRev1:=FALSE;
		tRowStopperMidDly2(IN:=FALSE);
		sRetreivalBStatus:= 'IDLE';
		step:=0 (*step+1*);
		END_IF

	23:	IF bAutoModeOn  AND UnitBCompleteCheckCount.CV >=iATotalNoOfCones THEN
		bUnitBRowStopperStarted:=FALSE;
		UnitBCompleteCheckCount.RESET:=TRUE;
		step:=0;
		END_IF



END_CASE
(***Incomplete Reset**)

IF  bAutoModeOn AND ConeInCompleteB   THEN
TEnableCounterB:=TRUE;
ELSE
TEnableCounterB:=FALSE;
(*bUnitBRowStopperStasrted:=FALSE; *)
END_IF

IF  bAutoModeOn AND ConeInCompleteB   AND   UnitBCompleteCheckCount.CV >=iATotalNoOfCones   THEN
TestTimer(IN:=TRUE , PT:=t#5s , Q=> , ET=> );

END_IF

IF TestTimer.Q THEN
CycleComplete1:=FALSE;
UnitBCompleteCheckCount.RESET:=TRUE;
bUnitBRowStopperStarted:=FALSE;
ConeInCompleteB :=FALSE;
TestTimer(IN:=FALSE);
END_IF

(*
IF bAutoModeOn  AND    bCounterDisableUnitB  AND   UnitBCompleteCheckCount.CV >=iATotalNoOfCones AND( bUnitBRowStopperStarted OR ConeInCompleteTestbitB) THEN
CompleteTestbitB:=TRUE;
bStartUnitBCompCount:=FALSE;
UnitBCompleteCheckCount.RESET:=TRUE;
ConeInCompleteTestbitB:=FALSE;
bCounterDisableUnitB:=FALSE;
ELSE
UnitBCompleteCheckCount.RESET:=FALSE;
END_IF
*)





(*F_TRIG_11(CLK:=bIUnitBConeCrossing , Q=> ); *)
UnitBConeCrossCount(
	CU:=  bAUnitBConeCrossedTemp ,
	RESET:= ,
	PV:=3 ,
	Q=> ,
	CV=> );
(*
UnitBConeCompChkCount(
	CU:= bIUnitBConeCrossing  (*   R_TRIG_1.Q*) ,
	RESET:= ,
	PV:=50,
	Q=> ,
	CV=> );
*)


(*=Total Cone crossing the Unit B Limit Switch==========*)

UnitBCompleteCheckCount(
	CU:=   bAUnitBConeCrossed  ,
	RESET:= ,
	PV:=iATotalNoOfCones ,
	Q=> ,
	CV=>UnitBCompleteCheckCountCV );

UnitBConeCountHMI:=UnitBCompleteCheckCount.CV;

IF UnitBCompleteCheckCount.CV >=  iATotalNoOfCones  AND bIUnitB_RowStopperHome  AND NOT bQAUnitB_RowStopperMotorRev1 AND NOT ConeInCompleteB THEN
 tConeCrossDly(IN:=TRUE , PT:=t#0.5s , Q=> , ET=> );
END_IF

IF tConeCrossDly.Q THEN
 bUnitBRowStopperStarted:=FALSE;
UnitBCompleteCheckCount.RESET:=TRUE;
step:=0;
  tConeCrossDly(IN:=FALSE);
ELSE
UnitBCompleteCheckCount.RESET:=FALSE;

END_IF






(*===============Stop Sequence===========*)


IF NOT  bIEmergency OR   bStopHmi OR bAutoModeOff  OR bIMCStop  THEN bStopRetUnitB:=TRUE;
(*
b12ConeModelSelected:=FALSE;
b18ConeModelSelected:=FALSE;
b24ConeModelSelected:=FALSE;
b32ConeModelSelected:=FALSE;

iNetWtHmi:=0;
iNetTolHmi:=0;
rSealCompDlyHmi:=0;
*)
NegToleranceEnabled:=TRUE; UnitBCompleteCheckCount.RESET:=TRUE;
END_IF


IF bStopRetUnitB  (*AND NOT bIUnitB_RowStopperHome *) THEN
step:=0;
step2:=0;
bAUnitBWeighOk:=FALSE;
bAUnitBConeCrossed:=FALSE;
bQAUnitB_RowStopperMotorFwd1:=FALSE;
UnitBConeCount.RESET:=FALSE;
UnitBCompleteCheckCount.RESET:=TRUE;
bQAUnitB_RowStopperMotorRev1:=FALSE;
bRetUnitBRst:=TRUE;
bUnitBRowStopperStarted:=FALSE;
UnitBCompleteCheckCount.RESET:=TRUE;
TON_6(IN:= FALSE);
TON_8(IN:= FALSE);
TON_9(IN:= FALSE);
TON_10(IN:= FALSE);
END_IF

IF bIUnitB_RowStopperHome THEN
bStopRetUnitB:=FALSE;
bRetUnitBRst:=FALSE;

END_IF

(*IF NOT CompleteTestbitB THEN  *)
CASE step2 OF

	0:	IF bStartUnitBCompCount (* bUnitBRowStopperStarted *)OR TEnableCounterB THEN
		F_TRIG_4(CLK:=bIUnitBConeCrossing , Q=> );
		IF F_TRIG_4.Q THEN TON_6(IN:= FALSE); step2:=step2+1; END_IF END_IF


	1:	TON_6(IN:= FALSE);
		TON_8(IN:= FALSE);
		step2:=step2+1;


	2:	 bAUnitBConeCrossed:=TRUE;
		 step2:=Step2+1;

	3:	 step2:=step2+1;

	4: 	TON_6(IN:=  TRUE  , PT:=t#50ms,Q=> , ET=> );
		IF TON_6.Q THEN  bAUnitBConeCrossed:=FALSE;  step2:=step2+1; END_IF


	5:	 step2:=step2+1;

	6:	IF  bIUnitBConeCrossing THEN
		TON_6(IN:= FALSE);
		step2:=step2+1; END_IF

	7:	TON_8(IN:=  TRUE  , PT:=t#10ms,Q=> , ET=> );
		IF TON_8.Q THEN  step2:=step2+1; END_IF

	8:	 step2:=step2+1;

	9:	 step2:=step2+1;

	10:	TON_8(IN:= FALSE);
		step2:=0;


END_CASE
(*END_IF  *)






IF bAutoModeOn  AND  bResetBit AND bIUnitBConedetection1 AND bIUnitBConedetection3 AND bIUnitBConedetection3    AND NOT  bIUnitB_RowStopperHome THEN Ctu_2_Rst:=TRUE;  ELSE Ctu_2_Rst:= FALSE; END_IF

R_TRIG_6(CLK:=Ctu_2_Rst , Q=> );

CTU_2.RESET:= R_TRIG_6.Q;

CASE step3 OF

	0:	IF bStartUnitBCompCount THEN
		F_TRIG_5(CLK:=bIUnitBConeCrossing , Q=> );
		IF F_TRIG_5.Q THEN TON_9(IN:= FALSE); step3:=step3+1; END_IF END_IF


	1:	TON_9(IN:= FALSE);
		TON_10(IN:= FALSE);
		step3:=step3+1;


	2:	 bAUnitBConeCrossedTemp:=TRUE;
		 step3:=Step3+1;

	3:	 step3:=step3+1;

	4: 	TON_11(IN:=  TRUE  , PT:=t#50ms,Q=> , ET=> );
		IF TON_11.Q THEN  bAUnitBConeCrossedTemp:=FALSE;  step3:=step3+1; END_IF


	5:	 step3:=step3+1;

	6:	IF  bIUnitBConeCrossing THEN
		TON_11(IN:= FALSE);
		step3:=step3+1; END_IF

	7:	TON_12(IN:=  TRUE  , PT:=t#10ms,Q=> , ET=> );
		IF TON_12.Q THEN  step3:=step3+1; END_IF

	8:	 step3:=step3+1;

	9:	 step3:=step3+1;

	10:	TON_12(IN:= FALSE);
		step3:=0;


END_CASE


               :   , td QШ         
   WeightCalc йН`	йН`      ROERIT        К  PROGRAM WeightCalc
VAR
	CounterA: CTU;
	R_TRIG_1: R_TRIG;
	CounterB: CTU;
	R_TRIG_2: R_TRIG;
	R_TRIG_3: R_TRIG;

	ConeCountEnable: BOOL;
	InterLockCounterStartTimer: TON;
	TON_3: TON;
	tResetTiner: TON;
	WCPReadyTemp1: BOOL;
	WCPReadyTemp2: BOOL;
	Det: WORD;
	BreadTemp: BOOL;
	ADSREAD_1: ADSREAD;
	SwithOnButtton: BOOL;
	axis1: BOOL;
	InterLockCounterRESET: BOOL;
	RstStep: INT;
	bStopTiltUnit: BOOL;
	rRetUnitTolMax: REAL;
	rRetUnitTolMin: REAL;
	rRetUnitAWeightok: BOOL;

	TON_4: TON;
	rRetUnitAWeightempt: REAL;
	rRetUnitAWeighttemp: REAL;
	TON_5: TON;
	rRetUnitBWeightok: BOOL;
	TON_6: TON;
	TON_7: TON;
	rGrossWtTolMax: REAL;
	rGrossWtTolMin: REAL;
	TON_8: TON;
	bGrossWieghtOkTemp: BOOL;

	Timer1: TON;
	Timer2: TON;
	bMonitor: BOOL;
	bStartBlinker: BOOL;
	bStartConeFeedConvInBypass: BOOL;
	rRetUnitAWeightNok: BOOL;
	rRetUnitBWeightNok: BOOL;
	iACounterB_PV: INT;
	iACounterA_PV: INT;
	i: INT;

	UnitBWeightBit: BOOL;
	UnitAWeightBit: BOOL;
	weightCheck: INT;
	Timer_3: TON;
	Weight3Move: BOOL;
	var_4: REAL;
	weightCheck1: INT;
	Weight4Move: BOOL;
	Timer_4: TON;
	Weight2Move: BOOL;
	var_2: REAL;
	var_3: REAL;
	Weight1Move: BOOL;
END_VAR  (*===========Reterival unit weight ok and not ok Logic UNIT-A=================*)

(*==== Weight Max & Min Tolerance Setting==========*)

rRetUnitTolMax:= (iNetWtHmi + iNetTolHmi);

	IF NegToleranceEnabled AND bAutoModeOn THEN
	rRetUnitTolMin:= (iNetWtHmi - iNetTolHmi);
	ELSIF NOT NegToleranceEnabled THEN rRetUnitTolMin:= (iNetWtHmi);
	END_IF
IF rRetUnitAWeight  <= rRetUnitTolMax AND rRetUnitAWeight >=rRetUnitTolMin THEN
rRetUnitAWeightok:=TRUE;
ELSE
rRetUnitAWeightok:=FALSE;
END_IF

IF TON_5.Q   THEN bQAUnitAWeightOkLamp:=TRUE; END_IF


(*
ELSIF Timer1.Q THEN bQAUnitA_LiftPistonValve:=TRUE; ELSE  bQAUnitA_LiftPistonValve:=TRUE; END_IF
IF  bUnitARowStopperStarted  THEN bStartBlinker:=TRUE; ELSE   bStartBlinker:=FALSE;


Timer1(IN:=(bStartBlinker AND NOT Timer2.Q)  , PT:=t#50ms , Q=> , ET=> );

Timer2(IN:=Timer1.Q , PT:=t#50ms , Q=> , ET=> );
*)



(*=========== Unit A Start after wieght ok logic=================*)

IF bIUnitA_StartPB  AND bQAUnitAWeightOkLamp AND bAutoModeOn AND NOT bStartConeFeedConvInBypass THEN  bRetUnitAStart:=TRUE; ELSE bRetUnitAStart:=FALSE;  END_IF





(*============Weight stabilization time======================*)


IF rRetUnitAWeightok THEN TON_4(IN:=TRUE , PT:=t#2s , Q=> , ET=> ); ELSE  TON_4(IN:=FALSE); END_IF

(*============== WEIGHT NOT OK DEFINE TIME ( TON_5)=================*)

IF TON_4.Q THEN TON_5(IN:=TRUE , PT:=t#0.5s , Q=> , ET=> ); ELSE TON_5(IN:=FALSE); END_IF

IF bAutoModeOn AND bIUnitA_RowStopperHome AND NOT rRetUnitAWeightok THEN rRetUnitAWeightNok:=TRUE;  bQAUnitAWeightOkLamp:=FALSE;  ELSE rRetUnitAWeightNok:=FALSE;   END_IF
(*
  IF rRetUnitAWeightNok THEN bRetUnitAStart:=FALSE; END_IF
*)


(*===============weight not ok Indicator on logic====================*)

IF rRetUnitAWeightNok THEN bQAUnitAWeightNokLamp:=TRUE; ELSE  bQAUnitAWeightNokLamp:=FALSE;  END_IF


(*================ Weight ok feedback to Auto Logic=============*)

IF  rRetUnitAWeightok THEN bAUnitAWeighOk:=TRUE;  ELSE bAUnitAWeighOk:=FALSE; END_IF


(*===========Reterival unit weight ok and not ok Logic UNIT-B =================*)



IF rRetUnitBWeight  <= rRetUnitTolMax AND rRetUnitBWeight >=rRetUnitTolMin THEN
rRetUnitBWeightok:=TRUE;
ELSE
rRetUnitBWeightok:=FALSE;
END_IF

IF TON_7.Q THEN bQAUnitBWeightOkLamp:=TRUE; ELSE  bQAUnitBWeightOkLamp:=FALSE;  END_IF




(*=========== Unit B Start after wieght ok logic=================*)

IF bIUnitB_StartPB  AND bQAUnitBWeightOkLamp AND bAutoModeOn  AND NOT bStartConeFeedConvInBypass  THEN  bRetUnitBStart:=TRUE; ELSE bRetUnitBStart:=FALSE; END_IF


(*============Weight stabilization time======================*)


IF rRetUnitBWeightok THEN TON_6(IN:=TRUE , PT:=t#2s , Q=> , ET=> ); ELSE  TON_6(IN:=FALSE); END_IF

(*============== WEIGHT NOT OK DEFINE TIME ( TON_5)=================*)

IF TON_6.Q THEN TON_7(IN:=TRUE , PT:=t#0.5s , Q=> , ET=> ); ELSE TON_7(IN:=FALSE); END_IF

IF bAutoModeOn  AND bIUnitB_RowStopperHome AND NOT rRetUnitBWeightok THEN rRetUnitBWeightNok:=TRUE; ELSE rRetUnitBWeightNok:=FALSE;   END_IF
(*
  IF rRetUnitBWeightNok THEN bRetUnitBStart:=FALSE; END_IF
*)


(*===============weight not ok Indicator on logic====================*)


IF rRetUnitBWeightNok THEN bQAUnitBWeightNokLamp:=TRUE; ELSE  bQAUnitBWeightNokLamp:=FALSE;  END_IF


(*================ Weight ok feedback to Auto Logic=============*)

IF  rRetUnitBWeightok THEN bAUnitBWeighOk:=TRUE; ELSE bAUnitBWeighOk:=FALSE;  END_IF




(*============================================================================================================================================================*)



(*===================UnitA Cone Count Logic================*)

CounterA(
	CU:=bIUnitAConeCrossing ,
	RESET:=R_TRIG_1.Q ,
	PV:=iACounterA_PV ,
	Q=> ,
	CV=> );



(*===================UnitB Cone Count Logic================*)

CounterB(
	CU:=bIUnitBConeCrossing ,
	RESET:=R_TRIG_2.Q ,
	PV:=iACounterB_PV ,
	Q=> ,
	CV=> );





IF bRetUnitAStart AND NOT bRetUnitBStart  AND NOT UnitBWeightBit THEN UnitAWeightBit:=TRUE; var_1:=rRetUnitAWeight; END_IF
IF bRetUnitBStart AND NOT bRetUnitAStart AND NOT UnitAWeightBit  THEN UnitBWeightBit:=TRUE; var_2:=rRetUnitBWeight; END_IF

CASE  weightCheck OF


	0:	IF  UnitAWeightBit AND NOT UnitBWeightBit THEN
		Weight1Move:=TRUE;
		weightCheck:=1;END_IF

	1:	IF  Weight1Move AND NOT Weight3Move THEN
		var_3:=var_1;
		Weight3Move:=TRUE;
		Weight1Move:=FALSE;

		weightCheck:=2;END_IF

	2:	IF  CycleComplete AND Weight3Move THEN
		 var_5:=var_3;
		weightCheck:=3;END_IF

	3: 	IF Weight3Move THEN Timer_3(IN:=TRUE , PT:= T#1s , Q=> , ET=> );
		IF Timer_3.Q THEN Weight3Move:=FALSE; UnitAWeightBit:=FALSE;Timer_3(IN:=FALSE);
		weightCheck:=0;END_IF END_IF

END_CASE

CASE  weightCheck1 OF

	0:	IF  UnitBWeightBit AND NOT UnitAWeightBit THEN
		Weight2Move:=TRUE;
		weightCheck1:=1;END_IF

	1:	IF  Weight2Move AND NOT Weight4Move THEN
		var_4:=var_2;
		Weight4Move:=TRUE;
		Weight2Move:=FALSE;

		weightCheck1:=2;END_IF

	2:	IF  CycleComplete1 AND Weight4Move  THEN
		var_5:=var_4;
		weightCheck1:=3;END_IF

	3: 	IF Weight4Move THEN Timer_4(IN:=TRUE , PT:= T#1s , Q=> , ET=> );
		IF Timer_4.Q THEN Weight4Move:=FALSE;UnitBWeightBit:=FALSE; Timer_4(IN:=FALSE);
		weightCheck1:=0;END_IF END_IF

END_CASE
               5   , н дКI           WrapConvRst йН`	йН`      dй            Њ   PROGRAM WrapConvRst
VAR
	step: INT;
	bConeAtWrppingConveyor1: BOOL;
	TON_1: TON;
	bConePresent: BOOL;
	bAResetHmitemp: BOOL;

	ConeOnWrapConveyAck: BOOL;
END_VAR  IF NOT  bIEmergency OR bStopHmi  OR bAutoModeOff OR bIMCStop  THEN
		bQAWrappingConveyorMotor1:=FALSE;
		bQAWrappingConveyorMotor2:=FALSE;
		bQAWrappingConveyorMotor3:=FALSE;
		bQMWrappingConveyorMotor:=FALSE;
		ConeOnWrapConveyAck:=FALSE;
		bQRWrappingConveyorMotor:=FALSE;
		TON_1(IN:=FALSE);
		bConePresent:=FALSE; step:=0; bAInializeStarted:=FALSE ;
		bQGross_Roller_On:=FALSE;
		bQGross_Cylinder_On:=FALSE;
END_IF





CASE step OF

	0:	 IF bSaelUnitIntOver AND bAutoModeOn THEN
		bQAWrappingConveyorMotor1:=FALSE;
		bQAWrappingConveyorMotor2:=FALSE;
		bQAWrappingConveyorMotor3:=FALSE;
		bQMWrappingConveyorMotor:=FALSE;
		ConeOnWrapConveyAck:=TRUE;
		TON_1(IN:=FALSE);
		step:=step+1;
		END_IF

	1:	bQRWrappingConveyorMotor:=TRUE;
		bSaelUnitIntOver:=FALSE;
		step:=step+1;

	2:	TON_1(IN:=TRUE , PT:=T#10s , Q=> , ET=> );
		IF TON_1.Q THEN
		step:=step+1;
		END_IF

	3:	IF TON_1.Q AND  bQWrappingConveyorMotor AND bConePresent THEN
		step:=step+1;
		ELSIF  TON_1.Q AND  bQWrappingConveyorMotor AND NOT bConePresent THEN
		step:=step+2;
		END_IF

	4:	bQRWrappingConveyorMotor:=FALSE;
		TON_1(IN:=FALSE);
		sWrapConvStatus:='Clear Cone At Wapping Conveyor';
		bConePresent:=FALSE;
		step:=step+1;

	5:	IF NOT bConePresent AND bAutoModeOn   THEN
		TON_1(IN:=FALSE);
		bQRWrappingConveyorMotor:=FALSE;
		sWrapConvStatus:=' ';
		step:=step+1;
		END_IF

	6:	TON_1(IN:=FALSE);
		bWrpConvIntOver:=TRUE;
		ConeOnWrapConveyAck:=FALSE;
		step:=0;

END_CASE


	IF  bAInializeStarted AND (bIWrappingCone1 OR bIWrappingCone2 OR bIWrappingCone3  OR  bIWrappingConeDeductionSen )  AND bAutoModeOn AND ConeOnWrapConveyAck THEN
	bConePresent:=TRUE;
	END_IF

	IF bConePresent  THEN
	ConeMissAlarm:='Allign the Cone at  Wrapping Conveyer ';
	ELSE
	ConeMissAlarm:='No Cone ON Wrapping Conveyer';
	END_IF

	IF  bAInializeStarted AND NOT bIWrappingCone1 AND NOT  bIWrappingCone2 AND NOT  bIWrappingCone3  AND NOT  bIWrappingConeDeductionSen   AND bAutoModeOn AND ConeOnWrapConveyAck
	THEN bConePresent:=FALSE;
	END_IF               &   , К  d            Wrapping_Unit йН`	йН`      0000
AL        ­  PROGRAM Wrapping_Unit
VAR

	step1: INT;

	R_TRIG_1: R_TRIG;
	Counter1: CTU;
	WrapConvStartDly: TON;
	WrapR_TRIG_1: R_TRIG;
	bAWrappingConvStartAuto2: BOOL;
	WrapR_TRIG_2: R_TRIG;
	WrapConvStartDly2: TON;
	WrapR_TRIG_3: R_TRIG;
	WrapConvStartDly3: TON;
	bAWrappingConvStartAuto3: BOOL;
	WrapR_TRIG_4: R_TRIG;
	bAWrappingConvStartAuto4: BOOL;
	WrapConvStartDly4: TON;
	WrapR_TRIG_5: R_TRIG;
	bAWrappingConvStartAuto5: BOOL;
	WrapConvStartDly5: TON;
	bAWrapConeCyl1: BOOL;
	bAWrapConeCyl123: BOOL;
	bAWrapConeCyl3: BOOL;
	bAWrapConeCyl23: BOOL;
	bASet1Comp: BOOL;
	bASet2Comp: BOOL;
	bASet: BOOL;
	bASet3Comp: BOOL;
	bA3ConeWrapStarted: BOOL;
	bA6thConeWrapStarted: BOOL;
	bA1ConeWrappOver: BOOL;
	bA2ConeWrappOver: BOOL;
	bAll3ConeWrapOver: BOOL;
	bA5ConeWrappOver: BOOL;
	bA6ConeWrappOver: BOOL;
	bA56ConeWrapOver: BOOL;
	bAWrapConeCyl23_1: BOOL;

	bATemp: BOOL;
	baConv2ndStart: BOOL;
	baConv3rdStart: BOOL;
	baConv4thStart: BOOL;
	baConv5thStart: BOOL;
	bASensorMonitorBit1: BOOL;
	bAWrappingCone123FwdCom: BOOL;
	ni: BOOL;
	step2: INT;
	bAWrappingCone3FwdCom: BOOL;
	step3: INT;
	bAWrappingCone23FwdCom: BOOL;
	step4: INT;
	bAWrappingCone23FwdCom1: BOOL;
	bASet4Comp: BOOL;
	WrapR_TRIG_3_23: R_TRIG;
	bAWrappingConvStartAuto3_23: BOOL;
	WrapConvStartDly3_23: TON;
	bAWrapConeCyl23_1_23: BOOL;
	bAWrappingCone23_23FwdCom1: BOOL;
	WrapR_TRIG_6_23: R_TRIG;
	bAWrappingConvStartAuto4_23: BOOL;
	WrapConvStartDly6_23: TON;
	bIWrappingCone: BOOL;

	bAWrapConeCyl123_23: BOOL;
	bAWrappingCone123_23FwdCom: BOOL;

	step5: INT;
	bAConvRunning1: BOOL;
	bAConvRunning2: BOOL;
	TON_1: TON;
	TON_2: TON;
	bANextLayerStarted: BOOL;
	bAConvStartInterlock: BOOL;
	bAFirstConeAtWrapConv: BOOL;
	baConveyerStarted: BOOL;
	RtrigBit1: BOOL;
	R_TRIG_3: R_TRIG;
	bASensorNok: BOOL;
	WrapConvStartDlyOver: BOOL;
	test: R_TRIG;
	WrappingCone1RT: R_TRIG;
	WrappingConvRT: R_TRIG;
	WCS1Sensed: BOOL;
	TON_3: TON;
	WCS1SenseRst1: BOOL;
	TON_6: TON;
	TON_7: TON;
	TON_8: TON;
	TON_9: TON;
	TON_10: TON;
	TimerStartBit: BOOL;
	bConvRunning: BOOL;
	test1THEN: BOOL;
	test1: BOOL;
	bSaelUnitIntOverTemp: BOOL;
	step6: INT;
	step7: INT;
	bWCSStart3_24: BOOL;
	bStopHmitemp: BOOL;
	bWCSHomeSenOk: BOOL;

	WCSCylsHomeRsErr: BOOL;

	bWCSHomeEndOk: BOOL;
	WCSCylsEndRsErr: BOOL;

	bAWrappingConvStartAuto: BOOL;
	bA3Pushed: BOOL;
	bWCSStart3: BOOL;
	bWCSStart2: BOOL;
	RsChkDly: TON;
	bWrapConvStopped2: BOOL;

	bWrapConvStopped3: BOOL;

	bIWrappingFilmTensionChk1: BOOL;
	bIWrappingFilmTensionChk2: BOOL;
	bIWrappingFilmTensionChk3: BOOL;
	R_TRIG1: F_TRIG;
	R_TRIG2: F_TRIG;
	R_TRIG3: F_TRIG;
	Film1Loaded: BOOL;
	Film3Loaded: BOOL;
	Film2Loaded: BOOL;
	FlimNotLoaded: BOOL;
	FlimChkDly: TON;
	Timer1: TON;
	bAWrapFirstStart: BOOL;
	TON2: TON;
	sSheetNotFeeded: STRING;
	F_TRIG1: F_TRIG;
	F_TRIG2: F_TRIG;
	F_TRIG3: F_TRIG;
	WrappConeBitAlert1: BOOL;
	WrappConeBitAlert2: BOOL;
	WrappConeBitAlert3: BOOL;
	bQAWrappingConveyorMotor1Temp: BOOL;
	checkPolySheet1: BOOL;
	bQAWrappingConveyorMotor2Temp: BOOL;
	Timer6: TON;
	bAllignConeErr1: BOOL;
	bQAWrappingConveyorMotor2Temp2: BOOL;
	checkPolySheet2Temp: BOOL;

	Timer3: TON;
END_VAR0  (*========================Wrapping Conveyor Logic in auto Mode=================*)

bQAWrappingConveyorMotor:= (bQAWrappingConveyorMotor1 OR bQAWrappingConveyorMotor2 OR bQAWrappingConveyorMotor3 );

(*===================Wrapping Pinston On/Off Logic In Auto Mode==================*)


bQAWrappingChannelPistonValve1:= (bAWrappingCone123OnAuto  );

bQAWrappingChannelPistonValve2:=( bAWrappingCone123OnAuto );

bQAWrappingChannelPistonValve3:=( bAWrappingCone123OnAuto );


(*========================Wrapping Conveyor  Logic for First Cone in auto Mode =================*)

WrapR_TRIG_1(CLK:=bAWrappingConvStart1  , Q=> );

IF bAutoModeOn AND  WrapR_TRIG_1.Q  THEN  bAWrappingConvStartAuto:=TRUE; END_IF

WrapConvStartDly(IN:= bAWrappingConvStartAuto, PT:=t#0.3s , Q=> , ET=> );

(*=====New Added for Cone Detection At Wrapp Conveyor====*)

IF WrapR_TRIG_1.Q   AND (bIWrappingCone1 OR bIWrappingCone2 OR  bIWrappingCone3 OR bIWrappingConeDeductionSen) THEN WrappConeBitAlert1:=TRUE;ELSE WrappConeBitAlert1:=FALSE;END_IF
IF WrappConeBitAlert1 AND bErrorReset THEN WrappConeBitAlert1:=FALSE; END_IF
IF WrapR_TRIG_2.Q   AND (bIWrappingCone1 OR bIWrappingCone2 OR  bIWrappingCone3 OR bIWrappingConeDeductionSen) THEN WrappConeBitAlert2:=TRUE;ELSE WrappConeBitAlert2:=FALSE;END_IF
IF WrappConeBitAlert2 AND bErrorReset THEN WrappConeBitAlert2:=FALSE; END_IF
IF WrapR_TRIG_3.Q   AND (bIWrappingCone1 OR bIWrappingCone2 OR  bIWrappingCone3 OR bIWrappingConeDeductionSen) THEN WrappConeBitAlert3:=TRUE;ELSE WrappConeBitAlert3:=FALSE;END_IF
IF WrappConeBitAlert3 AND bErrorReset THEN WrappConeBitAlert3:=FALSE; END_IF


IF bAutoModeOn AND  WrapConvStartDly.Q (*AND NOT bCheckWrappingSen  bIWrappingConeDeductionSen *)AND bIWrappingChannelPiston1_Home AND bIWrappingChannelPiston2_Home  AND  bAWrapFirstStart AND bIWrappingChannelPiston3_Home(*  AND NOT bIWrappingCone1 AND NOT bIWrappingCone2 AND NOT bIWrappingCone3 *) AND NOT WrappConeBitAlert1 THEN
bQAWrappingConveyorMotor1:=TRUE;
bAWrapConStart:=FALSE;
bA3ConeWrappOverTemp:=FALSE;
END_IF

    (*==========================  Wrapping Sheet Sensing Error=================*)
(*
IF bQAWrappingConveyorMotor1   THEN
bAErrorChkBit:=TRUE;

IF NOT  bCheckWrappingSen    THEN
bAErrorChkBit:=FALSE;
bQAWrappingConveyorMotor1Temp:=TRUE;
bQAWrappingConveyorMotor1:=FALSE;
END_IF
END_IF
*)



IF   bAutoModeOn AND  bIWrappingConeDeductionSen THEN
bQAWrappingConveyorMotor1:=FALSE;
bQAWrappingConveyorMotor1Temp:=FALSE;
END_IF

(*===============Wrapping Conveyor 2nd  Cone  Logic  in auto Mode==================*)

WrapR_TRIG_2(CLK:= ( bAWrappingConvStart2 ) , Q=> );


IF bAutoModeOn AND  WrapR_TRIG_2.Q THEN  bAWrappingConvStartAuto:=FALSE;  bAWrappingConvStartAuto2:=TRUE; END_IF

WrapConvStartDly2(IN:= bAWrappingConvStartAuto2, PT:=t#0.1s , Q=> , ET=> );


IF bAutoModeOn AND  WrapConvStartDly2.Q  AND bIWrappingChannelPiston1_Home AND bIWrappingChannelPiston2_Home AND bIWrappingChannelPiston3_Home AND bIWrappingConeDeductionSen   AND NOT bAWrapCylRsErrorAuto AND NOT bConeMiss1AtWrapConv AND NOT WrappConeBitAlert2 AND NOT bCheckWrappingSen2  THEN
bQAWrappingConveyorMotor2:=TRUE;

bAConvRunning1:=TRUE;

END_IF
(*
   (*==========================  Wrapping Sheet Sensing Error=================*)
IF bQAWrappingConveyorMotor2 THEN
IF bQAWrappingConveyorMotor2 AND   bIWrappingConeDeductionSen  AND( bIWrappingCone1 OR  bIWrappingCone2 OR  bIWrappingCone3 ) THEN
checkPolySheet2:=TRUE;
checkPolySheet2Temp:=TRUE;
ELSE
checkPolySheet2Temp:=TRUE;

END_IF
END_IF



IF checkPolySheet2Temp AND   bIWrappingConeDeductionSen AND NOT  bIWrappingCone1 AND NOT  bIWrappingCone2 AND NOT  bIWrappingCone3 AND NOT checkPolySheet2   THEN

bQAWrappingConveyorMotor2Temp:=TRUE; bQAWrappingConveyorMotor2:=FALSE;
END_IF

*)
(*
IF bQAWrappingConveyorMotor2Temp THEN Timer6(IN:=TRUE , PT:=t#2s , Q=> , ET=> ); END_IF

IF bQAWrappingConveyorMotor2Temp AND Timer6.Q AND NOT bIWrappingConeDeductionSen THEN bAllignConeErr1:=TRUE;
ELSIF bQAWrappingConveyorMotor2Temp AND Timer6.Q AND  bIWrappingConeDeductionSen THEN bQAWrappingConveyorMotor2Temp2:=TRUE; Timer6(IN:=FALSE);
END_IF
*)



IF  bAutoModeOn AND  bIWrappingCone1 AND   bAConvRunning1    THEN
bWrapConvStopped2:=TRUE;
bWrapConvStopped2Temp:=TRUE;
bQAWrappingConveyorMotor2:=FALSE;
bAWrappingConvStartAuto2:=FALSE;
bAConvRunning1:=FALSE;
END_IF
(*================================== this Logic is for Cone Missing at Cone Detection sensor in wrapping Unit==========================*)
IF bAutoModeOn AND bWrapConvStopped2Temp AND TON2.Q    AND bIWrappingConeDeductionSen THEN bFwdPistonStartTemp:=TRUE; bWrapConvStopped2Temp:=FALSE; END_IF
IF bAutoModeOn AND bWrapConvStopped2Temp THEN   TON2(IN:=TRUE , PT:= t#1s, Q=> , ET=> ); ELSE TON2(IN:=FALSE);
END_IF
IF bAutoModeOn AND TON2.Q AND NOT  bIWrappingConeDeductionSen  THEN  bConeMiss1AtWrapConv:=TRUE; END_IF

IF bAutoModeOn AND bConeMiss1AtWrapConv AND bIWrappingConeDeductionSen AND bErrorReset AND bIWrappingCone1  THEN
bConeMiss1AtWrapConv:=FALSE; TON2(IN:=FALSE); END_IF

(*===============Wrapping Conveyor  3rd Cone  Logic  in auto Mode ==================*)

WrapR_TRIG_3(CLK:=bAWrappingConvStart3 , Q=> );


IF bAutoModeOn AND  WrapR_TRIG_3.Q THEN bAWrappingConvStartAuto3:=TRUE;  checkPolySheet2Temp:=FALSE; bWrapConvStopped2:=FALSE;  END_IF

WrapConvStartDly3(IN:= bAWrappingConvStartAuto3, PT:=t#0.1s , Q=> , ET=> );


IF  bAutoModeOn AND WrapConvStartDly3.Q AND bIWrappingChannelPiston1_Home AND bIWrappingChannelPiston2_Home AND bIWrappingChannelPiston3_Home AND bIWrappingConeDeductionSen AND bIWrappingCone1 AND NOT bAWrapCylRsErrorAuto AND NOT WrappConeBitAlert3  AND NOT bCheckWrappingSen3  AND NOT  bWrapConvStopped2Temp THEN
bQAWrappingConveyorMotor3:=TRUE;
bASensorMonitorBit1:=TRUE;
END_IF

IF   bAutoModeOn AND  bASensorMonitorBit1 AND   bIWrappingCone3 AND NOT bIWrappingConeDeductionSen THEN
bQAWrappingConveyorMotor3:=FALSE;
bAWrappingConvStartAuto3:=FALSE;
bASensorMonitorBit1:=FALSE;
bWrapConvStopped3:=TRUE;
END_IF
(* ================== Cone Missing Logic on Wrapping Conveyor===============*)

IF bWrapConvStopped3 THEN Timer1(IN:=TRUE , PT:=t#1s , Q=> , ET=> ); ELSE  Timer1(IN:=FALSE); END_IF


IF bAutoModeOn AND   Timer1.Q  AND bWrapConvStopped3 AND bIWrappingCone1 AND bIWrappingCone2 AND NOT bConeMiss2AtWrapConv THEN  bAWrapConeCyl123:=TRUE;  bWrapConvStopped3:=FALSE;
ELSIF bAutoModeOn AND Timer1.Q  AND( NOT  bIWrappingCone1 OR NOT bIWrappingCone2  ) THEN bConeMiss2AtWrapConv:=TRUE;
END_IF


(* ==================Error Acknlodge for  Cone Missing Logic on Wrapping Conveyor===============*)


 IF bConeMiss2AtWrapConv AND bAutoModeOn AND bErrorReset AND   bIWrappingCone1 AND  bIWrappingCone2 AND  bIWrappingCone3  THEN bConeMiss2AtWrapConv:=FALSE;  bAByPassOn:=TRUE; END_IF





(*===============Wrapping piston 123 on/off logic  ====================*)
CASE step1 OF

	0:	TON_1(IN:= FALSE);
		step1:=step1+1;

	1:	step1:=step1+1;

	2:	IF bAutoModeOn AND  bAWrapConeCyl123  AND  bIWrappingChannelPiston1_Home   AND bIWrappingChannelPiston2_Home AND bIWrappingChannelPiston3_Home
		  AND ( bWCSStart1 OR bWCSStart2  )  AND SealingOk AND NOT bAWrapwait THEN
		TON_1(IN:= TRUE, PT:=T#0.3s , Q=> , ET=> );
		IF TON_1.Q THEN  step1:=step1+1; END_IF
		END_IF

	3:	bWCSStart1:=FALSE;
		bWCSStart2:=FALSE;
		step1:=step1+1;


	4:	IF bISealingBottomPistonHome AND bISealingTopPistonHome AND  NOT bQASealingConveyorMotor AND NOT bAPauseSeq   AND NOT bASealSepXCylRsError
		AND SealingOk THEN
		bAWrappingCone123OnAuto:=TRUE;
		step1:=step1+1;
		END_IF


	5:	RsChkDly(IN:=FALSE);
		step1:=step1+1;

	6:	IF bAWrappingCone123OnAuto AND bIWrappingChannelPiston1_End AND bIWrappingChannelPiston2_End AND bIWrappingChannelPiston3_End
		AND SealingOk AND bAFilmLoaded   AND NOT bAWrappingCylRsError THEN
		bAConvRunning1:=FALSE;
		bAWrappingCone123FwdCom:=TRUE;
		TON_1(IN:= FALSE);
		step1:=step1+2;
		ELSIF  bAWrappingCone123OnAuto AND bIWrappingChannelPiston1_End AND bIWrappingChannelPiston2_End AND bIWrappingChannelPiston3_End AND NOT bAWrappingCylRsError  AND NOT bAFilmLoaded THEN
		bAFlimNotLoaded:=TRUE;
		bAWrappingCone123OnAuto:=FALSE;
		bAWrapConeCyl123:=FALSE;
		bAPolythinSheetError:=TRUE;
		ConeMissAlarm1:='Sheet NOT Feeded';
		step1:=step1+3;
		ELSIF NOT  bIWrappingChannelPiston1_End OR NOT  bIWrappingChannelPiston2_End OR NOT  bIWrappingChannelPiston3_End  AND  bAWrappingCone123OnAuto   (* AND not  bAFilmLoaded AND NOT bAWrappingCylRsError     *) THEN
		RsChkDly(IN:=TRUE , PT:=t#5s , Q=> , ET=> );
		IF RsChkDly.Q THEN bAWrapCylRsErrorAuto:=TRUE;   bAWrappingCone123OnAuto:=FALSE; step1:=step1+1; END_IF

		END_IF

	7:	IF bErrorReset THEN RsChkDly(IN:=FALSE);
		bAWrapCylRsErrorAuto:=FALSE;
		step1:=4;
		END_IF

	8:	 IF bAWrappingCone123FwdCom AND NOT bAPauseSeq  THEN
		bAWrappingCone123OnAuto:=FALSE;
		bAFilmLoaded:=FALSE;
		step1:=step1+2;
		END_IF

	9:	 IF bFilmErrClear THEN sSheetNotFeeded:='';  bAFlimNotLoaded:=FALSE;bAConvRunning1:=FALSE;
		 step1:=step1+1;END_IF

	10:	bAWrapConeCyl123:=FALSE;
		bA3ConeWrappOverTemp:=TRUE;
		step1:=step1+1;

	11:	bFilmErrClear:=FALSE;step1:=step1+1;

	12:	 IF  bIWrappingChannelPiston1_Home   AND bIWrappingChannelPiston2_Home AND bIWrappingChannelPiston3_Home   THEN
		bAWrappingCone123FwdCom:=FALSE; 		bA3ConeWrappOver:=TRUE;
		bA3Pushed:=TRUE;
		step1:=0;
		END_IF


END_CASE




IF bAWrapConStart OR bA3ConeWrappOverTemp THEN bAWrapFirstStart:=TRUE; ELSE bAWrapFirstStart:=FALSE; END_IF



	(*========================== Wrapping Sheet not Feeded Error==================*)

	IF bAWrappingCone123OnAuto AND  F_TRIG1.Q AND NOT bIWrappingChannelPiston1_End   AND NOT Film1Loaded THEN Film1Loaded:=TRUE;   END_IF

	IF bAWrappingCone123OnAuto AND  F_TRIG2.Q  AND NOT bIWrappingChannelPiston2_End AND NOT Film2Loaded    THEN Film2Loaded:=TRUE;  END_IF

	IF bAWrappingCone123OnAuto AND  F_TRIG3.Q  AND NOT bIWrappingChannelPiston3_End AND NOT Film3Loaded  THEN Film3Loaded:=TRUE;  END_IF


F_TRIG1(CLK:=bIWrappingFilmTensionPlate_1 , Q=> );


F_TRIG2(CLK:=bIWrappingFilmTensionPlate_2, Q=> );
(* IF R_TRIG2.Q THEN Film2Loaded:=TRUE; END_IF *)


F_TRIG3(CLK:=bIWrappingFilmTensionPlate_3 , Q=> );
  (*IF R_TRIG3.Q THEN Film3Loaded:=TRUE; END_IF *)


IF  Film1Loaded AND  Film2Loaded AND  Film3Loaded THEN bAFilmLoaded:=TRUE;   Film1Loaded:=FALSE;  Film2Loaded:=FALSE;  Film3Loaded:=FALSE;  END_IF

R_TRIG1(CLK:= bAWrappingCone123OnAuto , Q=> );

IF R_TRIG1.Q THEN Film1Loaded:=FALSE; Film2Loaded:=FALSE; Film3Loaded:=FALSE;  END_IF


IF bAWrappingCone123OnAuto THEN FlimChkDly(IN:=TRUE , PT:=t#5s , Q=> , ET=> ); ELSE FlimChkDly(IN:=FALSE);   END_IF

IF bAPolythinSheetError AND bErrorReset   THEN  bFilmErrClear:=TRUE; bAPolythinSheetError:=FALSE ; ConeMissAlarm1:=''; END_IF

(*=============== Interlock Logic for  2*3 WCS conveyor===================*)




IF bSaelUnitIntOver THEN
bSaelUnitIntOverTemp:=TRUE;
END_IF



CASE step6 OF


0:	IF bSaelUnitIntOverTemp   THEN                             (*========= need to check for reset Logic=    step6:=0    =======*)
	Step6:=Step6+1;
	END_IF

1:	bWCSStart1:=TRUE;
	bAWrapConStart:=TRUE;

	Step6:=Step6+1;

2:	IF  bASealConvEnd1 THEN
	bSaelUnitIntOverTemp:=FALSE;
	Step6:=Step6+1;
	END_IF

3:	bWCSStart2:=TRUE;
	bASealConvEnd1:=FALSE;
	Step6:=2;


END_CASE

IF NOT  bIEmergency OR  bAutoModeOff  OR bStopHmi  OR bIMCStop  THEN
bAWrappingConvStartAuto:=FALSE;
WrapConvStartDly(IN:=FALSE);
bQAWrappingConveyorMotor1:=FALSE;
bAWrappingConvStartAuto2:=FALSE;
WrapConvStartDly2(IN:=FALSE);
bQAWrappingConveyorMotor2:=FALSE;
bAConvRunning1:=FALSE;
bWrapConvStopped2:=FALSE;
bFwdPistonStartTemp:=FALSE;
bConeMiss1AtWrapConv:=FALSE;
bAWrappingConvStartAuto3:=FALSE;
WrapConvStartDly3(IN:=FALSE);
bQAWrappingConveyorMotor3:=FALSE;
bASensorMonitorBit1:=FALSE;
bWrapConvStopped3:=FALSE;
Timer1(IN:=FALSE);
bAWrapConeCyl123:=FALSE;
bConeMiss2AtWrapConv:=FALSE;
step1:=0;
step6:=0;
TON_1(IN:= FALSE);
bAWrappingCone123OnAuto:=FALSE;
bAWrappingCone123FwdCom:=FALSE;
RsChkDly(IN:=FALSE);
bA3ConeWrappOver:=FALSE;
bA3Pushed:=FALSE;
bIWrappingFilmTensionChk1:=FALSE;
bIWrappingFilmTensionChk2:=FALSE;
bIWrappingFilmTensionChk3:=FALSE;

END_IF               	 =   , Кd Ш            A йН`
    @ onйН`­   2                                                                                                          
    @            AI Є   кйи     џџџ                                             @                          ѓџ        @
                       @                                                                                                          
    @        ф хu фD   с       џџџ                                            AUTO CONE PACKING SYSYTEM @                          рџМ    	   Arial @                       @                                                                                                         
    @        фLэ9      џџџ     џџџ џџџ     #   c:\twincat\plc\visu\startbutton.jpg                    NOT Common.EverRunTimer.Q                @                 І    ѓџ        @
                        AUTO1      џџџ                                                                                                     
    @        T јT        џџџ     џџџ                                                Ї    ѓџ        @
                                               @ 
    @            d                                                                                                         
    @            c1   џџџ     џџџ                                            @                      Ј    ѓџ        @
                       @                                                                                                          
    @            c1  ххх     џџџ                               Common.EverRunTimer.Q            @                      Љ    аџ    	   Arial @$                       @                                                                                                         
    @         @ с №h       џџџ     џџџ џџџ     '   c:\twincat\plc\visu\autocone-logom1.jpg                                      @                 Њ    ѓџ        @
                               џџџ                                                                                                     
    @         аЭ!цј       џџџ     џџџ џџџ     "   c:\twincat\plc\visu\indo_logo1.bmp                                       @                 Ћ    ѓџ        @
                               џџџ                                                                                                       
    @        ш ј чSч%    џџџ     џџџ                                            by @                      Ќ    аџМџ      Monotype Corsiva @$                       @         џЊ ххх џџ   џ   џџ   џ џ џ РРР ххх с                        їїє ххх џџ   џ   џџ   џ џ џ РРР ххх                                  >   , Кю e           ALARM йН`
    @  ALйН`#   2   !                                                                                                       
    @            AS Љ   кйи     џџџ                                             @                           ѓџ        @
                       @                                                                                                          
    @        Hp п |   џЊ     џџџ                                            Cone Forwd Piston  @                          ѓџ        @
                       @                                                                                                          
    @        HH пa T   џЊ     џџџ                                            Cone Feed Piston  @                          ѓџ        @
                       @                                                                                                          
    @        H пЉ    џЊ     џџџ                                            Wrapping Piston1  @                          ѓџ        @
                       @                                                                                                          
    @        HИ пб Ф   џЊ     џџџ                                            Wrapping Piston2 @                          ѓџ        @
                       @                                                                                                          
    @        Hш пє   џЊ     џџџ                                            Wrapping Piston3 @                          ѓџ        @
                       @                                                                                                          
    @        Hп!  џЊ     џџџ                                            Sealing Top Piston @                          ѓџ        @
                       @                                                                                                          
    @        J,сE8  џЊ     џџџ                                            Sealing Bottom Piston @                          ѓџ        @
                       @                                                                                                          
    @        H`пyl  џЊ     џџџ                                            Sealing X Axis Piston @                          ѓџ        @
                       @                                                                                                          
    @        HпЁ  џЊ     џџџ                                            Sealing Y Axis Piston @                      	    ѓџ        @
                       @                                                                                                           
    @        ш@ бa мP   џџџ     џ                                          .HMIFeedPiston   %s @                      
    №џМ    	   Arial @                       @                                                                                                           
    @        шр бм№   џџџ     џџџ                                        .HMIWrapPiston3   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        шИ бй мШ   џџџ     џџџ                                        .HMIWrapPiston2   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        шб)м  џџџ     џџџ                                        .HMISealTopPiston   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        шXбyмh  џџџ     џџџ                                        .HmiXAxisPiston   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        ш0бQм@  џџџ     џџџ                                        .HMISealBotPiston   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        шбЁм  џџџ     џџџ                                        .HmiYAxisPiston   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        ш бБ м    џџџ     џџџ                                        .HMIWrapPiston1   %s @                          №џМ    	   Arial @                       @                                                                                                           
    @        шh б мx   џџџ     џџџ                                        .HMIForwdPiston   %s @                          №џМ    	   Arial @                       @                                                                                                         
    @        >цІТ    @                .bErrorReset   RESET @џџџ     ммм     џ       @џ       хџМ    	   Arial @        .bErrorReset             @                                                                                                             
    @        HАпЩМ  џЊ     џџџ                                            Wrapp Sheet  @                          ѓџ        @
                       @                                                                                                           
    @        шЈбЩмИ  џџџ     џџџ                                        ConeMissAlarm1   %s @                          №џМ    	   Arial @                       @                                                                                                          
    @        Hипёф  џЊ     џџџ                                            Sealed Cone Miss @                          ѓџ        @
                       @                                                                                                           
    @        шабёмр  џџџ     џџџ                                        .AlarmMessg   %s @                          №џМ    	   Arial @                       @                                                                                                          
    @        H п  џЊ     џџџ                                            Cone Align  @                          ѓџ        @
                       @                                                                                                           
    @        шјбм  џџџ     џџџ                                        .ConeMissAlarm   %s @                          №џМ    	   Arial @                       @                                                                                                          
    @        ЈчщzШ  џ   јZ  џ@                                            HOME @                          ьџМ       Courier @                      @    AUTO1                                                                                                     
    @          A9  $   џ@     џџџ                                         
   ALARMS @                          уџX       Lucida Bright @                       @                                                                                                           
    @        ъ&гGо6  џџџ     џџџ                                        WrapConeSenDetMes   %s @                          №џМ    	   Arial @                       @                                                                                                          
    @        J0сI<  џЊ     џџџ                                            Wrapping Cone @                          ѓџ        @
                       @                                                                                                           
    @        ъNгoо^  џџџ     џџџ                                        SGrossWtNokMsg   %s @                           №џМ    	   Arial @                       @                                                                                                          
    @        JXсqd  џЊ     џџџ                                            Gross Weight @                      !    ѓџ        @
                       @                                                                                                          
    @        &ЈџщШ  џ   јZ  џ@                                            NEXT @                      "    ьџМ       Courier @                      @    ALARM_2    џЊ ххх џџ   џ   џџ   џ џ џ РРР ххх с                                 ?   , сD,А           ALARM_2 йН`
    @  PaйН`E   2                                                                                                           
    @          іџУaЧ   ппп     џџџ                                             @                      $    ѓџ        @
                       @                                                                                                         
    @        ю>Nv \    @                .bErrorReset   RESET @ШШШ     ммм             @    8    эџМ    	   Arial @        .bErrorReset             @                                                                                                             
    @        ж>q:W  џ   јZ  џ@                                            HOME @                      ?    ьџМ       Courier @                      @    AUTO1                                                                                                     
    @        &( gQ Ц<   џ@     џџџ                                         
   ALARMS @                      D    уџX       Lucida Bright @                       @                                                                                                          
    @         >Н сЉ   џџџ     џџџ                                            Cone Forwd Piston  @                      %    ѓџ        @
                       @                                                                                                          
    @        f > сy   џџџ     џџџ                                            Cone Feed Piston:  @                      &    ѓџ        @
                       @                                                                                                          
    @        Ъ >№ см   џџџ     џџџ                                            Wrapping Piston1  @                      '    ѓџ        @
                       @                                                                                                          
    @        § >#с  џџџ     џџџ                                            Wrapping Piston2 @                      (    ѓџ        @
                       @                                                                                                          
    @        0>VсB  џџџ     џџџ                                            Wrapping Piston3 @                      )    ѓџ        @
                       @                                                                                                          
    @        c>сu  џџџ     џџџ                                            Sealing Top Piston @                      *    ѓџ        @
                       @                                                                                                          
    @        >Сс­  џџџ     џџџ                                            Sealing Bottom Piston @                      +    ѓџ        @
                       @                                                                                                          
    @        Э>єср  џџџ     џџџ                                            Sealing X Axis Piston @                      ,    ѓџ        @
                       @                                                                                                          
    @        ќ>"с  џџџ     џџџ                                            Sealing Y Axis Piston @                      -    ѓџ        @
                       @                                                                                                           
    @        Bd  ${   џџџ     џ                                          .HMIFeedPiston   %s @                      .    №џМ    	   Arial @                       @                                                                                                           
    @        B+V$@  џџџ     џџџ                                        .HMIWrapPiston3   %s @                      /    №џМ    	   Arial @                       @                                                                                                           
    @        Bј #$  џџџ     џџџ                                        .HMIWrapPiston2   %s @                      0    №џМ    	   Arial @                       @                                                                                                           
    @        B^$s  џџџ     џџџ                                        .HMISealTopPiston   %s @                      1    №џМ    	   Arial @                       @                                                                                                           
    @        BЩє$о  џџџ     џџџ                                        .HmiXAxisPiston   %s @                      2    №џМ    	   Arial @                       @                                                                                                           
    @        BС$Ћ  џџџ     џџџ                                        .HMISealBotPiston   %s @                      3    №џМ    	   Arial @                       @                                                                                                           
    @        Bї"$  џџџ     џџџ                                        .HmiYAxisPiston   %s @                      4    №џМ    	   Arial @                       @                                                                                                           
    @        BХ № $к   џџџ     џџџ                                        .HMIWrapPiston1   %s @                      5    №џМ    	   Arial @                       @                                                                                                           
    @        B С $Ќ   џџџ     џџџ                                        .HMIForwdPiston   %s @                      6    №џМ    	   Arial @                       @                                                                                                          
    @        />UсB  џџџ     џџџ                                            Wrapp. Cone Missed @                      9    ѓџ        @
                       @                                                                                                           
    @        I*uU_@  џџџ     џџџ                                        .ConeMissAlarm   %s @                      :    №џМ    	   Arial @                       @                                                                                                          
    @        ]>сp  џџџ     џџџ                                            Seal. Cone Miss @                      ;    ѓџ        @
                       @                                                                                                           
    @        I]u_s  џџџ     џџџ                                        .AlarmMessg   %s @                      <    №џМ    	   Arial @                       @                                                                                                          
    @        >ЖсЃ  џџџ     џџџ                                            Cone Missed @                      =    ѓџ        @
                       @                                                                                                           
    @        IuЛ_І  џџџ     џџџ                                        .ConeMissAlarm   %s @                      >    №џМ    	   Arial @                       @                                                                                                          
    @        Ш>юсл  џџџ     џџџ                                            Initialise Error @                      @    ѓџ        @
                       @                                                                                                           
    @        IШuѓ_н  џџџ     џџџ                                        sMessage   %s @                      A    №џМ    	   Arial @                       @                                                                                                          
    @         >&с  џџџ     џџџ                                            GrossWt End Sensor @                      B    ѓџ        @
                       @                                                                                                           
    @        I u+_  џџџ     џџџ                                        SGrossWtCylEndSenErrMsg   %s @                      C    №џМ    	   Arial @                       @         їїє ххх џџ   џ   џџ   џ џ џ РРР ххх                                  @   , си ,D           AUTO1 йН`
    @ щйН`л   2   2                                                                                                       
    @            УЃaб   ппп     џџџ                                             @                      K    ѓџ        @
                       @                                                                                                          
    @        *
 GG 8(    кйи џ џџџ                                           AUTO CONE PACKING SYSTEM @                      "    уџ       Arial Rounded MT Bold @                       @                                                                                                          
    @        жЈб:М  џ   јZ  џ@                                            DIAGNOSTICS @                      I    ьџМ       Courier @                      @    DIAGNOSTICS                                                                                                     
    @         Јч б М  џ   јZ  џ@                                            HOME @                      J    ьџМ       Courier @                      @    AUTO1                                       NOT bIKeySwitch                                                             
    @        hі щЈ
  џџџ     џ                                          rSealCompDlyHmi   %0.02f Sec @                          №џМ    	   Arial @                      @                                                                                                          
    @        ЎЊwгО  џ   јZ  џ@                                            ACTIVE ALARMS @                          ьџМ       Courier @                      @    ALARM                                                                                                     
    @        FCЊ.  џџџ     џџџ                                            Machine Status @                          эџМ    	   Arial @                       @                                                                                                          
    @        WKК.  џ@     џџџ                                         sAMcModeStatus   %s @                           эџМ    	   Arial @                       @                                                                                                          
    @        FbЊv  џџџ     џџџ                                            Alarm Status @                      Ё    эџМ    	   Arial @                       @                                                                                                          
    @        ZWКv  џ@     џџџ                                        sAlarmStatus   %s @                      Ђ    №џМ    	   Arial @                       @                                            NOT bIKeySwitch                                                             
    @        t&ѕOД:  џџџ     џ                                          rRetUnitAWeight
   %0.02f @                      Ѓ    №џМ    	   Arial @                       @                                            NOT bIKeySwitch                                                             
    @        pXёАl  џџџ     џ                                          rRetUnitBWeight
   %0.02f @                      Ѕ    №џМ    	   Arial @                       @                                                                                                          
    @        6 J ws ж ^   џ@     џџџ                                            MODEL SELECTION @                      Ј    уџX       Lucida Bright @                       @                                           NOT bIKeySwitch                                                              
    @        n | ?Н ж            џ      џџџ                            .b12ConeModelSelected        12 CONE TYPE @                      Љ    шџМ       Arial Narrow @        .b12ConeModelHmi             @                                           not bIKeySwitch                                                              
    @        n ?]ж <          џ      џџџ                            .b18ConeModelSelected        18 CONE TYPE @                      Њ    шџМ       Arial Narrow @        .b18ConeModelHmi             @                                           not bIKeySwitch                                                              
    @        n h?Љж           џ      џџџ                            .b24ConeModelSelected        24 CONE TYPE @                      Ћ    шџМ       Arial Narrow @        .b24ConeModelHmi             @                                           NOT bIKeySwitch                                                              
    @        n М?§ж м          џ      џџџ                            .b32ConeModelSelected        32 CONE TYPE @                      Ќ    шџМ       Arial Narrow @        .b32ConeModelHmi             @                                                                                                          
    @        &YOј:  џ@     џџџ                                            UnitA Weight @                      ­    ыџX       Lucida Bright @                       @                                                                                                          
    @        XYјl  џ@     џџџ                                            UnitB Weight @                      Џ    ыџX       Lucida Bright @                       @                                                                                                          
    @        і Yј
  џ@     џџџ                                            SEALING DELAY @                      А    ыџX       Lucida Bright @                       @                                                                                                          
    @        цJ Џs J^   џ@     џџџ                                            SETTING @                      В    уџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                        1   9999
    @        h щЏ Ј   џџџ     џ                                       	   iNetWtHmi   %0.02f Kgs @                      Г    №џМ    	   Arial @                      @                                                                                                          
    @         YЏ ј   џ@     џџџ                                            NET WEIGHT @                      Д    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                        0.001   0.999
    @        hО щч Јв   џџџ     џ                                       
   iNetTolHmi   %0.03f Gms @                      Е    №џМ    	   Arial @                      @                                                                                                          
    @        О Yч јв   џ@     џџџ                                            NET TOLERANCE @                      Ж    ыџX       Lucida Bright @                       @                                                                                                          
    @        ЖєзF  џ@     џџџ                                            ACTUAL WEIGHT @                      З    уџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        h.щWЈB  џ        џ                                     NegToleranceEnabled    
   Enable @                      Т    №џМ    	   Arial @        bNegTolEnableHMI             @                                            NOT bIKeySwitch                                                             
    @        №.qW0B  џ        џ                                     NOT NegToleranceEnabled       Disable @                      У    №џМ    	   Arial @        bNegTolDisableHMI             @                                                                                                          
    @        6Y_јJ  џ@     џџџ                                            NEG TOLERANCE @                      С    ыџX       Lucida Bright @                       @                                                                                                          
    @        Ш Rѓ k  џџџ     џџџ                                        UnitBConeCountHMI   %d @                      Ц    ѓџ        @
                       @                                                                                                          
    @        Ш #Iѕ /  џџџ     џџџ                                        UnitAConeCountHMI   %d @                      Ч    ѓџ        @
                       @                                                                                                           
    @        ( К Dq -  џ       џџџ                                            Retrival A  Count @                      Ш    ѓџ        @
                       @                                                                                                           
    @        ( RК q i  џ       џџџ                                            Retrival B Count @                      Щ    ѓџ        @
                       @                                                                                                         
    @        ЎJ _ю        џџџ     џџџ                                                џџџџ ѓџ        @
                                               @ 
    @            d                                                                                                         
    @          
 БЄи ж   РРР     џџџ                                             @                      К    ѓџ        @
                       @                                                                                                          
    @         0-jз M          џ      џџџ                            bStopHmi       STOP @                      Л    ѓџМ    	   Arial @
        bStopHmi             @                                                                                                          
    @         н -в љ          РРР     џџџ                         
   bAPauseSeq    
   RESUME @                      М    ѓџМ    	   Arial @
     
   bResumeHmi             @                                                                                                          
    @          -Ы в Ў           џ@     џџџ                         
   bAPauseSeq    	   PAUSE @                      Н    ѓџМ    	   Arial @
     	   bPauseHmi             @                                                                                                          
    @         F - з b           џ@     џџџ                            bAInitializeSeq       INITIALIZE @                      О    ѓџМ    	   Arial @
        bInitializeHmi             @                                                                                                          
    @        8   y& и    џ@     џџџ                                            OPERATIONS @                      П    уџX       Lucida Bright @                       @             џ   џџ   џ   џџ   џ џ џ РРР                                                               NOT bIKeySwitch                                                              
    @        n Ь ?ж ь           џ      џџџ                            .b16ConeModelSelected        16 CONE TYPE @                      Ъ    шџМ       Arial Narrow @        .b16ConeModelHmi             @                                            NOT bIKeySwitch                                                             
    @        jrыЊ  џџџ     џ                                       	   iLotNoHmi   %s @                      Э    №џМ    	   Arial @                      @                                                                                                          
    @        rYј  џ@     џџџ                                         
   LOT NO @                      Ю    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                        1   999
    @        ~МџхОа  џџџ     џ                                          sGrosswt
   %0.02f @                      Я    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                        1   999
    @        ~юџО  џџџ     џ                                          rGrossWeight
   %0.02f @                      а    №џМ    	   Arial @                      @                                                                                                          
    @        Мcхѓа  џ@     џџџ                                            Set Gross Weight @                      б    ыџX       Lucida Bright @                       @                                                                                                          
    @        юcѓ  џ@     џџџ                                            Actual Gross Weight @                      в    ыџX       Lucida Bright @                       @                                                                                                          
    @        РсГL  џ@     џџџ                                            GROSS WEIGHT @                      г    уџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                        0.001   0.999
    @        ~ џIО4  џџџ     џ                                       	   sGrossTol
   %0.03f @                      е    №џМ    	   Arial @                      @                                                                                                          
    @         cIѓ4  џ@     џџџ                                            Tol Gross Weight @                      ж    ыџX       Lucida Bright @                       @                                                                                                          
    @        ЊYгјО  џ@     џџџ                                            WORK ORD NO @                      з    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        jЊыгЊО  џџџ     џ                                          iWorkOrderNoHmi   %s @                      и    №џМ    	   Arial @                      @                                                                                                          
    @        њ ЈУб^М  џ   јZ  џ@                                            PARAMETERS @                      й    ьџМ       Courier @                      @ 
   PARAMETERS                                                                                                     
    @        ^ю'Т  џ   јZ  џ@                                            OVERVIEW @                      к    ьџМ       Courier @                      @    OVERVIEW                                                                                                     
    @        ^?ВІ  џџ      џџџ     џ                           NOT bEmPopUp           Emergency Pressed @                      Р    аџМ    	   Arial @$                       @                                                                                                          
    @        6ТпѓZ  џџ      џџџ     џ                           NOT bPrssurePopUp           Supply Pressure Low @                      Х    аџМ    	   Arial @$                       @         їїє ххх џџ   џ   џџ   џ џ џ РРР ххх                                  A   , Q.є           DIAGNOSTICS йН`
    @ хйН`u   2   !                                                                                                       
    @        јџјџAџћ   кйи     џџџ                                             @                      t    ѓџ        @
                       @                                                                                                          
    @        "U эЎ  џџ     џџџ                                             @                      H    ѓџ        @
                       @                                                                                                          
    @        F Цo %Z   џ@     џџџ                                            DIAGNOSTICS @                      I    уџX       Lucida Bright @                       @                                                                                                          
    @        ЇЦ яук  џ   јZ  џ@                                            HOME @                      K    ьџМ       Courier @                      @    AUTO1                                                                                                     
    @        пЦXяк  џ   јZ  џ@                                            NEXT @                      M    ьџМ       Courier @                      @    DIAGNOSTICS_1                                                                                                     
    @        SТ hз ]Ь   џ    џ   џ                                     .bIUnitA_RowStopperEnd        @                      S    ѓџ        @
                       @                                                                                                          
    @        S
h]  џ        џ                                     .bIUnitB_RowStopperEnd        @                      T    ѓџ        @
                       @                                                                                                          
    @        Т &з Ь   џ        џ                                     .bIUnitA_RowStopperHome        @                      U    ѓџ        @
                       @                                                                                                          
    @        
&  џ        џ                                     .bIUnitB_RowStopperHome        @                      V    ѓџ        @
                       @                                                                                                          
    @        \&qf  џ        џ                                     .bQFeedingConveyorMotor        @                      W    ѓџ        @
                       @                                                                                                          
    @        НИ Jы Ь           џ      џџџ                            .bUA_RowStopperMotorFwdOnHmi       FWD @                      X    №џМ    	   Arial @        .bUA_RowStopperMotorFwdOnHmi             @                                                                                                          
    @        {И ы Сб           џ      џџџ                            .bUA_RowStopperMotorRevOnHmi       REV @                      Y    №џМ    	   Arial @        .bUA_RowStopperMotorRevOnHmi             @                                                                                                          
    @        Н J3          џ      џџџ                            .bUB_RowStopperMotorFwdOnHmi       FWD @                      Z    №џМ    	   Arial @        .bUB_RowStopperMotorFwdOnHmi             @                                                                                                          
    @        НHJ{a          џ      џџџ                            bFCMotorOnHmi       ON @                      [    №џМ    	   Arial @        bFCMotorOnHmi             @                                                                                                          
    @        { 3С          џ      џџџ                            .bUB_RowStopperMotorRevOnHmi       REV @                      \    №џМ    	   Arial @        .bUB_RowStopperMotorRevOnHmi             @                                                                                                          
    @        {H{Сa          џ      џџџ                            bFCMotorOffHmi       OFF @                      ]    №џМ    	   Arial @        bFCMotorOffHmi             @                                                                                                          
    @        ѕТ Ўс Qб    јZ     џџџ     џџџ                                    UNITA ROW STOPPER @                      ^    №џМ       Courier @                       @                                                                                                          
    @        ѕ
Ў)Q   јZ     џџџ     џџџ                                    UNITB ROW STOPPER @                      _    №џМ       Courier @                       @                                                                                                          
    @        ѕRЎqQa   јZ     џџџ     џџџ                                    CONE FEED CONVEYOR @                      `    №џМ       Courier @                       @                                                                                                          
    @        Uj­aЄ  џ        џ                                     .bIConeFeedingPistonEnd        @                      c    ѓџ        @
                       @                                                                                                          
    @        *­Є  џ        џ                                     .bIConeFeedingPistonHome        @                      d    ѓџ        @
                       @                                                                                                          
    @        НJУЉ          џ      џџџ                            .bCFPistonOnHmi       FWD @                      g    №џМ    	   Arial @        .bCFPistonOnHmi             @                                                                                                          
    @        }
УХЉ          џ      џџџ                            .bCFPistonOffHmi       REV @                      h    №џМ    	   Arial @        .bCFPistonOffHmi             @                                                                                                          
    @        ѕЎЗQЇ   јZ     џџџ     џџџ                                    CONE FEED CYL @                      j    №џМ       Courier @                       @                                                                                                          
    @        &%;0  џ        џ                                     .bQMWrappingConveyorMotor        @                      k    ѓџ        @
                       @                                                                                                          
    @        МIJ5          џ      џџџ                            .bWCMotorOnHmi       ON @                      l    №џМ    	   Arial @        .bWCMotorOnHmi             @                                                                                                          
    @        zJР0          џ      џџџ                            .bWCMotorOffHmi       OFF @                      m    №џМ    	   Arial @        .bWCMotorOffHmi             @                                                                                                          
    @        є&­EP5   јZ     џџџ     џџџ                                    WRAPPING CONVEYOR @                      n    №џМ       Courier @                       @                                                                                                          
    @        єр­џPя   јZ     џџџ     џџџ                                    FORWARD CYL @                      o    №џМ       Courier @                       @                                                                                                          
    @        МбIъ          џ      џџџ                            .bFPValveOnHmi       FWD @                      p    №џМ    	   Arial @        .bFPValveOnHmi             @                                                                                                          
    @        zбРъ          џ      џџџ                            .bFPValveOffHmi       REV @                      q    №џМ    	   Arial @        .bFPValveOffHmi             @                                                                                                          
    @        Rрgѕ\ъ  џ        џ                                     .bIForwardPistonEnd        @                      r    ѓџ        @
                       @                                                                                                          
    @        р*ѕъ  џ        џ                                     .bIForwardPistonHome        @                      s    ѓџ        @
                       @         їїє ххх џџ   џ   џџ   џ џ џ РРР ххх                                  B   , Q,.           DIAGNOSTICS_1 йН`
    @ щйН`   2   '                                                                                                       
    @            U*Т   кйи     џџџ                                             @                          ѓџ        @
                       @                                                                                                          
    @        ` йЙѓ  џџ     џџџ                                             @                      S    ѓџ        @
                       @                                                                                                          
    @        `P Ёy  d   џ@     џџџ                                            DIAGNOSTICS @                      T    уџX       Lucida Bright @                       @                                                                                                          
    @        ШёЪм  џ   јZ  џ@                                            HOME @                      Z    ьџМ       Courier @                      @    AUTO1                                                                                                     
    @        ўШwё:м  џ   јZ  џ@                                            BACK @                      [    ьџМ       Courier @                      @    DIAGNOSTICS                                                                                                     
    @        $Њ 9П .Д   џџџ     џџџ                                             @                      p    ѓџ        @
                       @                                                                                                          
    @        $ќ 9.  џџџ     џџџ                                             @                      q    ѓџ        @
                       @                                                                                                          
    @        $:9O.D  џџџ     џџџ                                             @                      r    ѓџ        @
                       @                                                                                                          
    @        $9.  џџџ     џџџ                                             @                      s    ѓџ        @
                       @                                                                                                          
    @        Њ 3П (Д   џџџ     џџџ                                             @                      t    ѓџ        @
                       @                                                                                                          
    @        ђ 3(ќ   џџџ     џџџ                                             @                      u    ѓџ        @
                       @                                                                                                          
    @        :3O(D  џџџ     џџџ                                             @                      v    ѓџ        @
                       @                                                                                                          
    @        3(  џџџ     џџџ                                             @                      w    ѓџ        @
                       @                                                                                                          
    @        .ЪCп8д  џџџ     џџџ                                             @                      x    ѓџ        @
                       @                                                                                                          
    @        Ъ3п(д  џџџ     џџџ                                             @                      y    ѓџ        @
                       @                                                                                                          
    @          г дЙ           џ      џџџ                            .bWrappingCPV1OnHmi       FWD @                      z    №џМ    	   Arial @        .bWrappingCPV1OnHmi             @                                                                                                          
    @        ш д          џ      џџџ                            .bWrappingCPV2OnHmi       FWD @                      {    №џМ    	   Arial @        .bWrappingCPV2OnHmi             @                                                                                                          
    @        ~ш Щ          џ      џџџ                            .bWrappingCPV2OffHmi       REV @                      |    №џМ    	   Arial @        .bWrappingCPV2OffHmi             @                                                                                                          
    @        0cдI          џ      џџџ                            .bWrappingCPV3OnHmi       FWD @                      }    №џМ    	   Arial @        .bWrappingCPV3OnHmi             @                                                                                                          
    @        ~0cЩI          џ      џџџ                            .bWrappingCPV3OffHmi       REV @                      ~    №џМ    	   Arial @        .bWrappingCPV3OffHmi             @                                                                                                          
    @        xЋд          џ      џџџ                            .bSealingTopPVOnHmi       DOWN @                          №џМ    	   Arial @        .bSealingTopPVOnHmi             @                                                                                                          
    @        ~xЋЩ          џ      џџџ                            bSealingTopPVOffHmi       UP @                          №џМ    	   Arial @        bSealingTopPVOffHmi             @                                                                                                          
    @        Рѓжи          џ      џџџ                            bSSXAxisPistonValveOnHmi       FWD @                          №џМ    	   Arial @        bSSXAxisPistonValveOnHmi             @                                                                                                          
    @        ~РѓЩй          џ      џџџ                            bSSXAxisPistonValveOffHmi       REV @                          №џМ    	   Arial @        bSSXAxisPistonValveOffHmi             @                                                                                                          
    @        ЦЊ {Щ  Й    јZ     џџџ     џџџ                                    WRAPPING CYL 1 @                          №џМ       Courier @                       @                                                                                                          
    @        Цђ {    јZ     џџџ     џџџ                                    WRAPPING CYL 2 @                          №џМ       Courier @                       @                                                                                                          
    @        Ц:{Y I   јZ     џџџ     џџџ                                    WRAPPING CYL 3 @                          №џМ       Courier @                       @                                                                                                          
    @        Ц{Ё    јZ     џџџ     џџџ                                    SEAL TOP CYL @                          №џМ       Courier @                       @                                                                                                          
    @        ЦЪ{щ й   јZ     џџџ     џџџ                                    SEALING SEP X @                          №џМ       Courier @                       @                                                                                                          
    @        ~  г ЩЙ           џ      џџџ                            .bWrappingCPV1OffHmi       REV @                          №џМ    	   Arial @        .bWrappingCPV1OffHmi             @                                                                                                          
    @        X3m(b  џ        џ                                     .bQMWrappingConveyorMotor        @                          ѓџ        @
                       @                                                                                                          
    @        Pдn          џ      џџџ                            bSCMotorOnHmi       ON @                          №џМ    	   Arial @        bSCMotorOnHmi             @                                                                                                          
    @        ~PЪi          џ      џџџ                            bSCMotorOffHmi       OFF @                          №џМ    	   Arial @        bSCMotorOffHmi             @                                                                                                          
    @        ЦZ{y i   јZ     џџџ     џџџ                                    SEALING CONVEYOR @                          №џМ       Courier @                       @                                                                                                          
    @        .C'8  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                          
    @        3'(  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                          
    @        ;д!          џ      џџџ                            bSSYAxisPistonValveOnHmi       UP @                          №џМ    	   Arial @        bSSYAxisPistonValveOnHmi             @                                                                                                          
    @        ~;Щ!          џ      џџџ                            bSSYAxisPistonValveOffHmi       DOWN @                          №џМ    	   Arial @        bSSYAxisPistonValveOffHmi             @                                                                                                          
    @        Ц{1 !   јZ     џџџ     џџџ                                    SEALING SEP Y @                          №џМ       Courier @                       @         їїє ххх џџ   џ   џџ   џ џ џ РРР ххх                                    , d d Ъ$           OVERVIEW йН`
    @№'йН`Э      o                                                                                                       
    @            УЃaб   ппп     џџџ                                             @                           ѓџ        @
                       @                                                                                                           
    @        4реў  џџџ     џџџ                                             @                      ­    ѓџ        @
                       @                                                                                                           
    @        rFЎё  џџџ     џџџ                                             @                      Ј    ѓџ        @
                       @                                                                                                           
    @        "F^ё@  џџџ     џџџ                                             @                      Ѕ    ѓџ        @
                       @                                                                                                           
    @        4>Iп?  џџџ      џ                                    bQWrappingChannelPistonValve2        @                      M    ѓџ        @
                       @                                                                                                           
    @        "Љ_Ѓ@  џ        џ                                             @                      І    ѓџ        @
                       @                                                                                                           
    @        >"I_C@  џ        џ                                    bIWrappingChannelPiston2_Home        @                      Ї    ѓџ        @
                       @                                                                                                           
    @        в Fё№   џџџ     џџџ                                             @                      L    ѓџ        @
                       @                                                                                                           
    @         јЧГ   џ        џ                                    bIUnitA_RowStopperHome        @                      p    ѓџ        @
                       @                                                                                                           
    @        ІЅЩЕЗ­  џ        џ                                    bIUnitA_RowStopperMiddle        @                      q    ѓџ        @
                       @                                                                                                           
    @        ІjЩzЗr  џ        џ                                    bIUnitA_RowStopperEnd        @                      r    ѓџ        @
                       @                                                                                                           
    @        zjzr  џ        џ                                    bIUnitB_RowStopperEnd        @                      "    ѓџ        @
                       @                                                                                                           
    @        zѓћ  џ        џ                                    bIUnitB_RowStopperHome        @                      o    ѓџ        @
                       @                                                                                                           
    @        zЅЕ­  џ        џ                                    bIUnitB_RowStopperMiddle        @                      n    ѓџ        @
                       @                                                                                                          
    @        :Њ ]\  @@      џ                                    bQWrappingConveyorMotor        @                      9    ѓџ        @
                       @                                                                                                           
    @        }С3Ъњ  џџ     џџџ                                             @                      6    ѓџ        @
                       @                                                                                                           
    @        ѓгtў  џџџ      џ                                    bQForwardPistonValve        @                      5    ѓџ        @
                       @                                                                                                          
    @        Ј&ё]LB  @@      џ                                    bQFeedingConveyorMotor        @                      #    ѓџ        @
                       @                                                                                                           
    @        _mИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        ЏnИГИ  џџџ     џџџ                                             @                      	    ѓџ        @
                       @                                                                                                           
    @        рnщфИ  џџџ     џџџ                                             @                      
    ѓџ        @
                       @                                                                                                           
    @        nИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        CnLGИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @         јърггјј  џ        џ                           @                        bQUnitBRowStopperMotorRev    ѓџ        @
                                                                                                                               
    @         јрјn  џ        џ                           @                        bQUnitBRowStopperMotorFwd    ѓџ        @
                                                                                                                               
    @        з_ЎBИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        №nјєИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        !n*%И  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        Sn\VИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        nИ  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @         =э$еVе==  џ        џ                           @                        bQUnitARowStopperMotorRev    ѓџ        @
                                                                                                                               
    @         =$V=j  џ        џ                           @                        bQUnitARowStopperMotorFwd    ѓџ        @
                                                                NOT bIKeySwitch                                                             
    @        5I$  џџџ     џ                                          rRetUnitAWeight   %0.02f Kgs @                      $    №џМ    	   Arial @                       @                                            NOT bIKeySwitch                                                             
    @        д>5$  џџџ     џ                                          rRetUnitBWeight   %0.02f Kgs @                      %    №џМ    	   Arial @                       @                                                                                                           
    @        Ј(БWЌ@  џ        џ                                    bIConeOrientationTop        @                      .    ѓџ        @
                       @                                                                                                           
    @        d!nHh4  џ        џ                                    bIUnitBConeCrossing        @                      /    ѓџ        @
                       @                                                                                                           
    @        !ІHЁ4  џ        џ                                    bIUnitAConeCrossing        @                      1    ѓџ        @
                       @                                                                                                           
    @        Цvфф­  џџџ     џџџ                                             @                      2    ѓџ        @
                       @                                                                                                           
    @        кXъфт  џџџ      џ                                    bQConeFeedingPistonValve        @                      3    ѓџ        @
                       @                                                                                                           
    @        >п  џџџ     џџџ                                    bQWrappingChannelPistonValve1        @                      =    ѓџ        @
                       @                                                                                                           
    @        ц >ћ пё   џџџ      џ                                    bQWrappingChannelPistonValve3        @                      I    ѓџ        @
                       @                                                                                                           
    @        JО ;ЫТD  џџ     џџџ                                             @                      P    ѓџ        @
                       @                                                                                                           
    @        Ю А Ї6  џџџ     џџџ                                    bQSealingBottomPistonValve        @                      Q    ѓџ        @
                       @                                                                                                           
    @        sЮ  |6  џџџ     џџџ                                 "   bQSealingSeparatorXAxisPistonValve        @                      T    ѓџ        @
                       @                                                                                                           
    @        ЩЮ м б6  џџџ     џџџ                                    bQSealingTopPistonValve        @                      W    ѓџ        @
                       @                                                                                                           
    @        єв Ѕ§;  џџџ     џџџ                                 "   bQSealingSeparatorYAxisPistonValve        @                      Z    ѓџ        @
                       @                                                                                                          
    @        F Iї&  @@      џ                                    bQSealingConveyorMotorFWD        @                      ]    ѓџ        @
                       @                                                                                                           
    @        b L ќ О Џ    @@      џ                                    bQGross_Cylinder_On        @                      ^    ѓџ        @
                       @                                                                                                           
    @        Р L Щ О Ф    џ        џ                                    bQGross_Roller_On        @                      _    ѓџ        @
                       @                                                                                                           
    @        й L у О о    џ        џ                                    bQGross_Roller_On        @                      `    ѓџ        @
                       @                                                                                                           
    @        І L А О Њ    џ        џ                                    bQGross_Roller_On        @                      a    ѓџ        @
                       @                                                                                                           
    @         L  О     џ        џ                                    bQGross_Roller_On        @                      b    ѓџ        @
                       @                                                                                                           
    @        s L | О w    џ        џ                                    bQGross_Roller_On        @                      c    ѓџ        @
                       @                                                                                                           
    @        Z М  џџџ      џ                                    bQFilmRollerMotor1        @                      d    ѓџ        @
                       @                                                                                                           
    @        Zщ  њ Мђ   џџџ      џ                                    bQFilmRollerMotor3        @                      f    ѓџ        @
                       @                                                                                                           
    @        Z6 IМ?  џџџ      џ                                    bQFilmRollerMotor2        @                      h    ѓџ        @
                       @                                                                                                          
    @        $%/0)*  џџџ      џ                                    bIUnitAConeDetection3        @                      t    ѓџ        @
                       @                                                                                                          
    @        S%]0W*  џџџ      џ                                    bIUnitAConeDetection2        @                      u    ѓџ        @
                       @                                                                                                          
    @        %0V  џџџ      џ                                    bIUnitAConeDetection1        @                      v    ѓџ        @
                       @                                                                                                          
    @        і% 0ћ*  џџџ      џ                                    bIUnitAConeDetection4        @                      x    ѓџ        @
                       @                                                                                                          
    @        ы%ѕ0я*  џџџ      џ                                    bIUnitBConeDetection3        @                      y    ѓџ        @
                       @                                                                                                          
    @        %#0*  џџџ      џ                                    bIUnitBConeDetection2        @                      z    ѓџ        @
                       @                                                                                                          
    @        G%Q0cV  џџџ      џ                                    bIUnitBConeDetection1        @                      {    ѓџ        @
                       @                                                                                                          
    @        М%Ч0С*  џџџ      џ                                    bIUnitBConeDetection4        @                      |    ѓџ        @
                       @                                                                                                          
    @        pь zї uё   џџџ      џ                                    bIWrappingCone3        @                          ѓџ        @
                       @                                                                                                          
    @        p:zEu?  џџџ      џ                                    bIWrappingCone2        @                          ѓџ        @
                       @                                                                                                          
    @        lvq  џџџ      џ                                    bIWrappingCone1        @                          ѓџ        @
                       @                                                                                                          
    @        Х %Я Х   џџџ      џ                                    bIConeCountSensor        @                          ѓџ        @
                       @                                                                                                          
    @        О Ш У   џџџ      џ                                    bISealingSeparatorYAxisEnd        @                          ѓџ        @
                       @                                                                                                          
    @        |О Ш У   џџџ      џ                                    bISealingSeparatorXAxisEnd        @                          ѓџ        @
                       @                                                                                                          
    @        мО цШ рУ   џџџ      џ                                    bISealingTopPistonEnd        @                          ѓџ        @
                       @                                                                                                          
    @        ЎО ИШ ВУ   џџџ      џ                                    bISealingBottomPistonEnd        @                          ѓџ        @
                       @                                                                                                          
    @        Z Z d e ^ _   џџџ      џ                                    bIGross_Cyl_Home        @                          ѓџ        @
                       @                                                                                                          
    @        Z Њ d Е ^ Џ   џџџ      џ                                    bIGross_Cyl_End        @                          ѓџ        @
                       @                                                                                                          
    @        Р е5Ъ*  џ        џ                                    bQUnitBWeightOkLamp        @                          ѓџ        @
                       @                                                                                                          
    @          5
*  џ        џ                                    bQUnitAWeightOkLamp        @                          ѓџ        @
                       @                                                                                                           
    @        в ЉЃ№   џ        џ                                             @                          ѓџ        @
                       @                                                                                                           
    @        >в IC№   џ        џ                                    bIWrappingChannelPiston3_Home        @                      Ё    ѓџ        @
                       @                                                                                                           
    @        rЉЏЃ  џ        џ                                             @                      Љ    ѓџ        @
                       @                                                                                                           
    @        >rIЏC  џ        џ                                    bIWrappingChannelPiston1_Home        @                      Њ    ѓџ        @
                       @                                                                                                           
    @        Цvф{  џ        џ                                    bIConeFeedingPistonEnd        @                      Ћ    ѓџ        @
                       @                                                                                                           
    @        Цкхфп  џ        џ                                    bIConeFeedingPistonHome        @                      Ќ    ѓџ        @
                       @                                                                                                           
    @        4р?9ў  џ        џ                                             @                      Ў    ѓџ        @
                       @                                                                                                           
    @        ЪреЯў  џ        џ                                    bIForwardPistonHome        @                      Џ    ѓџ        @
                       @                                                                                                          
    @        §ЄЏЉ  џџџ      џ                                    bISealingSeparatorYAxisHome        @                      Б    ѓџ        @
                       @                                                                                                          
    @        |ЄЏЉ  џџџ      џ                                    bISealingSeparatorXAxisHome        @                      В    ѓџ        @
                       @                                                                                                          
    @        иЄуЏнЉ  џџџ      џ                                    bISealingTopPistonHome        @                      Г    ѓџ        @
                       @                                                                                                          
    @        ЊЄДЏЏЉ  џџџ      џ                                    bISealingBottomPistonHome        @                      Д    ѓџ        @
                       @                                                                                                           
    @        ТјS!  џџ     џџџ                                NOT bAConeFeedCylRsError        0   Cone Feeding Piston End Sensor Timeout Error @                      Е    ѓџ        @
                       @                                                                                                           
    @        RуЏ  џџ     џџџ                                NOT bAWrappingCylRs1Error        .   Wrapping  Piston1 End Sensor Timeout Error @                      З    ѓџ        @
                       @                                                                                                           
    @        Rм у№   џџ     џџџ                                NOT bAWrappingCylRs3Error        .   Wrapping  Piston3 End Sensor Timeout Error @                      И    ѓџ        @
                       @                                                                                                           
    @        R,уU@  џџ     џџџ                                NOT bAWrappingCylRs2Error        .   Wrapping  Piston2 End Sensor Timeout Error @                      Й    ѓџ        @
                       @                                                                                                           
    @        њ О ч Тв   џџ     џџџ                                NOT bASealBotCylRsError        2   Sealing Bottom Piston End Sensor Timeout Error @                      К    ѓџ        @
                       @                                                                                                           
    @        њ № Т  џџ     џџџ                                NOT bASealTopCylRsError        /   Sealing Top Piston End Sensor Timeout Error @                      Л    ѓџ        @
                       @                                                                                                           
    @        њ "KТ6  џџ     џџџ                                NOT bASealSepXCylRsError        +   X- Axis Piston End Sensor Timeout Error @                      М    ѓџ        @
                       @                                                                                                           
    @        ЏЬ  џџ     џџџ                                NOT bASealSepYCylRsError        *   Y-Axis Piston End Sensor Timeout Error @                      Н    ѓџ        @
                       @                                                                                                           
    @        њ T}Тh  џџ     џџџ                                NOT bAPolythinSheetError           Sheet NOT Feeded @                      О    ѓџ        @
                       @                                                                                                           
    @         ц Џц њ   џџ     џџџ                                NOT bAConeMissAtSealConv        '   Cone  Missing From Sealing Conveyor @                      П    ѓџ        @
                       @                                                                                                           
    @        И^Ir  џџ     џџџ                                NOT bAConeMissErrorAtWrpConv        )   Allign the Cone At  Wrapping Conveyer @                      Р    ѓџ        @
                       @                                                                                                           
    @        ( n Й №    џџ     џџџ                                NOT bGrossWieghtNOk            Gross Weight is Less OR more @                      С    ѓџ        @
                       @                                                                                                           
    @        оъoІў  џџ     џџџ                                NOT bAFwdCylRsError        +   Forward Piston End Sensor Timeout Error @                      Т    ѓџ        @
                       @                                                                                                           
    @          Џ= ц (   џџ     џџџ                                NOT bGrossWtCylEndSenError        %   Gross weight Cyl End Sensor Error @                      У    ѓџ        @
                       @                                                                                                          
    @        ( Ё Гd   џ   јZ  џ@                                            HOME @                      Ф    ьџМ       Courier @                      @    AUTO1                                                                                                    
    @         fJў &    @                .bErrorReset   RESET @џџџ     ммм     џ       @џ   Х    хџМ    	   Arial @        .bErrorReset             @                                                                                                             
    @        њ УГ^  џ   јZ  џ@                                            PARAMETERS @                      Ц    ьџМ       Courier @                      @ 
   PARAMETERS                                                                                                     
    @        ( Цё я к  џ   јZ  џ@                                            DIAGNOSTICS @                      Ч    ьџМ       Courier @                      @    DIAGNOSTICS                                                                                                     
    @         ШЩёdм  џ   јZ  џ@                                            ACTIVE ALARMS @                      Ш    ьџМ       Courier @                      @    ALARM                                                                                                     
    @        .H{Ya  џџџ     џџџ                                        UnitBConeCountHMI   %d @                      Щ    ѓџ        @
                       @                                                                                                          
    @        xHг{Ѕa  џџџ     џџџ                                        UnitAConeCountHMI   %d @                      Ъ    ѓџ        @
                       @                                                                                                           
    @        иHjv!_  џ       џџџ                                            Retrival A  Count @                      Ы    ѓџ        @
                       @                                                                                                           
    @        H vз_  џ       џџџ                                            Retrival B Count @                      Ь    ѓџ        @
                       @             џ   џџ   џ   џџ   џ џ џ РРР                                      Ч  , QШ .,        
   PARAMETERS йН`
    @HК  йН`O   (   7                                                                                                       
    @            УЃaб   ппп     џџџ                                             @                      /    ѓџ        @
                       @                                                                                                          
    @        Z  ЬG -   џ@     џџџ                                         
   PGM NO @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        Z P Ь i   џ@     џџџ                                            COUNT CODE @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        Z Ш Ьќ с   џ@     џџџ                                            DF NET WT @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        Z  ЬР І   џ@     џџџ                                            CARTON NO @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        Z Ь8  џ@     џџџ                                            DF GROSS WT @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        Z @ЬtY  џ@     џџџ                                         	   BLEND @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        Z |ЬА  џ@     џџџ                                         	   SHADE @                          ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                        0   1
    @        к бG U-   џџџ     џ                                          ProgramNoHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        жP Э Qi   џџџ     џ                                          CountCodeHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ж ЭР QІ   џџџ     џ                                          CartonNoHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        жШ Эќ Qс   џџџ     џ                                          DefaultNetWeightHmi
   %0.02f @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        жЭ8Q  џџџ     џ                                          DefaultGrossWeightHmi
   %0.02f @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ж@ЭtQY  џџџ     џ                                          BlendHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ж|ЭАQ  џџџ     џ                                          ShadeHmi   %s @                          №џМ    	   Arial @                      @                                                                                                          
    @        H КG  -   џ@     џџџ                                            CONE TIP @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        HP К  i   џ@     џџџ                                            CONE NETT @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        H КР  І   џ@     џџџ                                            CONE LENGTH @                           ыџX       Lucida Bright @                       @                                                                                                         
    @        HШ Кќ  с   џ@     џџџ                                         	   CONES @                      !    ыџX       Lucida Bright @                       @                                                                                                         
    @        HК8   џ@     џџџ                                            DOM/EXP @                      "    ыџX       Lucida Bright @                       @                                                                                                          
    @        H@КtY  џ@     џџџ                                             PACK TYPE(BAG/CARTON/PALLET) @                      #    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        Ш РG C-   џџџ     џ                                       
   ConeTipHmi   %s @                      $    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ФP М ?i   џџџ     џ                                          ConeNettHmi   %s @                      %    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        Ф МР ?І   џџџ     џ                                          ConeLengthHmi   %s @                      &    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ФШ Мќ ?с   џџџ     џ                                          iATotalNoOfCones   %s @                      '    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ФМ8?  џџџ     џ                                       
   Dom_ExpHmi   %s @                      (    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        Ф@Мt?Y  џџџ     џ                                          PackTypeHmi   %s @                      )    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        Ф|МА?  џџџ     џ                                       	   iLotNoHmi   %s @                      *    №џМ    	   Arial @                      @                                                                                                          
    @        H|КА   џ@     џџџ                                         
   LOT NO @                      +    ыџX       Lucida Bright @                       @                                                                                                          
    @        HИКы б  џ@     џџџ                                            WORK ORD NO @                      ,    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        ФИМь?б  џџџ     џ                                          iWorkOrderNoHmi   %s @                      -    №џМ    	   Arial @                      @                                                                                                          
    @        N*а^C  џ   јZ  џ@                                            DIAGNOSTICS @                      0    ьџМ       Courier @                      @    DIAGNOSTICS                                                                                                     
    @        $*І^фC  џ   јZ  џ@                                            ACTIVE ALARMS @                      1    ьџМ       Courier @                      @    ALARM                                                                                                     
    @        Z *м^C  џ   јZ  џ@                                            HOME @                      2    ьџМ       Courier @                      @    AUTO1                                                                                                     
    @        жюф"]  џ        џ                                    ParametesSave       SAVE @                      5    ыџX       Lucida Bright @        ParametesSave             @                                                                                                          
    @        Z ИЬыб  џ@     џџџ                                            AVG COUNT @                      ;    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        жИЮьQб  џџџ     џ                                          AvgCount   %s @                      <    №џМ    	   Arial @                      @                                                                                                          
    @        Z єЬ'  џ@     џџџ                                            FIN YEAR @                      =    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        жєЮ(Q  џџџ     џ                                          Fyear   %s @                      >    №џМ    	   Arial @                      @                                                                                                          
    @        Z 0ЬcI  џ@     џџџ                                            LOCATION @                      ?    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        к5вiUN  џџџ     џ                                          Location   %s @                      @    №џМ    	   Arial @                      @                                                                                                          
    @        Z lЬ  џ@     џџџ                                            ISS DES @                      A    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        кqвЅU  џџџ     џ                                       	   IssueDesp   %s @                      B    №џМ    	   Arial @                      @                                                                                                          
    @        Z ЈЬлС  џ@     џџџ                                            TARE WEIGHT @                      C    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        к­всUЦ  џџџ     џ                                       
   TareWeight   %s @                      D    №џМ    	   Arial @                       @                                                                                                          
    @        HєК'   џ@     џџџ                                            DESCRIPTION @                      E    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        ШљР-C  џџџ     џ                                          Description   %s @                      F    №џМ    	   Arial @                      @                                                                                                          
    @        H0Кc I  џ@     џџџ                                            REMARKS @                      G    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        Ш5РiCN  џџџ     џ                                          Remarks   %s @                      H    №џМ    	   Arial @                      @                                                                                                          
    @        HlК   џ@     џџџ                                            WORK FLAG @                      I    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        ШqРЅC  џџџ     џ                                          WorkFlag   %s @                      J    №џМ    	   Arial @                      @                                                                                                          
    @        HЈКл С  џ@     џџџ                                            ITEMCODE @                      K    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        Ш­РсCЦ  џџџ     џ                                          ItemCodeHmi   %s @                      L    №џМ    	   Arial @                      @                                                                                                          
    @        HфК §  џ@     џџџ                                            EMPTY CONE WT @                      M    ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        ШщРC  џџџ     џ                                          EmptyConeWt   %s @                      N    №џМ    	   Arial @                      @         џЊ ххх џџ   џ   џџ   џ џ џ РРР ххх с                                   ,   '           PARAMETERS_SAVE йН`
    @   йН`'   (   %                                                                                                       
    @        
 
 Э­kл   ппп     џџџ                                             @                           ѓџ        @
                       @                                                                                                          
    @        d n жЁ    џ@     џџџ                                         
   PGM NO @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        d Й жэ в   џ@     џџџ                                            COUNT CODE @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        d Jж~c  џ@     џџџ                                            DF NET WT @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        d ж8"  џ@     џџџ                                            CARTON NO @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        d жЩЏ  џ@     џџџ                                            DF GROSS WT @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        d сжњ  џ@     џџџ                                         	   BLEND @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        d ,ж`F  џ@     џџџ                                         	   SHADE @                          ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                        0   1
    @        фn лЁ _   џџџ     џ                                          ProgramNoHmi   %d @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        фЙ лэ _в   џџџ     џ                                          .COUNT   %s @                      	    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        рз8[  џџџ     џ                                       	   .CARTONNO   %d @                      
    №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        фJл~_c  џџџ     џ                                       	   DFLTNETWT
   %0.02f @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        флЩ_Џ  џџџ     џ                                          DFLTGROSSWT
   %0.02f @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        фсл_њ  џџџ     џ                                          .BLEND   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        ф,л`_F  џџџ     џ                                          .SHADE   %s @                          №џМ    	   Arial @                      @                                                                                                          
    @        Qn УЁ 	   џ@     џџџ                                            CONE TIP @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        QЙ Уэ 	в   џ@     џџџ                                            CONE NETT @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        QУ8	  џ@     џџџ                                            CONE LENGTH @                          ыџX       Lucida Bright @                       @                                                                                                         
    @        QPУ	i  џ@     џџџ                                         	   CONES @                          ыџX       Lucida Bright @                       @                                                                                                         
    @        QУЯ	Е  џ@     џџџ                                            DOM/EXP @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        RъФ  џ@     џџџ                                             PACK TYPE(BAG/CARTON/PALLET) @                          ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        бn ЩЁ L   џџџ     џ                                       
   ConeTipHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        бЙ Щэ Lв   џџџ     џ                                          ConeNettHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        бЩ8L  џџџ     џ                                          ConeLengthHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        бPЩLi  џџџ     џ                                          iATotalNoOfCones   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        бЩЯLЕ  џџџ     џ                                       
   Dom_ExpHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        иъаS  џџџ     џ                                          PackTypeHmi   %s @                          №џМ    	   Arial @                      @                                            NOT bIKeySwitch                                                             
    @        б2ЩfLL  џџџ     џ                                       	   iLotNoHmi   %s @                          №џМ    	   Arial @                      @                                                                                                          
    @        Q2Уf	L  џ@     џџџ                                         
   LOT NO @                          ыџX       Lucida Bright @                       @                                                                                                          
    @        QyУЌ	  џ@     џџџ                                            WORK ORD NO @                          ыџX       Lucida Bright @                       @                                            NOT bIKeySwitch                                                             
    @        б~ЩВL  џџџ     џ                                          iWorkOrderNoHmi   %s @                          №џМ    	   Arial @                      @                                                                                                          
    @        WйI.  џ   јZ  џ@                                            DIAGNOSTICS @                          ьџМ       Courier @                      @    DIAGNOSTICS                                                                                                     
    @        3ЕIѓ.  џ   јZ  џ@                                            ACTIVE ALARMS @                           ьџМ       Courier @                      @    ALARM                                                                                                     
    @        d цI$.  џ   јZ  џ@                                            HOME @                      !    ьџМ       Courier @                      @    AUTO1                                                                                                     
    @        P ^Шз Ў  џ        џ                                    SAVE       SAVE @                      "    ыџX       Lucida Bright @        SAVE             @                                                                                                          
    @        єШ{Ў  џ        џ                                    LOAD       LOAD @                      %    ыџX       Lucida Bright @        LOAD             @                                            NOT bIKeySwitch                                                        0   5
    @        rзЧЄ­  џџџ     џ                                       
   PRGNO_LOAD   %d @                      &    №џМ    	   Arial @                      @             џ   џџ   џ   џџ   џ џ џ РРР                                      §џџџ, |Ц )         "   standard.lib 5.6.98 12:03:02 @w5$   TcEtherCAT.lib 8.3.12 17:06:42 @ЪXO&   TcUtilities.lib 10.1.13 19:12:12 @4ХюP!   TcBase.lib 14.5.09 12:14:08 @ЈЏJ(   FB_Date_Time .lib 20.5.16 16:54:40 @јѓ>W#   TcSystem.lib 27.2.12 14:08:36 @AKO%   TcBaseMath.lib 27.7.04 12:07:56 @DјA!   TcMath.lib 23.9.04 15:15:30 @:RA    TcMC2.lib 13.9.17 10:18:38 @ІИИY$   SysLibVisu.lib 7.7.04 17:17:22 @Ъты@+   SysLibTargetVisu.lib 16.6.08 16:24:26 @R8VH$   TcSystemCX.lib 7.9.16 12:51:26 @іПЯW"   COMlibV2.lib 1.8.08 13:22:48 @аРH      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @        M   Ч  ConvertDcTimeToPathPos @      DCTIMESTRUCT       E_EcAdressingType       E_EcFoeMode       E_EcMbxProtType       E_EcScanSlavesCommandStatus       ProductCode       ST_DriveRef       ST_EcCrcError       ST_EcCrcErrorEx       ST_EcHeader       ST_EcLastProtErrInfo       ST_EcMasterStatistic       ST_EcMaxCmd       ST_EcScannedSlaveStatus       ST_EcSlaveConfigData       ST_EcSlaveIdentity       ST_EcSlaveScannedData       ST_EcSlaveState       ST_EcSlaveStateBits       ST_PlcDriveRef       ST_SoE_DriveRef       ST_TPCTYPE_CODE_XXDDD       ST_TPCTYPE_CODE_XXDDXD       ST_TPCTYPE_CODE_XXDXDD       ST_TPCTYPE_CODE_XXDXDXD       T_DCTIME    
   T_DCTIME32       T_HFoe                  ConvertDcTimeToPos @          ConvertPathPosToDcTime @          ConvertPosToDcTime @          DCTIME_TO_DCTIMESTRUCT @          DCTIME_TO_FILETIME @          DCTIME_TO_STRING @          DCTIME_TO_SYSTEMTIME @          DCTIMESTRUCT_TO_DCTIME @          F_CheckVendorId @       &   F_ConvBK1120CouplerStateToString @          F_ConvExtTimeToDcTime @       "   F_ConvMasterDevStateToString @          F_ConvProductCodeToString @          F_ConvSlaveStateToBits @          F_ConvSlaveStateToString @          F_ConvStateToString @          F_ConvTcTimeToDcTime @          F_ConvTcTimeToExtTime @          F_GetActualDcTime @          F_GetCurDcTaskTime @          F_GetCurDcTickTime @          F_GetCurExtTime @          F_GetVersionTcEtherCAT @          FB_EcCoESdoRead @          FB_EcCoESdoReadEx @          FB_EcCoESdoWrite @          FB_EcCoESdoWriteEx @          FB_EcDcTickTimeBaseCalc @          FB_EcDcTimeCtrl @          FB_EcDcTimeCtrl.A_GetDay @       $   FB_EcDcTimeCtrl.A_GetDayOfWeek @          FB_EcDcTimeCtrl.A_GetHour @           FB_EcDcTimeCtrl.A_GetMicro @           FB_EcDcTimeCtrl.A_GetMilli @       !   FB_EcDcTimeCtrl.A_GetMinute @           FB_EcDcTimeCtrl.A_GetMonth @          FB_EcDcTimeCtrl.A_GetNano @       !   FB_EcDcTimeCtrl.A_GetSecond @          FB_EcDcTimeCtrl.A_GetYear @          FB_EcExtSyncCalcTimeDiff @          FB_EcExtSyncCheck @          FB_EcFoeAccess @          FB_EcFoeClose @          FB_EcFoeLoad @          FB_EcFoeOpen @          FB_EcGetAllSlaveAddr @          FB_EcGetAllSlaveCrcErrors @          FB_EcGetAllSlaveStates @          FB_EcGetConfSlaves @          FB_EcGetLastProtErrInfo @          FB_EcGetMasterState @          FB_EcGetScannedSlaves @          FB_EcGetSlaveCount @          FB_EcGetSlaveCrcError @          FB_EcGetSlaveCrcErrorEx @          FB_EcGetSlaveIdentity @          FB_EcGetSlaveState @          FB_EcLogicalReadCmd @          FB_EcLogicalWriteCmd @          FB_EcMasterFrameStatistic @       '   FB_EcMasterFrameStatisticClearCRC @       *   FB_EcMasterFrameStatisticClearFrames @       +   FB_EcMasterFrameStatisticClearTxRxErr @          FB_EcPhysicalReadCmd @          FB_EcPhysicalWriteCmd @          FB_EcReqMasterState @          FB_EcReqSlaveState @          FB_EcSetMasterState @          FB_EcSetSlaveState @          FB_EcSoERead @          FB_EcSoEWrite @          FB_SoERead_ByDriveRef @          FB_SoEWrite_ByDriveRef @          FILETIME_TO_DCTIME @          STRING_TO_DCTIME @          SYSTEMTIME_TO_DCTIME @            Globale_Variablen @r      EC_COE_PROTERR_TRANSFER      EC_ADS_IGRP_ECAT_SOE_LASTERROR      EC_COE_PROTERR_PDO_LEN      EC_ADS_IGRP_SLAVE_STATEMACHINE   "   EC_ADS_IGRP_MASTER_SLAVE_ADDRESSES      EC_COE_PROTERR_INDEX      EC_COE_PROTERR_HARDWARE      EC_ADS_IGRP_ECAT_SOE      EC_LINK_STATE_MISSING_LINK      EC_COE_PROTERR_TRANSFER2      EC_COE_PROTERR_TRANSFER1      EC_SOE_ELEMENT_ATTRIBUTE      EC_DCTIME_TICKSPERSEC      EC_COE_PROTERR_TOGGLE      EC_COE_PROTERR_BLK_SIZE      EC_ADS_IGRP_MASTER_DEVICESTATE      EC_ADS_IOFFS_MASTER_COUNT_SLAVE      EC_LINK_STATE_LINK_WITHOUT_COMM       EC_ADS_IOFFS_MASTER_COUNT_ROUTER      EC_COE_PROTERR_READONLY      EC_FOE_PROTERR_BOOTSTRAPONLY      EC_COE_PROTERR_DATA_RANGE2      EC_COE_PROTERR_DATA_RANGE1      EC_CMD_TYPE_FPWR      EC_COE_PROTERR_TIMEOUT   /   EC_ADS_IGRP_MASTER_SLAVE_ABNORMAL_STATE_CHANGES      EC_ADS_IGRP_FOE_FOPENREAD      EC_COE_PROTERR_P_INCOMP      EC_CMD_TYPE_APRD      EC_SOE_ELEMENT_MAX      EC_ADS_IGRP_FOE_FWRITE      EC_CMD_TYPE_APRW      EC_COE_PROTERR_GENERAL      EC_CMD_TYPE_LWR      EC_LINK_STATE_OK      EC_COE_PROTERR_CRC      EC_FOE_PROTERR_NOTFOUND      EC_SOE_ELEMENT_DEFAULT      EC_COE_PROTERR_DATA_RANGE      EC_FOE_PROTERR_DISKFULL      EC_ADS_IGRP_MASTER_COUNT_SLAVE      EC_FOE_PROTERR_NOTDEFINED      EC_ADS_IGRP_MASTER_STATEMACHINE      EC_DEVICE_STATE_INIT      EC_LINK_STATE_PORT_A      EC_LINK_STATE_PORT_B      EC_LINK_STATE_PORT_C      EC_LINK_STATE_PORT_D      EC_DEVICE_STATE_PREOP      EC_DEVICE_STATE_INVALID_VPRS      EC_ADS_IGRP_MASTER_SLAVE_CRC      EC_DEVICE_STATE_MASK      EC_CMD_TYPE_BRD      EC_ADS_IGRP_FOE_FOPENWRITE      EC_ADS_IGRP_FOE_PROGRESSINFO      EC_FOE_PROTERR_ACCESS      EC_COE_PROTERR_DICTIONARY      EC_CMD_TYPE_BRW      EC_ADS_IOFFS_MASTER_REQSTATE      EC_ADS_IOFFS_MASTER_COUNT_PORT      EC_COE_PROTERR_I_INCOMP   !   EC_ADS_IOFFS_MASTER_INTERNALSTATE      EC_ADS_IGRP_MASTER_SENDCMD      bSeqReadDrvAttrAndValue      EC_ADS_IGRP_FOE_FCLOSE      EC_COE_PROTERR_PDO_MAP      EC_COE_PROTERR_DATA_SIZE      EC_FOE_PROTERR_ILLEAGAL      EC_CMD_TYPE_APWR      EC_DEVICE_STATE_OP   +   EC_ADS_IGRP_MASTER_SLAVE_SETPRESENT_CHANGES      EC_SOE_ELEMENT_DATASTATE      EC_COE_PROTERR_MINMAX      EC_DCTIME_TICKSPERMSEC      EC_SOE_ELEMENT_MIN      EC_COE_PROTERR_DATA_SIZE2      EC_COE_PROTERR_DATA_SIZE1      EC_DCTIME_DELTA_OFFSET      EC_DCTIME_TICKSPERDAY      EC_DCTIME_DATEDELTA_OFFSET      EC_COE_PROTERR_MEMORY      EC_CMD_TYPE_FPRD      EC_ADS_IOFFS_MASTER_CURSTATE      EC_COE_PROTERR_OFFSET      EC_LINK_STATE_ADDITIONAL_LINK      EC_ADS_IGRP_MASTER_COUNT_FRAME      EC_CMD_TYPE_FPRW      EC_SOE_ELEMENT_NAME      EC_ADS_IGRP_FOE_FREAD      EC_DEVICE_STATE_INITCMD_ERROR      EC_AMSPORT_MASTER      EC_SOE_ELEMENT_UNIT   !   EC_ADS_IGRP_MASTER_SLAVE_IDENTITY      EC_CMD_TYPE_BWR      EC_MAX_SLAVES      EC_FOE_PROTERR_PACKENO      EC_CMD_TYPE_LRD      EC_ADS_IGRP_FOE_LASTERROR      EC_FOE_PROTERR_EXISTS      EC_COE_PROTERR_CCS_SCS      EC_DEVICE_STATE_ERROR      EC_LINK_STATE_NOT_PRESENT      EC_CMD_TYPE_LRW      EC_SOE_ELEMENT_VALUE      EC_COE_PROTERR_WRITEONLY      EC_FOE_PROTERR_NOTINBOOTSTRAP      EC_DEVICE_STATE_BOOTSTRAP      EC_DEVICE_STATE_SAFEOP      EC_COE_PROTERR_SEQNO      EC_COE_PROTERR_ACCESS      EC_FOE_PROTERR_NOUSER   !   EC_ADS_IGRP_CANOPEN_SDO_LASTERROR      EC_ADS_IGRP_CANOPEN_SDO      EC_FOE_PROTERR_INVALIDPASSWORD      /  	  ARG_TO_CSVFIELD @?      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ST_AmsFindFileSystemEntry       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouterInfoEntry       ST_AmsRouteSystemEntry       ST_AmsStartProcessReq       ST_AmsSymbolInfoEntry       ST_DeviceIdentification       ST_DeviceIdentificationEx       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                  BCD_TO_DEC @           BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTEARR_TO_MAXSTRING @          CSVFIELD_TO_ARG @          CSVFIELD_TO_STRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_LREALEX @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfMonthEx @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_TranslateFileTimeBias @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_CSVMemBufferReader @          FB_CSVMemBufferWriter @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @       &   FB_FileTimeToTzSpecificLocalTime @       .   FB_FileTimeToTzSpecificLocalTime.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @           FB_GetDeviceIdentification @       "   FB_GetDeviceIdentificationEx @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_MemStackBuffer @          FB_MemStackBuffer.A_Pop @          FB_MemStackBuffer.A_Push @          FB_MemStackBuffer.A_Reset @          FB_MemStackBuffer.A_Top @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @       (   FB_SystemTimeToTzSpecificLocalTime @       0   FB_SystemTimeToTzSpecificLocalTime.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @       (   FB_TranslateLocalTimeToUtcByZoneID @       0   FB_TranslateLocalTimeToUtcByZoneID.A_Reset @       (   FB_TranslateUtcToLocalTimeByZoneID @       0   FB_TranslateUtcToLocalTimeByZoneID.A_Reset @       &   FB_TzSpecificLocalTimeToFileTime @       .   FB_TzSpecificLocalTimeToFileTime.A_Reset @       (   FB_TzSpecificLocalTimeToSystemTime @       0   FB_TzSpecificLocalTimeToSystemTime.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          MAXSTRING_TO_BYTEARR @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_ReadSymInfoByNameEx @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT64_TO_UINT64 @          PUINT_TO_UINT @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PWORD_TO_WORD @          RAD_TO_DEG @           ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_CSVFIELD @          STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          WORD_TO_FIX16 @          WritePersistentData @           
  Global_Variables @\      DEFAULT_CSV_FIELD_DOUBLE_QUOTE"      MAX_REMOTE_PCS"      FLOATREC_MIN_PRECISION"      SYSTEMSERVICE_ADDREMOTE"      SYSTEMSERVICE_IPHELPERAPI"      SBCS_TABLES"      FMTERR_UNACCEPTEDPARAMETER"      MAX_ROUTE_TRANSPORT"      MAX_LOCAL_ADAPTERS"      ARGTYPE_IS_FLOAT_TYPE"      FORMAT_HASH_PREFIX_STRING"      FMTERR_PRECISIONVALUE"      FMTERR_TYPEFIELDVALUE"      ROUTE_FLAG_NOOVERRIDE"      GLOBAL_FORMAT_HASH_PREFIX_TYPE"      EMPTY_GUID_STRUCT"      DATE_AND_TIME_SECPERWEEK"      FMTERR_ARGTYPEINVALID"      FMTERR_NOERROR"      SYSTEMTIME_DATE_AND_TIME_MAX"      FLOATREC_MAX_PRECISION"      MAX_ROUTE_NAME_LEN"      SYSTEMSERVICE_FFILEFIND"      SYSTEMTIME_TICKSPERSEC"      FMTERR_WIDTHPRECISIONVALPOS"      EMPTY_ROUTE_ENTRY"      MIN_SBCS_TABLE"      MIN_ROUTE_TRANSPORT"      FMTERR_DESTBUFFOVERFLOW"      EMPTY_GUID_STRING"      HKEY_MAX_BINARY_DATA_SIZE"      MAX_BASIC_HASHTABLE_CHAINSIZE"      ROUTE_FLAG_TEMPORARY"      AMSLOGGER_IGR_GENERAL"      MAX_ADAPTER_ADDRESS_LENGTH"      IPHELPERAPI_IPADDRBYHOSTNAME"      WEST_EUROPE_TZI"      EMPTY_GUID_REGSTRING"      DBG_OUTPUT_FILE"   
   ImQn_TABLE"      FMTERR_FLAGPOSITION"      MAX_SBCS_TABLE"      FORMAT_MAX_ARGS"      FLOATREC_EXP_IS_INF"      FORMAT_TYPE_SUPPORT_MASK"      FORMAT_DEFAULT_PRECISION"      FORMAT_DECASC_CODES"      DEFAULT_CSV_RECORD_SEP_LF"      MAX_ADAPTER_NAME_LENGTH"      ARGTYPE_IS_UNSIGNED_TYPE"      SYSTEMTIME_TICKSPERMSEC"      DWORD_DECADE_DIVIDER"      MAX_ROUTE_ADDR_LEN"      IPHELPERAPI_ADAPTERSINFO"      FMTERR_PRECISIONDOTPOSITION"      DBG_OUTPUT_LOG"      MAX_ADAPTER_DESCRIPTION_LENGTH"      DATE_AND_TIME_SECPERDAY"      GLOBAL_DCF77_SEQUENCE_CHECK"      FLOATREC_EXP_IS_NAN"      SYSTEMTIME_TICKSPERDAY"      SYSTEMSERVICE_IPHOSTNAME"      MAX_AVERAGE_MEASURES"      WORD_DECADE_DIVIDER"      SYSTEMSERVICE_ENUMREMOTE"      DBG_OUTPUT_VISU"      BYTE_DECADE_DIVIDER"      FLOATREC_MAX_DIGITS"      DBG_OUTPUT_NONE"      GLOBAL_CRC_CCITT_TABLE"      DEFAULT_CSV_FIELD_SEP"      AMSPORT_AMSLOGGER"      EMPTY_ARG_VALUE"      SYSTEMSERVICE_DELREMOTE"      SYSTEMTIME_MAX_YEARSDAY"      ARGTYPE_IS_STRING_TYPE"      SYSTEMTIME_DATE_AND_TIME_MIN"      DEFAULT_CSV_RECORD_SEP_CR"      ARGTYPE_IS_SIGNED_TYPE"      FMTERR_INSUFFICIENTARGS"      SYSTEMTIME_MAX_MONTHDAYS"      FMTERR_PERCENTSIGNPOSITION"      GLOBAL_DCF77_PULSE_SPLIT"      FORMAT_PREFIX_SUPPORT_MASK"      FMTERR_WIDTHVALUE"      FMTERR_ASTERISKPOSITION"      ARGTYPE_IS_BIT_TYPE"      SYSTEMTIME_DATEDELTA_OFFSET"      FORMAT_HEXASC_CODES"      GLOBAL_SBCS_TABLE"      ROUTE_FLAG_DYNAMIC"      AMSLOGGER_IOF_MODE"          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @                 FB_DateTime @                     Global_Variables @       P   Q  ADSCLEAREVENTS @      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       ExpressionResult       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_RemoveDir @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @             Global_Variables @      SYSTEMSERVICE_FRENAME"      ADSIGRP_IOIMAGE_RWOB"      SYSTEMSERVICE_CHANGENETID"      FOPEN_MODEREAD"      SYSTEMSERVICE_CLOSEHANDLE"      SYSTEMSERVICE_FTELL"      BOOTDATAFLAGS_RETAIN_REQUESTED"      ADSSTATE_RESET"      SYSTEMSERVICE_FGETS"      SYSTEMSERVICE_FEOF"      AMSPORT_R0_CAMTOOL"      PI"      SYSTEMSERVICE_FSEEK"      ADSSTATE_RECONFIG"      FILE_OPENCREATE"      ADSIGRP_SYMNAME"      ADSSTATE_START"      ADSSTATE_LOADCFG"      ADSSTATE_IDLE"      BOOTDATAFLAGS_RETAIN_LOADED"      FILE_SEEKEND"      ADSIGRP_SYM_HNDBYNAME"      TCEVENTFLAG_FMTSELF"      ADSIGRP_SYMNOTE"      SYSTEMSERVICE_FWRITE"   "   SYSTEMSERVICE_REG_HKEYLOCALMACHINE"      ADSLOG_MSGTYPE_STRING"      TCEVENT_FMTPRGSIZE"      ADSIGRP_SYM_VERSION"      ADSIGRP_IOIMAGE_RWIOB"      ADSIGRP_IOIMAGE_ROSIZE"      ADSIGRP_SYM_INFOBYNAMEEX"      ADSIGRP_IOIMAGE_RISIZE"      eWatchdogConfig"      AMSPORT_R0_NCSAF"      TCEVENTSTATE_INVALID"      TCEVENTSTATE_CONFIRMED"      FILE_OPENREAD"      AMSPORT_LOGGER"      BOOTDATAFLAGS_PERSISTENT_LOADED"      TCEVENTSTATE_RESETCON"      SYSTEMSERVICE_FDELETE"   	   FILE_READ"      MAX_STRING_LENGTH"      ADSSTATE_SHUTDOWN"      AMSPORT_R0_CAM"      ADSIGRP_SYMVAL"      ADSIGRP_IOIMAGE_RWIX"      ADSIGRP_SYM_DOWNLOAD"      ADSIGRP_SYM_UPLOAD"      TIMESERVICE_RTCTIMEDIFF"      AMSPORT_R0_NC"      ADSIGRP_IOIMAGE_RWIB"      SYSTEMSTATEFLAGS_BSOD"      AMSPORT_R0_CNC"      BOOTDATAFLAGS_RETAIN_INVALID"      ADSIOFFS_DEVDATA_ADSSTATE"      ADSSTATE_SAVECFG"      SYSTEMSERVICE_OPENWRITE"      SYSTEMSERVICE_FCLOSE"      ADSSTATE_CONFIG"      ADSSTATE_POWERGOOD"      ADSIGRP_SYM_INFOBYNAME"      SYSTEMSERVICE_FSCANF"      ADSIGRP_SYM_UPLOADINFO"      SYSTEMSERVICE_OPENREAD"      SYSTEMSERVICE_RMDIR"      TIMESERVICE_ADJUSTTIMETORTC"      TCEVENTFLAG_SRCID"      SYSTEMSERVICE_FPUTS"      FOPEN_MODEAPPEND"      ADSLOG_MSGTYPE_MSGBOX"      ADSSTATE_SUSPEND"   
   FILE_WRITE"      SYSTEMSERVICE_SENDEMAIL"      SYSTEMSTATEFLAGS_RTVIOLATION"      AMSPORT_R0_ISG"      AMSPORT_R0_PLC_RTS4"      TIMESERVICE_DATEANDTIME"      AMSPORT_R0_PLC_RTS3"      TCEVENTFLAG_AUTOFMTALL"      AMSPORT_R0_PLC_RTS2"      AMSPORT_R0_PLC_RTS1"      TCEVENTFLAG_MSGBOX"      FILE_OPENWRITE"       BOOTDATAFLAGS_PERSISTENT_INVALID"      ADSSTATE_RUN"      ADSSTATE_POWERFAILURE"      ADSLOG_MSGTYPE_ERROR"      FOPEN_MODEWRITE"      ADSLOG_MSGTYPE_WARN"      nWatchdogTime"      AMSPORT_EVENTLOG"      AMSPORT_R3_SCOPESERVER"      SYSTEMSERVICE_STARTPROCESS"      ADSLOG_MSGTYPE_LOG"      ADSLOG_MSGTYPE_HINT"      FOPEN_MODEPLUS"      AMSPORT_R0_NCSVB"      TCEVENTFLAG_LOG"      SYSTEMSERVICE_MKDIR"      ADSLOG_MSGTYPE_RESOURCE"      TIMESERVICE_SYSTEMTIMES"      ADSIGRP_IOIMAGE_CLEARI"      AMSPORT_R0_LINE"      ADSIGRP_IOIMAGE_CLEARO"      FOPEN_MODETEXT"      SYSTEMSERVICE_FPRINTF"      ADSSTATE_RESUME"      TCEVENTSTATE_RESET"      AMSPORT_R0_IO"      TCEVENTFLAG_PRIOCLASS"      ADSSTATE_INVALID"      DEFAULT_ADS_TIMEOUT"      ADSIGRP_SYM_VALBYNAME"      TCEVENTSTATE_SIGNALED"      ADSIGRP_DEVICE_DATA"      ADSSTATE_ERROR"      AMSPORT_R0_RTIME"      ADSIGRP_SYM_RELEASEHND"      TIMESERVICE_TIMEZONINFORMATION"      SYSTEMSERVICE_CREATEFILE"      TCEVENT_SRCNAMESIZE"      ADSSTATE_INIT"      SYSTEMSERVICE_FREAD"      ADSIGRP_SYMTAB"      SYSTEMSERVICE_TIMESERVICES"      ADSSTATE_STOP"      FILE_SEEKBEGIN"      ADSSTATE_MAXSTATES"      SYSTEMSERVICE_OPENCREATE"      SYSTEMSERVICE_FOPEN"      AMSPORT_R3_SYSSERV"      ADSIOFFS_DEVDATA_DEVSTATE"      FOPEN_MODEBINARY"      AMSPORT_R0_PLC"      ADSIGRP_SYM_VALBYHND"      ADSIGRP_IOIMAGE_RWOX"             FW_Floor @                  FW_LrealFrac @          FW_LrealModP @          FW_LrealTrunc @                  F_GetVersionTcMath @                   FLOOR @       
   FRAC @       
   LMOD @          LTRUNC @          MODABS @          MODTURNS @              Л
  _F_AxisState @_      _E_ParameterType       _E_ReadWriteParameterMode       _E_TcMC_STATES       _E_TcNC_CmdState        _E_TcNC_CmdTypeNewTargPosAndVelo       _E_TcNC_PosSetType       _E_TcNC_ServoState       _E_TcNC_SlaveTypes       _E_TcNC_StartPosType       _E_TcNC_TargPosType       _E_TouchProbeState       _InternalAxisRefData       _ST_FunctionBlockResults       _ST_NCADS_Axis       _ST_NCADS_AxisFunctions       _ST_NCADS_AxisParameter       _ST_NCADS_AxisState       _ST_NCADS_IDXOFFS_AxisFunctions       _ST_NCADS_IDXOFFS_AxisParameter       _ST_NCADS_IDXOFFS_AxisState        _ST_NCADS_IDXOFFS_TableFunctions        _ST_NCADS_IDXOFFS_TableParameter       _ST_NCADS_Table       _ST_NCADS_TableFunctions       _ST_NCADS_TableParameter       _ST_ParaStruct       _ST_TcNC_Compensation2       _ST_TcNC_CoupleSlave       _ST_TcNC_CoupleSlaveMultiMaster        _ST_TcNC_CoupleSlaveMultiMaster2       _ST_TcNC_DecoupleSlave       _ST_TcNc_OperationModes       _ST_TcNC_PhasingRequest        _ST_TcNC_SetEncoderSaclingFactor       _ST_TcNC_SetPos       _ST_TcNC_SetPosOnTheFly       _ST_TcNC_StopInfoRequest       _ST_TcNC_StopInfoResponse       _ST_TcNc_TouchProbeActivation       _ST_TcNc_TouchProbeDeactivation        _ST_TcNc_TouchProbeStatusRequest    !   _ST_TcNc_TouchProbeStatusResponse    !   _ST_TcNC_UnversalAxisStartRequest    "   _ST_TcNC_UnversalAxisStartResponse       AXIS_REF       E_AxisErrorCodes       E_AxisPositionCorrectionMode       E_DestallDetectMode       E_DestallMode       E_DisableMode    	   E_JogMode       E_PhasingType       E_PositionType    
   E_ReadMode       E_SetScalingFactorMode       E_SignalEdge       E_SignalSource       E_SuperpositionAbortOption       E_SuperpositionMode       E_TouchProbe       E_TouchProbeMode       E_WorkDirection       MC_AxisParameter       MC_AxisStates       MC_BufferMode       MC_Direction       MC_HomingMode       MC_TouchProbeRecordedData       NCTOPLC_AXIS_REF       PLCTONC_AXIS_REF       ST_AdsAddress       ST_AxisComponents       ST_AxisOpModes       ST_AxisParameterSet       ST_AxisStatus       ST_BacklashCompensationOptions       ST_DriveAddress       ST_GearInDynOptions       ST_GearInMultiMasterOptions       ST_GearInOptions       ST_GearOutOptions       ST_HomingOptions       ST_McOutputs       ST_MoveOptions       ST_NcApplicationRequest       ST_PhasingOptions       ST_PositionCompensationOptions    #   ST_PositionCompensationTableElement    %   ST_PositionCompensationTableParameter       ST_PowerStepperStruct       ST_SetEncoderScalingOptions       ST_SetPositionOptions       ST_SuperpositionOptions       ST_TableCharacValues       TRIGGER_REF                  _F_GetIndexGroup @          _F_NcCycleCounterUpdated @       "   _F_NcNoOfCycleCounterUpdated @          _F_ReadStatus @          _F_TcMC_DWORD_TO_HEXSTR @          _F_TcMC_Round @          _F_UpdateNcCycleCounter @          _FB_MoveUniversalGeneric @       /   _FB_MoveUniversalGeneric.ActCalcDiffCmdNo @       .   _FB_MoveUniversalGeneric.ActErrorMessage @       8   _FB_MoveUniversalGeneric.ActMonitorContinousMotion @       7   _FB_MoveUniversalGeneric.ActMonitorDiscreteMotion @       -   _FB_MoveUniversalGeneric.ActMonitorStop @       0   _FB_MoveUniversalGeneric.ActNcCycleCounter @          _FB_PhasingGeneric @       '   _FB_PositionCorrectionTableLookup @       B   _FB_PositionCorrectionTableLookup.ActIsCompensationDirection @          _FB_ReadWriteParameter @          _FBAXIS_REF @          _FBAXIS_REF.ReadStatus @          _MC_HaltPhasing @          _MC_PhasingAbsolute @          _MC_PhasingRelative @          _TcMC_ADSRDWRT @          _TcMC_ADSREAD @          _TcMC_ADSWRITE @          _TCMCGLOBAL @           _TCMCGLOBAL.ReadDeviceInfo @          F_AxisCamDataQueued @          F_AxisCamScalingPending @          F_AxisCamTableQueued @          F_AxisControlLoopClosed @          F_AxisExternalLatchValid @           F_AxisGotNewTargetPosition @          F_AxisHasBeenStopped @          F_AxisHasExtSetPointGen @          F_AxisHasJob @          F_AxisInErrorState @          F_AxisInPositionWindow @          F_AxisInProtectedMode @          F_AxisInPTPmode @          F_AxisIoDataIsInvalid @          F_AxisIsAtTargetPosition @          F_AxisIsCalibrated @          F_AxisIsCalibrating @          F_AxisIsCompensating @          F_AxisIsCoupled @          F_AxisIsMoving @          F_AxisIsMovingBackwards @          F_AxisIsMovingEndless @          F_AxisIsMovingForward @          F_AxisIsNotMoving @          F_AxisIsReady @          F_AxisJobPending @           F_AxisMotionCommandsLocked @          F_AxisPhasingActive @       #   F_AxisReachedConstantVelocity @          F_GetVersion_TcMC2 @          MC_AbortSuperposition @          MC_AbortTrigger @          MC_AbortTrigger_V2_00 @          MC_BacklashCompensation @          MC_ExtSetPointGenDisable @          MC_ExtSetPointGenEnable @          MC_ExtSetPointGenFeed @          MC_GearIn @          MC_GearIn.ActGearInDyn @          MC_GearIn.WriteGearRatio @          MC_GearInDyn @          MC_GearInMultiMaster @       1   MC_GearInMultiMaster.ActGearInMultiMasterV1 @       1   MC_GearInMultiMaster.ActGearInMultiMasterV2 @          MC_GearOut @          MC_Halt @          MC_Home @          MC_Jog @          MC_Jog.ActCheckJogEnd @          MC_Jog.ActJogMove @          MC_MoveAbsolute @          MC_MoveAdditive @          MC_MoveContinuousAbsolute @          MC_MoveContinuousRelative @          MC_MoveModulo @       %   MC_MoveModulo.MC_MoveModuloCall @          MC_MoveRelative @          MC_MoveSuperImposed @          MC_MoveVelocity @          MC_OverrideFilter @       "   MC_PositionCorrectionLimiter @          MC_Power @          MC_PowerStepper @          MC_ReadActualPosition @          MC_ReadActualVelocity @          MC_ReadApplicationRequest @          MC_ReadAxisComponents @          MC_ReadAxisError @          MC_ReadBoolParameter @          MC_ReadDriveAddress @          MC_ReadParameter @          MC_ReadParameterSet @       2   MC_ReadParameterSet.ActGetSizeOfParameterSet @          MC_ReadStatus @          MC_ReadStopInfo @          MC_Reset @       $   MC_SetAcceptBlockedDriveSignal @           MC_SetEncoderScalingFactor @          MC_SetOverride @          MC_SetPosition @          MC_Stop @          MC_Stop.ActStop @       '   MC_TableBasedPositionCompensation @          MC_TouchProbe @       )   MC_TouchProbe.ActTouchProbeActivate @       0   MC_TouchProbe.ActTouchProbeMonitorActivity @       2   MC_TouchProbe.ActTouchProbeMonitorLatchValid @       0   MC_TouchProbe.ActTouchProbeMonitorPlcEvent @       ,   MC_TouchProbe.ActTouchProbeStartupInit @          MC_TouchProbe_V2_00 @       /   MC_TouchProbe_V2_00.ActTouchProbeActivate @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorActivity @       1   MC_TouchProbe_V2_00.ActTouchProbeMonitoring @       8   MC_TouchProbe_V2_00.ActTouchProbeMonitorLatchValid @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorPlcEvent @       2   MC_TouchProbe_V2_00.ActTouchProbeStartupInit @          MC_WriteBoolParameter @          MC_WriteParameter @             TcMC_GlobalConstants @          "    @      VisualObjectType                  Globale_Variablen @        1   &   BeginPaint @      Bitmap                   CalcRotation @          ChangePassword @           ChangeUserLevel @           CreateBitmap @           CreateUserdefinedControl @          DeleteBitmap @           DrawBitmap @           DrawBitmapByString @          DrawButton @           DrawEditC @           DrawPie @           DrawPolygon @           DrawRect @           DrawText @           EndPaint @           EnumToString @          ExecuteCommand @       #   ExecuteUserdefinedControlCall @          GetSurroundRect @          GetText @          GetTextByStringId @          GetUnicodeText @          GetUnicodeTextByStringId @          IsClickedEditC @           IsClickedPolygon @           IsClickedRect @           IsClosedEditC @           IsKeyPressed @           IsMovedInPolygon @          IsMovedInRect @          MovePolygon @          PopTransformation @           Printf @           PrintfInput @          PushTransformation @           RefreshUserdefinedControl @          RegisterVariable @          ReturnEnteredValue @           RGBColor @           SendBitmap @           SendEnum @          SetFill @           SetFont @           SetLine @           StopVisu @           StringToEnum @          TransformPoint @          Version2326 @          џ  Globale_Variablen @5      RTGraphic_VisuPositionYINT`      RTGraphic_CountDWORD`   
   NUMOFUSERS`      RTGraphic_Input_RectRight`      RTGraphic_RectBottom`      RTGraphic_Text`      RTGraphic_CenterX`      RTGraphic_CenterY`      LF_SOLID`   
   DF_HCENTER`   	   FF_ITALIC`      RTGraphic_VisuScaleINT`      RTGraphic_RectTop`      RTGraphic_String`      RTGraphic_Input_CenterX`      RTGraphic_Input_CenterY`   	   DF_BOTTOM`      RTGraphic_Input_RectLeft`      RTGraphic_IsClicked`      RTGraphic_Input_RectTop`      RTGraphic_dw`      RTGraphic_di`      RTGraphic_Input_lr`      FF_BOLD`      RTGraphic_PC`      RTGraphic_PB`      RTGraphic_VisuPositionXINT`      FF_UNDERLINED`      RTGraphic_Input_String`      RTGraphic_Input_nX`      RTGraphic_Input_nY`      RTGraphic_ChildVisuString`      RTGraphic_nY`      RTGraphic_nX`      DC_BLACK`      LF_NULL`      RTGraphic_ResBool`      RTGraphic_RectLeft`   
   DF_VCENTER`      RTGraphic_lr`      RTGraphic_Input_di`      DF_TOP`      RTGraphic_Input_dw`      RTGraphic_ButtonIsClicked`      RTGraphic_RectRight`      FF_STRIKEDOUT`      FF_NULL`      RTGraphic_MotherVisuString`      RTGraphic_Input_RectBottom`      DF_LEFT`      FF_SOLID`      DC_WHITE`      DF_RIGHT`             F_CXNaviSwitch @	      E_CX1100_DisplayModes       E_CX1100_NaviSwitch       E_CX2100_DisplayModesRd       E_CX2100_DisplayModesWr       E_CX2100_NaviSwitch       E_UPS_STATE       ST_CX_ProfilerStruct       ST_CxDeviceIdentification       ST_CxDeviceIdentificationEx                  F_CXNaviSwitchUSB @          F_CXSubTimeStamp @          F_GetVersionTcSystemCX @       "   FB_CxGetDeviceIdentification @       $   FB_CxGetDeviceIdentificationEx @          FB_CXGetTextDisplayUSB @          FB_CXProfiler @          FB_CXSetTextDisplay @          FB_CXSetTextDisplayUSB @          FB_CXSimpleUps @          I   Global_Constants @      IOADS_IGR_IODEVICESTATE_BASE      iLength         З  _ReceiveString @   	   ComBuffer       ComDebugBuffer    
   ComError_t       ComHandshake_t       ComParity_t       ComRegisterData_t       ComRegisterList_t       ComSerialLineMode_t       EL6inData22B       EL6outData22B       IE6inData11B       IE6outData11B    	   KL6inData       KL6inData22B       KL6inData5B    
   KL6outData       KL6outData22B       KL6outData5B       PcComInData       PcComOutData                  _SendString @          _strncpy @       	   ASC @       	   CHR @          ClearComBuffer @          ComReset @          Get_ComLib_Version @          KL6configuration @          KL6ReadRegisters @          KL6WriteRegisters @          ReceiveByte @          ReceiveData @          ReceiveString @          ReceiveString255 @          SendByte @          SendData @          SendString @          SendString255 @          SerialLineControl @          "   Global_Constants_ComLibSizes @       $   Global_Constants_ComLibVersion @                                            2                џџџџџџџџџџџџџџџџ  
             њџџџ  k_5_wbni        јџџџ,   МЊ                      POUs
               AutoMode                 Auto                     ConeFeedConv                     ConeFeedPiston                  	   DataLog_1                     DATALOG_PRINT                    DATALOG_REPORT                    Fb_FormatDrive  *                   FlimRollerUnit                  	   FwdPiston                      One_Min_Conv  !                   PARAMETER_SETTINGS                    Sealing_Conveyor  "                   Sealing_Unit  #                   UnitA_RowStopper  $                   UnitB_RowStopper  %                   Wrapping_Unit  &   џџџџ              FunctionBlocks                 DATA_LOG_Save  '                   Fb_CopyFileToRemotePC  (                   Fb_CreateFileFormat  )                   RS_Error  +                	   SenSelect  ,   џџџџ              Manual                 Manual  -   џџџџ           
   New Folder                 ConeAllignAlarm  .                   ConeMiss_Alarm  /                   Cylinder_Alarm  0   џџџџ             Startup                 blink  1                   INT_All  2                   SealingConvRst  3                   SealingUnitRst  4                   WrapConvRst  5   џџџџ                Common  6                   MAIN  7                   Outputs  8                   Serial  9                
   WeightCalc  :   џџџџ           
   Data types                 Production_Data  ;                  ProductionData_IndoPrint1                    ProductionData_PrintData                    ST_CSV_Record  <   џџџџ              Visualizations	                 A  =                   ALARM  >                   ALARM_2  ?                   AUTO1  @                   DIAGNOSTICS  A                   DIAGNOSTICS_1  B                  OVERVIEW                 
   PARAMETERS  Ч                  PARAMETERS_SAVE    џџџџ              Global Variables              	   GVL_Alarm                    GVL_Auto                     GVL_Hmi                  
   GVL_Inputs                  
   GVL_Manual                     GVL_OutputFlags                     GVL_Outputs                  	   GVL_Reset                  
   GVL_Serial                 
   PARAMETERS                    PRINT                    TwinCAT_Configuration                    TwinCAT_Configuration_1  
                   Variable_Configuration     џџџџ                                                              япV                         	   localhost            P      	   localhost            P      	   localhost            P     wУ`  9ЁўM