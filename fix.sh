#!/bin/bash

LINUX_BUILD_PATH='istoreos/build_dir/target-aarch64_cortex-a53_musl/linux-realtek_rtd129x/linux-4.9.282'

cp -r include/soc/realtek $LINUX_BUILD_PATH/include/soc/
cp include/dt-bindings/soc/rtd129x,memory.h $LINUX_BUILD_PATH/include/dt-bindings/soc/
cp include/dt-bindings/clock/rtk,clock-rtd129x.h $LINUX_BUILD_PATH/include/dt-bindings/clock/
cp include/dt-bindings/reset/rtk,reset.h $LINUX_BUILD_PATH/include/dt-bindings/reset/
cp include/dt-bindings/reset/rtk,reset-rtd129x.h $LINUX_BUILD_PATH/include/dt-bindings/reset/
cp include/dt-bindings/regulator/gmt,g22xx.h $LINUX_BUILD_PATH/include/dt-bindings/regulator/
cp include/dt-bindings/power/rtk,power-rtd129x.h $LINUX_BUILD_PATH/include/dt-bindings/power/

cd istoreos
make -j$(nproc)