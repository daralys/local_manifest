#!/bin/bash

# Initialize ROM manifest
repo init -u https://github.com/ArrowOS-Extended/android_manifest.git -b arrow-13.1 --git-lfs
# repo sync
/opt/crave/resync.sh
# cloning DT
# device tree
git clone https://github.com/daralys/android_device_xiaomi_mojito -b arrow-13.1
# kernel tree
git clone https://github.com/StarOS9/kernel_xiaomi_mojito.git --depth 1 -b inline-rom kernel/xiaomi/mojito
# vendor tree
git clone https://github.com/daralys/android_vendor_xiaomi_mojito 
# set build environment
. build/envsetup.sh
# lunch
lunch arrow_mojito-userdebug
# bacon
m bacon
