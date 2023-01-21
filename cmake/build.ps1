# Win64
xmake f -p windows -a x64
xmake

# Win32
xmake f -p windows -a x86
xmake

# WinArm64
xmake f
  -p windows 
  -a arm64
  --sdk="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\" 
  --cc="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\arm64\cl.exe" 
  --cxx="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\arm64\cl.exe" 
  --includedirs="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\include;C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\ucrt;C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\um;C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\shared;C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\winrt" 
  --linkdirs="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\lib\arm64\;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.19041.0\um\arm64;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.19041.0\ucrt\arm64;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.19041.0\winrt\arm64" 
  --ld="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\arm64\link.exe" 
  --sh="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\arm64\link.exe" 
  --ar="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\Hostx64\arm64\lib.exe" 
&& xmake