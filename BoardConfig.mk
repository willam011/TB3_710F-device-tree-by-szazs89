USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/TB3_710F/BoardConfigVendor.mk

# Additional
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt8127
TARGET_BOARD_PLATFORM_GPU := mali-450mp4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := mt8127

# Kernel

BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive initcall_debug ignore_loglevel trace_event=block,ext4 trace_buf_size=64M trace_event=sched_wakeup,sched_switch,sched_blocked_reason,sched_cpu_hotplug
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/lenovo/TB3_710F
TARGET_KERNEL_CONFIG := hq8127_tb_b2b_l_defconfig
BOARD_KERNEL_IMAGE_NAME := Image

# Partitions

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1696440320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5436866560
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

RECOVERY_VARIANT := twrp


BOARD_HAS_NO_SELECT_BUTTON := true

# System ROM configuration
LOCAL_DEX_PREOPT := true
PRODUCT_DEX_PREOPT_BOOT_FLAGS := true
PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := true
PRODUCT_DEX_PREOPT_MODULE_CONFIGS := true

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BLOCK_BASED_OTA := true
BOARD_HAS_MTK := true
MTK_HWC_CHIP := mt8127
MTK_HWC_SUPPORT := true
MTK_WFD_SUPPORT := true
MTK_PQ_SUPPORT := true
MTK_ION_SUPPORT := true
MTK_HDMI_SUPPORT := true
MTK_SENSOR_SUPPORT := true

# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lenovo/TB3_710F/configs/egl.cfg
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_ION := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Surfaceflinger optimization for VD surfaces
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_HIDL_FEATURE_AWARE := true

# system.prop
TARGET_SYSTEM_PROP := device/lenovo/TB3_710F/system.prop

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# SELinux
BOARD_SEPOLICY_DIRS := \
       $(LOCAL_PATH)/sepolicy

BOARD_SEPOLICY_UNION := \
        seapp_contexts  \
        service_contexts \
        property_contexts \
        file_contexts

# TWRP
TW_THEME := landscape_hdpi
DEVICE_RESOLUTION := 1024x600
TARGET_RECOVERY_FSTAB := device/lenovo/TB3_710F/rootdir/twrp.fstab
TARGET_RECOVERY_INITRC := device/lenovo/TB3_710F/rootdir/recovery.twrp.rc
BOARD_HAS_NO_REAL_SDCARD := false
TW_OEM_BUILD := true
TW_NEVER_UNMOUNT_SYSTEM := true
TW_DEFAULT_BRIGHTNESS := 150
TWRP_INCLUDE_LOGCAT := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
RECOVERY_TOUCHSCREEN_FLIP_X := false
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/battery/capacity
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
RECOVERY_SDCARD_ON_DATA := true 
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/storage/sdcard1"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TARGET_USES_LOGD := true
