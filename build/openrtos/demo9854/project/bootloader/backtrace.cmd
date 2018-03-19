@echo off

pushd ..\..\..
call common.cmd
popd

echo Please Enter Back Trace Addresses
set /p addresses= Here -^>  

arm-none-eabi-addr2line -f -p -s -e bootloader %addresses%

pause
