:: This script is supposed to be executed from your DS installation folder.
:: TankCreator is expected to be in a sibling dir.

:: name of mod
set mod=Wintermod
:: name of demo map
set map=wintermod-demo
:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=.
:: path of TankCreator
set tc=..\TankCreator

set copyright=CC-BY-SA 2024
set title=%mod%
set author=Johannes Förstner

:: Compile main resource file
rmdir /S /Q "%tmp%\Bits"
:: exclude .psd that might be present locally
robocopy "%doc_dsloa%\Bits\art" "%tmp%\Bits\art" /E /xf .gitignore /xf *.psd
robocopy "%doc_dsloa%\Bits\world\contentdb" "%tmp%\Bits\world\contentdb" /E
robocopy "%doc_dsloa%\Bits\world\global\moods" "%tmp%\Bits\world\global\moods" /E
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\%mod%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Compile demo map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /S
%tc%\RTC.exe -source "%tmp%\Bits" -out "%ds%\DSLOA\%map%.dsmap" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
