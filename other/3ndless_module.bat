REM Last-¨ª ActivityView

@ECHO OFF

REM  ¤¥îáì, á®åà ­¨âì ä ©« ¢ ª®¤¨à®¢ª¥ DOS-866 ­¥ § ¡ë«¨
CHCP 866

REM ‡¥«¥­ë© ­  ç¥à­®¬ - ¨­âà¨£ãîé¥... ®¯ïâì ¦¥, å ª¥àë ¨ ¢á¥ â ª®¥
COLOR A

CLS


REM ----------------------------------------------------------------------------------------
REM à®¢¥àª  ­  ­ «¨ç¨¥ ¯à ¢  ¤¬¨­¨áâà â®à  
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
	IF (%adminTest%)==(Žâª § ­®) GOTO errNoAdmin
	IF (%adminTest%)==(Access) GOTO errNoAdmin
REM ----------------------------------------------------------------------------------------


REM !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

REM à¨ ¢ë¡®à¥ ¯ã­ªâ  1 ­¨ç¥£® ®á®¡® ¯«®å®£® ¯à®¨§®©â¨, ¤«ï ¯®«ì§®¢ â¥«ï, ­¥ ¤®«¦­®.
REM ® ¡ã¤ãâ ã¤ «¥­ë á®åà ­¥­­ë¥ ¤ ­­ë¥ ® à §¬¥à å ®ª®­ ¯ ¯®ª ¢ ¯à®¢®¤­¨ª¥ ¨ ­ áâà®©ª¨ ¨å ¢¨¤  (á¯¨á®ª\íáª¨§ë ¨ â.¤.)

REM à¨ ¢ë¡®à¥ ¯.¯. 2-3
REM 1. à¨ ¯¥à¢®© ¯¥à¥§ £àã§ª¥ çãâì-çãâì § ¬¥¤«¨âáï § ¯ãáª Windows â.¥. ¯¥à¢ë©, ¯®á«¥ ­¥¥, § ¯ãáª ­¥ª®â®àëå ¯à®£à ¬¬ (¢ â.ç. ¢  ¢â®§ £àã§ª¥)
REM    ¨§-§  ã¤ «¥­¨ï ä ©«®¢ ®¯â¨¬¨§ æ¨¨ § ¯ãáª  Prefetch ¨ SuperFetch
REM 2. ã¤¥â ã¤ «¥­  ¨­ä®à¬ æ¨ï ® § ¯ãáª¥ ¯à®£à ¬¬ ¢ à¥¦¨¬¥ á®¢¬¥áâ¨¬®áâ¨ ¨«¨ ® § ¯ãáª¥ ®â ¨¬¥­¨  ¤¬¨­¨áâà â®à 
REM    ­® íâ® - ¥á«¨ ¯®«ì§®¢ â¥«ì â ª®¥ ­ §­ ç « ¤«ï ç¥£®-â® ¨ ¢®ááâ ­ ¢«¨¢ ¥âáï ­ §­ ç¥­¨¥¬ íâ®£® § ­®¢®
REM    ¨«¨ ­ ©¤¨â¥ ¨ ã¡¥à¨â¥ ¨§ áªà¨¯â  ã¤ «¥­¨¥ ¤ ­­ëå ¨§ ...AppCompatFlags\Layers
REM 3. ã¤¥â ã¤ «¥­  ­ ª®¯«¥­­ ï ¤® íâ®£® ¬®¬¥­â  ¨­ä®à¬ æ¨ï ® ¯à®¨§¢®¤¨â¥«ì­®áâ¨ ¨ ®è¨¡ª å
REM    ­®, ¥á«¨ ¢ â¥ªãé¨© ¬®¬¥­â á ª®¬¯®¬ ¢á¥ ­®à¬ «ì­® ¨ ¥£® ­¥ ­ ¤® " ­ «¨§¨à®¢ âì ¨ ç¨­¨âì", â® â®¦¥ ­¨ç¥£® áâà è­®£®

REM !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

REM ----------------------------------------------------------------------------------------
REM Œ¥­î ¢ë¡®à  ¯®«ì§®¢ â¥«ï

