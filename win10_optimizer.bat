@echo off
chcp 65001 >nul
title F1NTY_SETUP_v3 - RU/EN bilingual

:: ============================================================
::  F1NTY_SETUP_v3 - bilingual RU/EN, UTF-8 (no BOM)
::  Block C = 45 services disabled, Block R = 25 in demand.
::  RUN AS ADMIN. Do NOT resave with BOM or another encoding.
::  If console text shows boxes: right-click title bar,
::  Properties, Font, Consolas / Lucida Console.
:: ============================================================

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo  [!] Нужны права администратора / Administrator rights required.
    echo      Правый клик по файлу: "Запуск от имени администратора"
    echo      Right-click the file: "Run as administrator"
    echo.
    pause
    exit /b 1
)

:LANGSEL
cls
echo.
echo  ================================================
echo    ВЫБОР ЯЗЫКА / LANGUAGE
echo  ================================================
echo    [1] Русский
echo    [2] English
echo  ================================================
echo.
echo    Если текст - квадратики: правый клик по заголовку окна,
echo    Свойства, Шрифт, Consolas / Lucida Console.
echo    If text shows boxes: right-click the title bar,
echo    Properties, Font, Consolas / Lucida Console.
echo.
set /p lang="  [1/2]: "
if "%lang%"=="1" goto SET_RU
if "%lang%"=="2" goto SET_EN
goto LANGSEL

:SET_RU
set "MT= Оптимизация от F1NTY_TT под Windows 10 ( любая редакция )"
set "M1= Полный прогон: блоки 2+3+4+5+8"
set "M2= Блок С: снос 45 служб (disabled)"
set "M3= Блок Р: 25 служб в ручной (demand)"
set "M4= Драйверы: запрет автоскачивания"
set "M5= Телеметрия + планировщик + UWP"
set "M6= ОТКАТ выборочно"
set "M7= Памятка"
set "M8= Память: склейка svchost (требуется перезагрузка)"
set "M0= Выход"
set "P=  Выбор: "
set "DF1= === ПОЛНЫЙ ПРОГОН ЗАВЕРШЁН. Перезагрузись. ==="
set "DF2=     Затем замер: ОЗУ и число процессов в простое"
set "BC= === БЛОК С: снос служб ==="
set "H_TELEM= --- Телеметрия ---"
set "H_SEC= --- Безопасность (сетевая инспекция Defender) ---"
set "H_UPD= --- Обновления ---"
set "H_PRINT= --- Печать и сканеры ---"
set "H_STORE= --- Хранилище ---"
set "H_REMOTE= --- Удалённый доступ ---"
set "H_PERIPH= --- Периферия и драйверы ---"
set "H_ACCTS= --- Учётки и Store ---"
set "H_PERUSER= --- Per-user шаблоны (реестром) ---"
set "H_HV= --- Hyper-V гость ---"
set "H_MISC= --- Прочее ---"
set "BC_DONE= Блок С готов: 45 служб в disabled."
set "BR= === БЛОК Р: службы в ручной режим ==="
set "BR_DONE= Блок Р готов: 25 служб в demand."
set "BD= === ДРАЙВЕРЫ: запрет автоскачивания ==="
set "BD_DONE= Готово. Установленные драйверы не тронуты, новые не качаются."
set "BT= === ТЕЛЕМЕТРИЯ-РЕЕСТР ==="
set "BS= === ПЛАНИРОВЩИК ==="
set "BU= === UWP-ФОН ==="
set "BN= === УВЕДОМЛЕНИЯ ==="
set "BN2= Панель центра уведомлений отключена, всплывающие тосты работают."
set "BT_DONE= Готово. После ребута проверь RuntimeBroker в диспетчере."
set "BM= === ПАМЯТЬ: склейка svchost ==="
set "BM_DONE= Готово. Нужна перезагрузка."
set "BM_HINT= Проверка: число процессов svchost и ОЗУ в простое до/после."
set "RT= === ОТКАТ ВЫБОРОЧНО ==="
set "R1= Блок С: вернуть 45 служб в исходное"
set "R2= Старые сносы v3/v4: вернуть в исходное"
set "R3= Драйверы: вернуть автоскачивание"
set "R4= UWP-фон и центр уведомлений: вернуть"
set "R5= Память: вернуть стоковый порог svchost"
set "R6= Назад в меню"
set "RC_DONE= Готово. Per-user возвращены в 3, авто-службы в 2, Wpn на стоке."
set "RO_DONE1= Готово. Точки восстановления включены обратно - самих точек нет,"
set "RO_DONE2= они создадутся заново при настройке защиты системы."
set "RD_DONE= Готово. Автоскачивание драйверов снова активно."
set "RU_DONE= Готово. Фон UWP и центр уведомлений снова активны."
set "RM_DONE= Готово. Порог возвращён на 3670016. Нужна перезагрузка."
set "HT= ================= ПАМЯТКА ================="
set "HP1= Скрипт оптимизации от F1NTY_TT отключает системные службы и переводит их в ручной режим — службы не работают в фоне и запускаются только при необходимости, что снижает потребление ОЗУ и нагрузку на ЦП. Отключает 46 служб, переводит в ручной режим 26. При необходимости доступен выборочный откат."
goto MENU

