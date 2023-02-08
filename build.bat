clear

echo off
set PREV_PATH=%PATH%
set PATH=%PATH%;%CD%/build_tools/msys32/usr/bin;%CD%/build_tools/powerpc-eabivle-4_9/bin;%CD%/build_tools/powerpc-eabivle-4_9/powerpc-eabivle/bin
echo on

cd %CD%/project
make -j all
cd %CD%

echo off
set PATH=%PREV_PATH%
echo on