ECHO.
ECHO ¥ ®¡ï§ â¥«ì­®!
ECHO ­® ¦¥« â¥«ì­® § ªàëâì ¢á¥ ¯à®£à ¬¬ë ¨ ¤ ­­ë© ä ©«, ¥á«¨ ®­ ®âªàëâ ¢ â¥ªáâ®¢®¬ à¥¤ ªâ®à¥,   ¯®á«¥ § ¢¥àè¥­¨ï - ¯¥à¥§ £àã§¨âìáï
ECHO.
ECHO.

REM — áâì ¨­ä®à¬ æ¨¨ ®áâ ­¥âáï, ¨ ¡ã¤¥â â ª¨ ®â®¡à ¦ âìáï ¢ ãâ¨«¨â å NirSoft
ECHO 1 - Žç¨áâª  ®á­®¢­ëå «®£®¢ ¢ à¥¥áâà¥

REM “¤ «¨âì ¢á¥, çâ® ã¤ «®áì ­ ©â¨. 
REM (¯®çâ¨ ¢áï ¨­ä®à¬ æ¨ï ¨§ ãâ¨«¨â NirSoft ¯à®¯ ¤¥â)
REM à¨ íâ®¬:
REM 1. ¥¬­®£® § ¬¥¤«¨âáï á«¥¤ãîé ï § £àã§ª  Š ¨ ¯¥à¢ë©, ¯®á«¥ ­¥¥, § ¯ãáª ­¥ª®â®àëå ¯à®£à ¬¬ (¨§-§  ã¤ «¥­¨ï Perfect ¨ SuperFetch)
REM 2. “¤ «ïâáï á¢¥¤¥­¨ï ® à ­¥¥ ¢®§­¨ªè¨å ®è¨¡ª å (Minidump)
REM 3. ‚ ¬¥­î "ãáª" ®ç¨áâ¨âáï á¯¨á®ª à ­¥¥ § ¯ãé¥­­ëå ¯à®£à ¬¬
REM 4. ã¤¥â ®ç¨é¥­ á¯¨á®ª â¥å ¯à®£à ¬¬, ¤«ï ª®â®àëå ¯®«ì§®¢ â¥«ì § ¤ « "§ ¯ãáª âì ¢ à¥¦¨¬¥ á®¢¬¥áâ¨¬®áâ¨ ¨«¨ ®â ¨¬¥­¨  ¤¬¨­¨áâà â®à ". 
REM	  (­ ¤® ¡ã¤¥â § ¤ ¢ âì ¤«ï ­¨å á®¢¬¥áâ¨¬®áâì § ­®¢®)
ECHO 2 - Žç¨áâª  ¢á¥å «®£®¢ ¢ à¥¥áâà¥, ä ©«®¢ Perfect ¨ Minidump

REM ‘¬. ¯.2 + á®âàãâáï à ­¥¥ § ¯¨á ­­ë¥ ¤ ­­ë¥ ¦ãà­ «®¢ Windows
ECHO 3 - Žç¨áâª  ¢á¥å «®£®¢, ä ©«®¢ Perfect ¨ ¦ãà­ «®¢ Windows

ECHO ¨«¨ ­ ¦¬¨â¥ ENTER ¤«ï ¢ëå®¤ 
ECHO.
SET /p doset="‚ë¡¥à¨â¥ ¤¥©áâ¢¨¥: " 
ECHO.
REM ----------------------------------------------------------------------------------------


REM ----------------------------------------------------------------------------------------
REM à®¢¥àª  ¢ë¡®à  ¯®«ì§®¢ â¥«ï. …á«¨ ­¥ 1 ¨ ­¥ 2 ¨ ­¥ 3 - ¢ëå®¤
IF %doset% NEQ 1 (
	IF %doset% NEQ 2 (
		IF %doset% NEQ 3 EXIT
	)
)
REM ----------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM Žç¨áâª  ¢á¥å ¦ãà­ «®¢ Windows, ¥á«¨ ¯®«ì§®¢ â¥«ì ¢ë¡à « ¢ ¬¥­î 3. à®¢®¤¨¬ ¢­ ç «¥, çâ®¡ ¢ «®£ å ­¥ ®áâ «®áì ¢ë§®¢®¢ wevtutil
REM ãâ¨«¨âë NirSoft - LastActivityView
IF %doset% EQU 3 (
	ECHO.
	ECHO Ž—ˆ‘’Š€ ‚‘…• †“€‹Ž‚ Windows
	FOR /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
	ECHO.
	ECHO ‚ë¯®«­¥­®
	ECHO.
)
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM ShellBag. ˆáâ®à¨ï § ¯ãáª  ¯à¨«®¦¥­¨© ¨ ¤®áâã¯  ª ¯ ¯ª ¬, á¢ï§ ­­ ï á "®¡®«®çª®©"
REM ãâ¨«¨âë NirSoft - LastActivityView, ExecutedProgramsList, ShellBagsView
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ ShellBag - à¥¥áâà
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
ECHO.
REM ------------------------------------------------------------------------------------------

