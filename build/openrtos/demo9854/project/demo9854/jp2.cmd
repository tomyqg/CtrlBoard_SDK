@echo off

pushd ..\..\..
call common.cmd
popd

glamomem -t glamomem.dat -i -q
glamomem -t glamomem.dat -l demo9854.bin
glamomem -t glamomem.dat -q -e D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/target/debug/fa626/JTAG_Switch.txt
openocd -f D:/Carstor3/ControlBoard/SDK/20171106_Ctrlboard_SDK_v2.2.8.1_438a19/ITE_Castor3_SDK/sdk/target/debug/fa626/fa626.cfg
