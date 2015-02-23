#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from common smdk3470
-include device/samsung/smdk3470-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := kminilte

# Filesystems
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12834570240

# Include path
TARGET_SPECIFIC_HEADER_PATH += device/samsung/kminilte/include

# Kernel
TARGET_KERNEL_CONFIG := kminilte_00_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kminilte

# Audio
BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kminilte/bluetooth

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_HAL_SUFFIX := universal3470

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/kminilte
TARGET_RECOVERY_FSTAB := device/samsung/kminilte/rootdir/etc/fstab.universal3470

# TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