:SET_EN
set "MT= F1NTY_TT optimization for Windows 10 ( any edition )"
set "M1= Full run: blocks 2+3+4+5+8"
set "M2= Block C: 45 services to disabled"
set "M3= Block R: 25 services to manual (demand)"
set "M4= Drivers: block auto-download"
set "M5= Telemetry + scheduler + UWP"
set "M6= SELECTIVE ROLLBACK"
set "M7= Help"
set "M8= Memory: svchost grouping (reboot needed)"
set "M0= Exit"
set "P=  Choice: "
set "DF1= === FULL RUN DONE. Reboot now. ==="
set "DF2=     Then measure: idle RAM and process count"
set "BC= === BLOCK C: killing services ==="
set "H_TELEM= --- Telemetry ---"
set "H_SEC= --- Security (Defender network inspection) ---"
set "H_UPD= --- Updates ---"
set "H_PRINT= --- Print and scanners ---"
set "H_STORE= --- Storage ---"
set "H_REMOTE= --- Remote access ---"
set "H_PERIPH= --- Peripherals and drivers ---"
set "H_ACCTS= --- Accounts and Store ---"
set "H_PERUSER= --- Per-user templates (registry) ---"
set "H_HV= --- Hyper-V guest ---"
set "H_MISC= --- Misc ---"
set "BC_DONE= Block C done: 45 services disabled."
set "BR= === BLOCK R: services to manual ==="
set "BR_DONE= Block R done: 25 services in demand."
set "BD= === DRIVERS: blocking auto-download ==="
set "BD_DONE= Done. Installed drivers untouched, new ones will not auto-download."
set "BT= === TELEMETRY REGISTRY ==="
set "BS= === SCHEDULER ==="
set "BU= === UWP BACKGROUND ==="
set "BN= === NOTIFICATIONS ==="
set "BN2= Notification center panel hidden, toast popups keep working."
set "BT_DONE= Done. After reboot check RuntimeBroker in Task Manager."
set "BM= === MEMORY: svchost grouping ==="
set "BM_DONE= Done. Reboot required."
set "BM_HINT= Check: svchost process count and idle RAM before/after."
set "RT= === SELECTIVE ROLLBACK ==="
set "R1= Block C: restore 45 services"
set "R2= Old v3/v4 kills: restore"
set "R3= Drivers: restore auto-download"
set "R4= UWP background and notification center: restore"
set "R5= Memory: restore stock svchost threshold"
set "R6= Back to menu"
set "RC_DONE= Done. Per-user back to 3, auto services to 2, Wpn at stock."
set "RO_DONE1= Done. System Restore re-enabled - no points exist yet,"
set "RO_DONE2= they will be created when you configure System Protection."
set "RD_DONE= Done. Driver auto-download is active again."
set "RU_DONE= Done. UWP background and notification center are active again."
set "RM_DONE= Done. Threshold restored to 3670016. Reboot required."
set "HT= ================= HELP ================="
set "HP1= Optimization script by F1NTY_TT disables system services or sets them to manual mode — services stop running in the background and only start when needed, reducing RAM usage and CPU load. Disables 46 services and switches 26 to manual. Selective rollback is available if needed."
goto MENU

