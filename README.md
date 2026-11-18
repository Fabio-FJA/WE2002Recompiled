# Winning Eleven 2002 Recompiled

Unofficial static recompilation of Winning Eleven 2002 for Windows, originally released for the Sony PlayStation in 2002.

This project translates the original MIPS machine code into C and compiles it into a native Windows x64 executable, preserving the original gameplay, graphics, audio and game mechanics through the PSXRecomp runtime.

## Game Information

| | |
|---|---|
| Developer | Konami |
| Release Year | 2002 |
| Original Platform | PlayStation |
| Target Platform | Windows x64 |
| Game ID | SLPM-87056 |
| Region | NTSC-J |
| Players | 1–2 |
| Languages | C / C++ |
| Version | 0.1.0 |

## Features

- Static MIPS to C recompilation.
- Native Windows x64 executable.
- OpenGL rendering.
- SDL3 integration.
- 60 FPS operation observed during testing.
- Configurable resolution.
- Keyboard and controller support.
- OpenBIOS support.
- Local multiplayer.
- Portable disc directory.

## Installation

1. Download the repository using Code → Download ZIP.
2. Extract the downloaded archive.
3. Place your own compatible game disc image inside the Windows/disc directory.
4. Make sure the BIN and CUE files are named WE2002.bin and WE2002.cue.
5. Run WE2002Recompiled.exe inside the Windows directory.

Additional setup may be required on first launch.

## Project Goals

- Improve game compatibility and performance.
- Enhance graphics and rendering.
- Implement widescreen improvements.
- Expand customization and modding capabilities.
- Reverse engineer original game mechanics.
- Preserve classic football gameplay on modern computers.

## Project Status

Experimental and under development. The game has been successfully recompiled and tested on Windows.

## Credits

- Konami: Original game.
- PSXRecomp: Static recompilation framework.
- OpenBIOS: Open-source PlayStation BIOS.
- SDL3: Multimedia library.

## Disclaimer

This is an unofficial, non-commercial project focused on game preservation, reverse engineering and technical research.

This repository does not include the original game disc image. Users must provide their own legally obtained copy of Winning Eleven 2002.

All original game rights belong to their respective owners.
