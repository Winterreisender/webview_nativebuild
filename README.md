# webview Binary

Just for build webview for [webviewko](https://github.com/Winterreisender/webviewko).

Copied from [webview_csharp](https://github.com/webview/webview_csharp) licensed under [MIT](https://github.com/webview/webview_csharp/blob/master/LICENSE)

## Usage

### Use GitHub Actions

1. Edit the `GIT_TAG` of `CMakeLists.txt`
2. Push
3. See GitHub Actions

### Build Locally

```shell
cmake . -DCMAKE_BUILD_TYPE=Release
```

## License

The source code is licensed under [MIT](LICENSE)

---

```shell
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
```
