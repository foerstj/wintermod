:: This script is supposed to be executed from your DS installation folder.
:: TankCreator is expected to be in a sibling dir.

:: name of mod
set mod=Wintermod
:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator

:: Compile main resource file
rmdir /S /Q "%tmp%\Bits"
:: exclude .psd that might be present locally
robocopy "%doc_dsloa%\Bits\art" "%tmp%\Bits\art" /E /xf .gitignore /xf *.psd /xf dir.lqd20
robocopy "%doc_dsloa%\Bits\world\contentdb" "%tmp%\Bits\world\contentdb" /E
robocopy "%doc_dsloa%\Bits\world\global\moods" "%tmp%\Bits\world\global\moods" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod%.dsres" -copyright "CC-BY-SA 2023" -title "Wintermod" -author "Johannes Förstner"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