REM ------------------------------------------------------------------------------------------
REM Explorer. ˆáâ®à¨ï § ¯ãáª  ¯à¨«®¦¥­¨© á¢ï§ ­­ ï á "à®¢®¤­¨ª®¬"
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ Explorer - à¥¥áâà
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /va /f
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM ComDlg32. ˆáâ®à¨ï ¤¨ «®£®¢ "®âªàëâì\á®åà ­¨âì" ¨ "¯®á«¥¤­¨å ¬¥áâ ¯®á¥é¥­¨©"
REM ãâ¨«¨âë NirSoft - LastActivityView
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ OpenSave ¨ LastVisited - à¥¥áâà
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\FirstFolder" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /va /f
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /va /f
REM (ãâ¨«¨âë NirSoft - OpenSaveFilesView)
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU"
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM ¥á«¨ ¯®«ì§®¢ â¥«ì ¢ë¡à « ¢ ¬¥­î ­¥ 1 â.¥. 2 ¨«¨ 3
IF %doset% NEQ 1 (	
	REM UserAssist. Žç¨áâª  á¯¨á®ª  § ¯ãé¥­­ëå ¯à®£à ¬¬ ¢ ¬¥­î "ãáª"
	REM ãâ¨«¨âë NirSoft - UserAssistView
	ECHO.	
	ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ UserAssist - à¥¥áâà
	REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
	REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist"
	ECHO.
)


REM ------------------------------------------------------------------------------------------
REM AppCompatCache
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ AppCompatCache - à¥¥áâà
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /va /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /va /f
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM DiagnosedApplications. „¨ £­®áâ¨ª  ãâ¥ç¥ª ¯ ¬ïâ¨ ¢ ¯à¨«®¦¥­¨¨ Ž‘ Windows
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ DiagnosedApplications - à¥¥áâà
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications" /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications"
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM ®«ãç¥­¨¥ SID - ¨¤¥­â¨ä¨ª â®à ¡¥§®¯ á­®áâ¨ â¥ªãé¥£® ¯®«ì§®¢ â¥«ï 
FOR /F "tokens=2" %%i IN ('whoami /user /fo table /nh') DO SET usersid=%%i
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM Search. ˆáâ®à¨ï ¯®¨áª  
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ Search - à¥¥áâà
	REG DELETE "HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps" /f
	REG ADD "HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Search\RecentApps"
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM BAM. 
REM ® ¨¤¥¥, ¯à¨ ¯¥à¥§ £àã§ª¥ § âà¥âáï á ¬®.  
REM ® ¬®¦­® á¤¥« âì ®â¤¥«ì­ë© bat ¨ § ¯ãáª âì, ­ ¯à¨¬¥à, ¯®á«¥ à ¡®âë á portable-¯à¨«®¦¥­¨ï¬¨
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ á«ã¦¡ë Background Activity Moderator - à¥¥áâà
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam\UserSettings\%usersid%" /va /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\UserSettings\%usersid%" /va /f
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM AppCompatFlags
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ AppCompatFlags - à¥¥áâà
REM ãâ¨«¨âë NirSoft - ExecutedProgramsList
REG DELETE "HKEY_USERS\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /va /f

REM ¥á«¨ ¯®«ì§®¢ â¥«ì ¢ë¡à « ¢ ¬¥­î ­¥ 1 â.¥. 2 ¨«¨ 3
IF %doset% NEQ 1 (
	REM ‘¯¨á®ª ¯à®£à ¬¬, ¤«ï ª®â®àëå § ¤ ­ "à¥¦¨¬ á®¢¬¥áâ¨¬®áâ¨" ¨«¨ "§ ¯ãáª âì ®â ¨¬¥­  ¤¬¨­¨áâà â®à "
	REM ãâ¨«¨âë NirSoft - AppCompatibilityView
	REG DELETE  "HKEY_USERS\%usersid%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /va /f
)
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM ˆáâ®à¨ï "¬®­â¨à®¢ ­¨ï" ¤¨áª®¢ ¢ â.ç. ¨ TrueCrypt
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ MountedDevices - à¥¥áâà
ECHO.
REG DELETE "HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2" /f
REG ADD "HKEY_USERS\%usersid%\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2"
ECHO.
REM ------------------------------------------------------------------------------------------


