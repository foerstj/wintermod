:: name of mod
set mod=A Wintermod
:: name of demo map
set map=wintermod-demo

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\DSLOA\%mod%.dsres"
del "%ds%\DSLOA\%map%.dsmap"
