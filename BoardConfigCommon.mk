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

TARGET_SPECIFIC_HEADER_PATH := device/pantech/msm8960-common/include

BOARD_VENDOR := pantech

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# inherit from qcom-common
-include device/pantech/qcom-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_SMP := true

# Flags
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Adreno Configuration
BOARD_EGL_CFG := device/pantech/msm8960-common/configs/egl.cfg

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
TARGET_CUSTOM_BLUEDROID := ../../../device/pantech/msm8960-common/bluetooth/bluetooth.c

# Wi-FI
BOARD_HAS_QCOM_WLAN         := true
BOARD_WLAN_DEVICE           := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER        := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
HOSTAPD_VERSION             := VER_0_8_X
WIFI_EXT_MODULE_PATH        := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME        := "cfg80211"
WIFI_EXT_MODULE_ARG         := ""
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/prima_wlan.ko"
WIFI_DRIVER_MODULE_NAME     := "prima_wlan"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_TEST_INTERFACE         := "sta"
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_P2P     := "p2p"

# Custom Wi-Fi Implementation
TARGET_CUSTOM_WIFI := ../../device/pantech/msm8960-common/wifi/wifi.c

# NFC
BOARD_HAVE_NFC := true

# QCOM hardware
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 26
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Custom Vibrator Implementation
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/pantech/msm8960-common/vibrator/vibrator.c

# Camera
COMMON_GLOBAL_CFLAGS += -DPANTECH_CAMERA_HARDWARE

# Audio
BOARD_USES_ALSA_AUDIO := true
