@echo off
set "PACK_ROOT=%~dp0"
set "PACK_ROOT=%PACK_ROOT:~0,-1%"
echo ;%PATH%; | find /I ";%PACK_ROOT%\bin;" >nul
if errorlevel 1 set "PATH=%PACK_ROOT%\bin;%PATH%"
echo ;%PATH%; | find /I ";%PACK_ROOT%\python;" >nul
if errorlevel 1 set "PATH=%PACK_ROOT%\python;%PATH%"
set "CC=%PACK_ROOT%\bin\clang.exe"
set "CXX=%PACK_ROOT%\bin\clang++.exe"
set "AR=%PACK_ROOT%\bin\llvm-ar.exe"
set "RANLIB=%PACK_ROOT%\bin\llvm-ranlib.exe"
set "RETCOMM_TOOLCHAIN_DIR=%PACK_ROOT%"
set "RETCOMM_PYTHON=%PACK_ROOT%\python\python.exe"
rem Isolate pack Python from any host PYTHONHOME/PYTHONPATH.
set "PYTHONHOME="
set "PYTHONPATH="
set "PYTHONNOUSERSITE=1"
rem Host deps live under deps/ — never ZLIB_ROOT/CMAKE_PREFIX_PATH=PACK_ROOT
rem (mingw include/math.h poisons libc++).
if exist "%PACK_ROOT%\deps\include\zlib.h" (
  set "ZLIB_ROOT=%PACK_ROOT%\deps"
)
if exist "%PACK_ROOT%\deps\lib\cmake\SDL3\SDL3Config.cmake" (
  set "SDL3_DIR=%PACK_ROOT%\deps\lib\cmake\SDL3"
) else if exist "%PACK_ROOT%\deps\lib\cmake\SDL3\SDL3-config.cmake" (
  set "SDL3_DIR=%PACK_ROOT%\deps\lib\cmake\SDL3"
)
