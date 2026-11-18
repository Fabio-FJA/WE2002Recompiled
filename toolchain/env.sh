#!/usr/bin/env bash
# For Git Bash / MSYS. Prefer env.bat from cmd.exe.
PACK_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
case ":${PATH}:" in
  *":${PACK_ROOT}/bin:"*) ;;
  *) export PATH="${PACK_ROOT}/bin${PATH:+:${PATH}}" ;;
esac
case ":${PATH}:" in
  *":${PACK_ROOT}/python:"*) ;;
  *) export PATH="${PACK_ROOT}/python${PATH:+:${PATH}}" ;;
esac
export CC="${PACK_ROOT}/bin/clang.exe"
export CXX="${PACK_ROOT}/bin/clang++.exe"
export AR="${PACK_ROOT}/bin/llvm-ar.exe"
export RANLIB="${PACK_ROOT}/bin/llvm-ranlib.exe"
export RETCOMM_TOOLCHAIN_DIR="${PACK_ROOT}"
export RETCOMM_PYTHON="${PACK_ROOT}/python/python.exe"
# Isolate pack Python from any host PYTHONHOME/PYTHONPATH.
unset PYTHONHOME PYTHONPATH 2>/dev/null || true
export PYTHONNOUSERSITE=1
# deps/ only — never pack root on CMAKE_PREFIX_PATH / ZLIB_ROOT (libc++ clash).
if [[ -f "${PACK_ROOT}/deps/include/zlib.h" ]]; then
  export ZLIB_ROOT="${PACK_ROOT}/deps"
fi
if [[ -f "${PACK_ROOT}/deps/lib/cmake/SDL3/SDL3Config.cmake" ||
      -f "${PACK_ROOT}/deps/lib/cmake/SDL3/SDL3-config.cmake" ]]; then
  export SDL3_DIR="${PACK_ROOT}/deps/lib/cmake/SDL3"
fi
