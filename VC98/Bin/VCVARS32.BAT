set VSCommonDir=%~dp0..\..\Common
set MSDevDir=%~dp0..\..\Common\MSDev98
set MSVCDir=%~dp0..
set PATH=%MSDevDir%\Bin;%MSVCDir%\Bin;%VSCommonDir%\Tools\WinNT;%VSCommonDir%\Tools;%PATH%
set INCLUDE=%MSVCDir%\ATL\Include;%MSVCDir%\Include;%MSVCDir%\MFC\Include;%Include%
set LIB=%MSVCDir%\Lib;%MSVCDir%\MFC\Lib;%Lib%