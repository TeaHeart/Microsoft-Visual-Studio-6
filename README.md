# Microsoft Visual Studio 6 存档

---

## 变动

- 更改 `.\VC98\Bin\VCVARS32.BAT`
  ```bash
  set VSCommonDir=%~dp0..\..\Common
  set MSDevDir=%~dp0..\..\Common\MSDev98
  set MSVCDir=%~dp0..
  set PATH=%MSDevDir%\Bin;%MSVCDir%\Bin;%VSCommonDir%\Tools\WinNT;%VSCommonDir%\Tools;%PATH%
  set INCLUDE=%MSVCDir%\ATL\Include;%MSVCDir%\Include;%MSVCDir%\MFC\Include;%Include%
  set LIB=%MSVCDir%\Lib;%MSVCDir%\MFC\Lib;%Lib%
  ```
- 新增 `.\VC98\Bin\VCVARS32.PS1`
  ```powershell
  $env:VSCommonDir="$pwd\..\..\Common"
  $env:MSDevDir="$pwd\..\..\Common\MSDev98"
  $env:MSVCDir="$pwd\.."
  $env:PATH="$env:MSDevDir\Bin;$env:MSVCDir\Bin;$env:VSCommonDir\Tools\WinNT;$env:VSCommonDir\Tools;$env:PATH"
  $env:INCLUDE="$env:MSVCDir\ATL\Include;$env:MSVCDir\Include;$env:MSVCDir\MFC\Include;$env:Include"
  $env:LIB="$env:MSVCDir\Lib;$env:MSVCDir\MFC\Lib;$env:Lib"
  ```
- 新增 `.\Common\MSDev98\Bin\MSDEV98.EXE`

---

## 使用

1. 直接使用 Microsoft Visual Studio
   - 直接运行 `.\Common\MSDev98\Bin\MSDEV.EXE`
     - 若出现问题请尝试以下方法
       - 修改名称, 如更改为 MSDEV98.EXE
       - 更改属性>兼容性>兼容设置
       - 以管理员身份运行
2. 在 Microsoft Visual Code 中使用
   - 方法一: 使用快捷方式
     - 添加 `你的位置\Microsoft VS Code\bin` 到环境变量
     - 创建快捷方式, 文件名和图标随意
     - 属性>快捷方式>目标 `powershell.exe .\VCVARS32.PS1; code`
     - 属性>快捷方式>起始位置 `"你的位置\Microsoft Visual Studio 6\VC98\Bin"`
   - 方式二: 直接修改环境变量
     - VSCommonDir `你的位置\Microsoft Visual Studio 6\Common`
     - MSDevDir `你的位置\Microsoft Visual Studio 6\Common\MSDev98`
     - MSVCDir `你的位置\Microsoft Visual Studio 6\VC98`
     - PATH
       - `%MSDevDir%\Bin`
       - `%MSVCDir%\Bin`
       - `%VSCommonDir%\Tools\WinNT`
       - `%VSCommonDir%\Tools`
     - INCLUDE
       - `%MSVCDir%\ATL\Include`
       - `%MSVCDir%\Include`
       - `%MSVCDir%\MFC\Include`
     - LIB
       - `%MSVCDir%\Lib`
       - `%MSVCDir%\MFC\Lib`