:MENU
cls
echo.
echo  ================================================
echo  %MT%
echo  ================================================
echo   [1] %M1%
echo   [2] %M2%
echo   [3] %M3%
echo   [4] %M4%
echo   [5] %M5%
echo   [6] %M6%
echo   [7] %M7%
echo   [8] %M8%
echo   [0] %M0%
echo  ================================================
echo.
set /p choice="%P%"

if "%choice%"=="1" goto FULL
if "%choice%"=="2" goto BLOCK_C
if "%choice%"=="3" goto BLOCK_R
if "%choice%"=="4" goto BLOCK_DRV
if "%choice%"=="5" goto BLOCK_TELEM
if "%choice%"=="6" goto ROLLBACK
if "%choice%"=="7" goto HELP
if "%choice%"=="8" goto BLOCK_MEM
if "%choice%"=="0" exit /b 0
goto MENU

:FULL
call :blockC
call :blockR
call :blockDrv
call :blockTelem
call :blockMem
echo.
echo %DF1%
echo %DF2%
pause
goto MENU

:BLOCK_C
call :blockC
pause
goto MENU

:BLOCK_R
call :blockR
pause
goto MENU

:BLOCK_DRV
call :blockDrv
pause
goto MENU

:BLOCK_TELEM
call :blockTelem
pause
goto MENU

:BLOCK_MEM
call :blockMem
pause
goto MENU

:ROLLBACK
cls
echo.
echo  %RT%
echo   [1] %R1%
echo   [2] %R2%
echo   [3] %R3%
echo   [4] %R4%
echo   [5] %R5%
echo   [6] %R6%
echo.
set /p rb="%P%"

if "%rb%"=="1" call :rollbackC
if "%rb%"=="2" call :rollbackOld
if "%rb%"=="3" call :rollbackDrv
if "%rb%"=="4" call :rollbackUWP
if "%rb%"=="5" call :rollbackMem
if "%rb%"=="6" goto MENU
pause
goto MENU

:HELP
cls
echo.
echo  %HT%
echo.
echo  %HP1%
echo.
pause
goto MENU

:: ============================================================
:: БЛОК С: СНОСИМ (disabled)
:: ============================================================
:blockC
echo.
echo %BC%

echo  %H_TELEM%
sc config IEEtwCollectorService start= disabled 2>nul

echo  %H_SEC%
net stop WdNisSvc 2>nul
sc config WdNisSvc start= disabled 2>nul

echo  %H_UPD%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t REG_DWORD /d 4 /f >nul
sc config wisvc start= disabled 2>nul

echo  %H_PRINT%
sc config PrintNotify start= disabled 2>nul
sc config stisvc start= disabled 2>nul

echo  %H_STORE%
sc config SDRSVC start= disabled 2>nul

echo  %H_REMOTE%
sc config RemoteAccess start= disabled 2>nul
sc config SessionEnv start= disabled 2>nul
sc config TermService start= disabled 2>nul
sc config UmRdpService start= disabled 2>nul
sc config WinRM start= disabled 2>nul

echo  %H_PERIPH%
sc config TabletInputService start= disabled 2>nul
sc config WacomPen start= disabled 2>nul
sc config DsmSvc start= disabled 2>nul

echo  %H_ACCTS%
sc config wlidsvc start= disabled 2>nul
sc config TokenBroker start= disabled 2>nul
sc config InstallService start= disabled 2>nul
sc config NgcSvc start= disabled 2>nul

echo  %H_PERUSER%
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v Start /t REG_DWORD /d 4 /f >nul
sc config cbdhsvc start= disabled 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v Start /t REG_DWORD /d 4 /f >nul
sc config PimIndexMaintenanceSvc start= disabled 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d 4 /f >nul
sc config MessagingService start= disabled 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d 4 /f >nul
sc config UnistoreSvc start= disabled 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v Start /t REG_DWORD /d 4 /f >nul
sc config UdkUserSvc start= disabled 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d 4 /f >nul
sc config DevicesFlowUserSvc start= disabled 2>nul

echo  %H_HV%
net stop HvHost 2>nul
sc config HvHost start= disabled 2>nul
sc config vmickvpexchange start= disabled 2>nul
sc config vmicguestinterface start= disabled 2>nul
sc config vmicheartbeat start= disabled 2>nul
sc config vmicshutdown start= disabled 2>nul
sc config vmictimesync start= disabled 2>nul
sc config vmicvss start= disabled 2>nul
sc config vmicrdv start= disabled 2>nul
sc config vmicvmsession start= disabled 2>nul

