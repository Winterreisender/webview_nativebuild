# see .github/workflows/binary-build.yml for detailed build steps.

xmake f -p windows -a x64 -m release -y -v
--toolchain=gcc
xmake build -v webview_shared
ls ./build/windows/x64/release/

# Debian

apt install libgtk-3-dev libwebkit2gtk-4.0-dev

# Fedora

dnf install gtk3-devel webkit2gtk4.0-devel
dnf install gtk3 webkit2gtk4.0