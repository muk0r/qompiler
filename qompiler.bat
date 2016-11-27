@Echo Off
setlocal enabledelayedexpansion

Title Qompiler v0.75

:Start
If Not Exist tools\qbsp.exe GoTo NoTools
If Not Exist tools\vis.exe GoTo NoTools
If Not Exist tools\light.exe GoTo NoTools
If Not Exist *.MAP GoTo NeedMaps
If Not Exist Qompiled\Nul MD Qompiled
If Not Exist Maps\Nul MD Maps
If Not Exist Logs\Nul MD Logs
If Not Exist Configs\Nul MD Configs
If "%1"=="DoIt" GoTo Qompile
If Not "%1"=="" GoTo NeedMaps

Echo Log file for Qompiler>Logs\QompilerLog.txt
Echo.>>Logs\QompilerLog.txt

Echo  Lets Qompile some maps!
Echo Do you want to load a config?
Echo.
Set /p _config=Type a config name to load or New to create a new config...
if "%_config%"=="New" goto NewConfig
if "%_config%"=="new" goto NewConfig
) else (
goto LoadConfig

:NewConfig
Echo.
Set /p _cfgname=Type a name for this config...
If Not Exist %_config%.bat Goto Settings
If Exist %_config%.bat GoTo Overwrite

:Overwrite
Echo.
Echo	The config %_config% already exists.
Echo
Set /p _rename="[O]verwrite old config -or- [R]ename current?"
if "%_rename%"="0" Del Configs\%_config%.bat goto settings
if "%_rename%"="O" Del Configs\%_config%.bat goto settings
if "%_rename%"="R" goto NewConfig
if "%_rename%"="r" goto NewConfig

:Settings

Call docs\qbspdescription.bat
Set /p _qbsp=Input any desired qbsp settings, then press "Enter" to continue...
Echo.
Call docs\visdescription.bat
Set /p _vis=Input any desired vis settings, then press "Enter" to continue...
Echo.
Call docs\lightdescription.bat
Set /P _light=Input any desired light settings. Pres "Enter" to continue...
Echo.


For %%i in .(*.MAP) goto Qompile %%i
Echo set _vis= %_vis%>>configs\%_cfgname%.txt
Echo set _qbsp= %_qbsp%>>configs\%_cfgname%.txt
Echo set _light= %_light%>>configs\%_cfgname%.txt
Echo End of log.>>Logs\QompilerLog.txt
Echo.

:LoadConfig

Set _qbsp=
Set _vis=
Set _light=
call configs\%_config%.bat

:Qompile
Echo Qompiling map %2...
Echo Qompiling %2>>Logs\QompilerLog.txt
tools\qbsp.exe %_qbsp% %2>>Logs\QompilerLog.txt
tools\vis.exe %_vis% %2>>Logs\QompilerLog.txt
tools\light.exe %_light% %2>>Logs\QompilerLog.txt
Echo Finished map %2>>Logs\QompilerLog.txt
Echo.>>Logs\QompilerLog.txt
Echo.>>Logs\QompilerLog.txt
Echo.>>Logs\QompilerLog.txt
Echo %2>>Logs\Qompiled.txt
Move %2 Qompiled>Nul
If Exist "*.Prt" Del "*.Prt">Nul
If Exist "*.bsp" Move "*.bsp" Maps>Nul
If Exist "*.lit" Move "*.lit" Maps>Nul
If Exist "*.log" Move "*.log" Logs>Nul
Echo.
Echo Qompiling successful..
GoTo End



:NeedMaps
Echo. Qompiler and your maps must be in the same folder.  
Echo. Be sure your compiling tools are in the Tools directory, as well.
Goto Restart

:Restart
Echo Do you wish to restart? 
Echo.
Set /p op=Choose Y/N...
if "%op%"=="Y" goto Start
if "%op%"=="y" goto Start
) else (
goto End


:NoTools
Echo. Need qbsp.exe/vis.exe/light.exe in the Tools directory.
Goto Restart

:End
Echo.
Pause
