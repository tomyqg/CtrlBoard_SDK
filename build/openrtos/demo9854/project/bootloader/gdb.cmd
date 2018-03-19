@echo off

pushd ..\..\..
call common.cmd
popd

arm-none-eabi-gdb -x D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/target/debug/fa626/init-gdb bootloader
if errorlevel 1 pause