REM ------------------------------------------------------------------------------------------
REM Žç¨áâª  á¯¨áª®¢ ¡ëáâà®£® ¯¥à¥å®¤ 
ECHO.
REM ãâ¨«¨âë NirSoft - JumpListsView, RecentFilesView
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ Recent - ä ©«®¢ ï á¨áâ¥¬ 
DEL /f /q %APPDATA%\Microsoft\Windows\Recent\*.*
DEL /f /q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*.*
DEL /f /q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*.*
ECHO ‚ë¯®«­¥­®
ECHO.
REM ------------------------------------------------------------------------------------------

REM ------------------------------------------------------------------------------------------
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ Panther - ä ©«®¢ ï á¨áâ¥¬ 
DEL /f /q %systemroot%\Panther\*.*
ECHO ‚ë¯®«­¥­®
ECHO.
REM ------------------------------------------------------------------------------------------

REM ------------------------------------------------------------------------------------------
ECHO.
ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ AppCompat - ä ©«®¢ ï á¨áâ¥¬ 
DEL /f /q %systemroot%\appcompat\Programs\*.dll
DEL /f /q %systemroot%\appcompat\Programs\*.exe
DEL /f /q %systemroot%\appcompat\Programs\*.txt
DEL /f /q %systemroot%\appcompat\Programs\*.xml
DEL /f /q %systemroot%\appcompat\Programs\Install\*.txt
DEL /f /q %systemroot%\appcompat\Programs\Install\*.xml
DEL /f /q %systemroot%\appcompat\Programs\Install\*.dll
DEL /f /q %systemroot%\appcompat\Programs\Install\*.exe
ECHO ‚ë¯®«­¥­®
ECHO.
REM ----


REM ------------------------------------------------------------------------------------------
IF %doset% NEQ 1 (
	ECHO.
	REM Prefetch. “¤ «¥­¨¥ ä ©«®¢, ®¯â¨¬¨§¨àãîé¨å § ¯ãáª ¯à¨«®¦¥­¨©. Windows ¢ á«¥¤ãîé¨© à § § £àã§¨âáï ¬¥¤«¥­­¥¥
	REM ãâ¨«¨âë NirSoft - LastActivityView, ExecutedProgramsList
	ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ Prefetch - ä ©«®¢ ï á¨áâ¥¬ 
	DEL /f /q %systemroot%\Prefetch\*.pf
	DEL /f /q %systemroot%\Prefetch\*.ini
	DEL /f /q %systemroot%\Prefetch\*.7db
	DEL /f /q %systemroot%\Prefetch\*.ebd
	DEL /f /q %systemroot%\Prefetch\*.bin
	REM SuperFetch. “¤ «¥­¨¥ ¡ § ®¯â¨¬¨§ æ¨¨ SuperFetch
	DEL /f /q %systemroot%\Prefetch\*.db
	REM Trace. “¤ «¥­¨¥ ä ©«®¢ âà áá¨à®¢ª¨
	DEL /f /q %systemroot%\Prefetch\ReadyBoot\*.fx
	ECHO ‚ë¯®«­¥­®
	ECHO.

	ECHO.
	ECHO Ž—ˆ‘’Š€ ˆ‘’Žˆˆ Minidump - ä ©«®¢ ï á¨áâ¥¬ 
	REM “¤ «¥­¨¥ ¤ ¬¯®¢ ®è¨¡®ª
	REM ãâ¨«¨âë NirSoft - LastActivityView
	DEL /f /q %systemroot%\Minidump\*.*
	ECHO ‚ë¯®«­¥­®
)
ECHO.
REM ------------------------------------------------------------------------------------------


PAUSE
EXIT

:do_clear
ECHO Žç¨áâª  ¦ãà­ «  %1
wevtutil.exe cl %1
GOTO :eof

:errNoAdmin
COLOR 4
ECHO ¥®¡å®¤¨¬® § ¯ãáâ¨âì íâ®â áªà¨¯â ®â ¨¬¥­¨  ¤¬¨­¨áâà â®à 
ECHO.
PAUSE
