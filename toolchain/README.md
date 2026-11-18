# cmake-clang-v1 (windows-x64)

Self-contained Windows toolchain for RetComM / psxrecomp local builds:

- llvm-mingw 20260616 (LLVM/Clang/LLD + mingw-w64 **UCRT** sysroot)
- CMake 3.31.12
- Ninja 1.13.2
- ccache 4.13.6
- zlib 1.3.1 + SDL3 3.4.10 under `deps/` (keeps mingw
  `include/` off the C++ compile line — required for libc++)
- CPython 3.12.13 (python-build-standalone; no Store alias / system install)

No Visual Studio install required. Targets Windows 10+ (UCRT).

## Install (recommended)

From this extracted zip root — shared RetComM cache + user PATH (idempotent):

```bat
install.bat
cmake --version
clang --version
```

```bat
uninstall.bat
```

PowerShell: `.\install.ps1` / `.\uninstall.ps1`.

## Session-only (no PATH change)

```bat
call env.bat
cmake --version
clang --version
```

`env.bat` / `env.sh` prepend `bin\` to `PATH` and set
`ZLIB_ROOT=%PACK_ROOT%\deps` / `SDL3_DIR=…\deps\lib\cmake\SDL3`.

Pack version: 1.0.14

Upstream: https://github.com/mstorsjo/llvm-mingw
