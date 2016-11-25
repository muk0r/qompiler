@Echo Off

Title Qompiler v 0.25

If Not Exist tools\qbsp.exe GoTo NoTools
If Not Exist tools\vis.exe GoTo NoTools
If Not Exist tools\light.exe GoTo NoTools
If Not Exist *.MAP GoTo NeedMaps
If Not Exist Qompiled\Nul MD Qompiled
If "%1"=="DoIt" GoTo Qompiler
If Not "%1"=="" GoTo NeedMaps

Echo Log file for Qompiler>Qompiler.Txt
Echo.>>Qompiler.Txt
Echo  Let's Qompile some maps!
SET /P _qbsp=[Input any desired qbsp settings...]
SET /P _vis=[Input any desired vis settings...]
SET /P _light=[Input any desired light settings...]
Echo.
for %%i in (*.MAP) do call Qompiler DoIt %%i
Echo End of log.>>Qompiler.txt
Echo.
Echo Finished.
GoTo End

:Qompiler
Echo Recompiling map %2...
Echo Recompiling %2>>Qompiler.txt
tools\qbsp.exe %_qbsp% %2>>Qompiler.txt
tools\vis.exe %_vis% %2>>Qompiler.txt
tools\light.exe %_light% %2>>Qompiler.txt
Echo Finished map %2>>Qompiler.txt
Echo.>>Qompiler.txt
Echo.>>Qompiler.txt
Echo.>>Qompiler.txt
Echo %2>>Qompiled.txt
Move %2 Qompiled>Nul
GoTo QompilerEnd

:NeedMaps
Echo Put Qompiler in the same folder as your maps!
Goto End

:NoTools
Echo Need qbsp.exe/vis.exe/light.exe in the Tools directory.
Goto End

:End
Echo.
Pause
:QompilerEnd