echo  %H_MISC%
sc config AssignedAccessManagerSvc start= disabled 2>nul
sc config BDESVC start= disabled 2>nul
sc config DeviceSetupManager start= disabled 2>nul
sc config EFS start= disabled 2>nul
sc config MSDTC start= disabled 2>nul
sc config MSiSCSI start= disabled 2>nul
sc config ScPolicySvc start= disabled 2>nul
sc config SharedAccess start= disabled 2>nul
sc config TapiSrv start= disabled 2>nul
sc config WbioSrvc start= disabled 2>nul
sc config wcncsvc start= disabled 2>nul

echo %BC_DONE%
goto :eof

:: ============================================================
:: БЛОК Р: ВРУЧНУЮ (demand)
:: ============================================================
:blockR
echo.
echo %BR%

sc config diagsvc start= demand 2>nul
sc config pla start= demand 2>nul
sc config UsoSvc start= demand 2>nul
sc config wuauserv start= demand 2>nul
sc config BITS start= demand 2>nul
sc config VSS start= demand 2>nul
sc config swprv start= demand 2>nul
sc config FrameServer start= demand 2>nul
sc config DeviceAssociationService start= demand 2>nul
sc config LicenseManager start= demand 2>nul
sc config ClipSVC start= demand 2>nul
sc config seclogon start= demand 2>nul
sc config UserDataSvc start= demand 2>nul
sc config NPSMSvc start= demand 2>nul
sc config ConsentUxUserSvc start= demand 2>nul
sc config BcastDVRUserService start= demand 2>nul
sc config CapturePicker start= demand 2>nul
sc config Netlogon start= demand 2>nul
sc config PerfHost start= demand 2>nul
sc config QWAVE start= demand 2>nul
sc config ShellHWDetection start= demand 2>nul
sc config svsvc start= demand 2>nul
sc config TimeBrokerSvc start= demand 2>nul
sc config wlpasvc start= demand 2>nul
sc config CertPropSvc start= demand 2>nul

echo %BR_DONE%
goto :eof

:: ============================================================
:: БЛОК ДРАЙВЕРЫ: ЗАПРЕТ АВТОСКАЧИВАНИЯ
:: ============================================================
:blockDrv
echo.
echo %BD%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v ExcludeWUDriversInQualityUpdate /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f >nul
echo %BD_DONE%
goto :eof

:: ============================================================
:: БЛОК ПАМЯТЬ: СКЛЕЙКА SVCHOST
:: ============================================================
:blockMem
echo.
echo %BM%
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 8388608 /f >nul
echo %BM_DONE%
echo %BM_HINT%
goto :eof

:: ============================================================
:: БЛОК ТЕЛЕМЕТРИЯ/ПЛАНИРОВЩИК/UWP (из старых скриптов)
:: ============================================================
:blockTelem
echo.
echo %BT%
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpynetReporting /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v CEIPEnable /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 0 /f >nul
del /f /q "%ProgramData%\Microsoft\Diagnosis\ETLLogs\AutoLogger\*.etl" 2>nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v TailoredExperiencesWithDiagnosticDataEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v DODownloadMode /t REG_DWORD /d 0 /f >nul

echo %BS%
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Maps\MapsToastTask" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Maps\MapsUpdateTask" /disable >nul 2>&1

echo %BU%
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul

