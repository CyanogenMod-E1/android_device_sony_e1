# Copyright (C) 2013 The CyanogenMod Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE := falconss,e1

BOARD_VENDOR := sony
BOARD_RECOVERY_SWIPE := true
TARGET_NO_SEPARATE_RECOVERY := true

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno302
TARGET_BOARD_PLATFORM := msm8610
TARGET_BOOTLOADER_BOARD_NAME := MSM8610

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH += device/sony/e1/include
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/e1/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/sony/msm8610
TARGET_KERNEL_CONFIG := cyanogenmod_falcon_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 maxcpus=2 msm_rtb.filter=0x3F ehci-hcd.park=3 msm_rtb.enable=0 lpj=192598 zdwc3.maximum_speed=high dwc3_msm.prop_chg_detect=Y androidboot.selinux=permissive selinux=0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x00008000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000
BOARD_KERNEL_SEPARATED_DT := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_DISABLED_ANC_HEADSET := true
AUDIO_FEATURE_DISABLED_SSR := true
AUDIO_FEATURE_DISABLED_DS1_DOLBY_DDP := true

# Bionic
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/e1/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Build
TARGET_SYSTEMIMAGE_USE_SQUISHER := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Dalvik
TARGET_ARCH_LOWMEM := true

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := caf-new
BOARD_EGL_CFG := device/sony/e1/prebuilt/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Hardware tunables framework
BOARD_HARDWARE_CLASS := device/sony/e1/cmhw/

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_QCOM_MEDIA_VARIANT := caf-new
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Partition sizes
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1436549120
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2176826368
BOARD_CACHEIMAGE_PARTITION_SIZE := 204800

# Power
TARGET_POWERHAL_VARIANT := qcom

# QCOM BSP
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/e1/rootdir/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_BOOTIMG_MK := device/sony/e1/custombootimg.mk

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Vold
TARGET_HW_DISK_ENCRYPTION := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
TARGET_USES_WCNSS_CTRL := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
BOARD_WLAN_DEVICE := qcwcn
