**This project is moved to [webview-xmake](https://github.com/Winterreisender/webview-xmake)**

---

# webview Binary

Build shared binary libs for webview using xmake. Also a xmake package for webview.

## Supported Platforms

|        | Windows | Linux | macOS |
| ------ | ------- | ----- | ----- |
| x64    | ✔      | ✔    | ✔    |
| arm64  | ✔      | ✔    | ✔    |
| x86_32 | ✔      |       |       |

## Usage

### Use GitHub Actions

1. Edit the `add_versions` of  `xmake.lua`
2. Push
3. See GitHub Actions

### Build Locally

See `.github/workflows/binary-build.yml` for detailed build steps.

For example, build for Windows x64:

```shell
xmake f -p windows -a x64 -m release
xmake build webview_shared
```

### Use xmake package

Still trying to understand how xmake work in packages, currently you can just copy `xmake.lua` and `src`folder, then build with

```shell
xmake build webview_test
```

If you want to modify the build steps, see `target("webview_test")` in `xmake.lua`

## Other

**Q: Why this repo is a fork of webview_csharp?**
A: Initially this repo is forked from webview_csharp which contains a CMake project. Now this project is totally diffierent and should be considered a brand new project. And since a forked repo has many limitations, we're considering create a new repo.

## License

```
Copyright 2023 Winterreisender

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