echo %BN%
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableNotificationCenter /t REG_DWORD /d 1 /f >nul
sc config WpnService start= auto 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" /v Start /t REG_DWORD /d 3 /f >nul
sc config PushToInstall start= disabled 2>nul
sc config AppReadiness start= demand 2>nul
echo %BN2%
echo %BT_DONE%
goto :eof
:: ============================================================
:: ОТКАТЫ
:: ============================================================
:rollbackC
echo.
echo === ОТКАТ БЛОКА С: возврат в исходное / restoring block C ===
sc config IEEtwCollectorService start= demand 2>nul
sc config WdNisSvc start= auto 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t REG_DWORD /d 2 /f >nul
sc config wisvc start= demand 2>nul
sc config PrintNotify start= demand 2>nul
sc config stisvc start= demand 2>nul
sc config SDRSVC start= demand 2>nul
sc config RemoteAccess start= demand 2>nul
sc config SessionEnv start= demand 2>nul
sc config TermService start= demand 2>nul
sc config UmRdpService start= demand 2>nul
sc config WinRM start= demand 2>nul
sc config TabletInputService start= demand 2>nul
sc config WacomPen start= demand 2>nul
sc config DsmSvc start= demand 2>nul
sc config wlidsvc start= demand 2>nul
sc config TokenBroker start= demand 2>nul
sc config InstallService start= demand 2>nul
sc config NgcSvc start= demand 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d 3 /f >nul
sc config HvHost start= demand 2>nul
sc config vmickvpexchange start= demand 2>nul
sc config vmicguestinterface start= demand 2>nul
sc config vmicheartbeat start= demand 2>nul
sc config vmicshutdown start= demand 2>nul
sc config vmictimesync start= demand 2>nul
sc config vmicvss start= demand 2>nul
sc config vmicrdv start= demand 2>nul
sc config vmicvmsession start= demand 2>nul
sc config AssignedAccessManagerSvc start= demand 2>nul
sc config BDESVC start= demand 2>nul
sc config DeviceSetupManager start= demand 2>nul
sc config EFS start= demand 2>nul
sc config MSDTC start= demand 2>nul
sc config MSiSCSI start= demand 2>nul
sc config ScPolicySvc start= demand 2>nul
sc config SharedAccess start= demand 2>nul
sc config TapiSrv start= demand 2>nul
sc config WbioSrvc start= demand 2>nul
sc config wcncsvc start= demand 2>nul
sc config WpnService start= auto 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpnUserService" /v Start /t REG_DWORD /d 3 /f >nul
echo %RC_DONE%
goto :eof

:rollbackOld
echo.
echo === ОТКАТ СТАРЫХ СНОСОВ v3/v4 / restoring old v3/v4 kills ===
sc config DiagTrack start= auto 2>nul
sc config diagnosticshub.standardcollector.service start= demand 2>nul
sc config WerSvc start= demand 2>nul
sc config wercplsupport start= demand 2>nul
sc config dmwappushservice start= demand 2>nul
sc config PcaSvc start= demand 2>nul
sc config Fax start= demand 2>nul
sc config WpcMonSvc start= demand 2>nul
sc config RemoteRegistry start= demand 2>nul
sc config MapsBroker start= delayed-auto 2>nul
sc config lfsvc start= demand 2>nul
sc config SEMgrSvc start= demand 2>nul
sc config PhoneSvc start= demand 2>nul
sc config WwanSvc start= demand 2>nul
sc config WSearch start= delayed-auto 2>nul
sc config DoSvc start= auto 2>nul
sc config fhsvc start= demand 2>nul
sc config TrkWks start= auto 2>nul
sc config DPS start= auto 2>nul
sc config WdiServiceHost start= demand 2>nul
sc config WdiSystemHost start= demand 2>nul
sc config XblAuthManager start= demand 2>nul
sc config XblGameSave start= demand 2>nul
sc config XboxNetApiSvc start= demand 2>nul
sc config XboxGipSvc start= demand 2>nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v Start /t REG_DWORD /d 3 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v DisableSR /t REG_DWORD /d 0 /f >nul
sc config srservice start= demand 2>nul
echo %RO_DONE1%
echo %RO_DONE2%
goto :eof

:rollbackDrv
echo.
echo === ОТКАТ ДРАЙВЕРНОГО БЛОКА / restoring driver block ===
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v ExcludeWUDriversInQualityUpdate /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /f >nul 2>&1
echo %RD_DONE%
goto :eof

:rollbackUWP
echo.
echo === ОТКАТ UWP-ФОНА И ЦЕНТРА / restoring UWP and center ===
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 0 /f >nul
reg delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v DisableNotificationCenter /f >nul 2>&1
echo %RU_DONE%
goto :eof

:rollbackMem
echo.
echo === ОТКАТ БЛОКА ПАМЯТИ / restoring memory block ===
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 3670016 /f >nul
echo %RM_DONE%
goto :eof
