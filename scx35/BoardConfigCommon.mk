#
# Copyright (C) 2011 The Android Open-Source Project
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

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := sc8830

TARGET_BOARD_NAME := sp7731

# Enable dex-preoptimization
WITH_DEXPREOPT := false

# config u-boot
TARGET_NO_BOOTLOADER := false

# config kernel
TARGET_NO_KERNEL := false
USES_UNCOMPRESSED_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8

# config sepolicy
BOARD_SEPOLICY_DIRS := device/sprd/scx35/sepolicy

BOARD_SEPOLICY_UNION := \
        file.te \
        file_contexts \
        init.te \
        init_shell.te \
        debuggerd.te \
        mediaserver.te \
        netd.te \
        platform_app.te \
        radio.te \
        system_app.te \
        system_server.te \
        ueventd.te \
        untrusted_app.te \
        sdcardd.te \
        service_contexts \
        adbd.te \
        shell.te \
        zygote.te \
        dex2oat.te \
        kernel.te \
        surfaceflinger.te \
        property_contexts \
        drmserver.te \
        recovery.te \
        hostapd.te \
        device.te \
        wcnd.te \
        bluetooth.te \
        vold.te \
        wpa.te  \
        engpc.te \
        batterysrv.te \
        srtd.te  \
        zram.te \
        refnotify.te \
        rild.te \
        cp_diskserver.te \
        domain.te \
        bootanim.te \
	genfs_contexts \
        download.te \
        servicemanager.te \
        isolated_app.te

# recovery configs
#TARGET_RECOVERY_FSTAB := device/sprd/scx35/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/sprd/scx35/recovery/init.rc
TARGET_RECOVERY_UI_LIB := librecovery_ui_sp8830
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# SPRD: add nvmerge config
TARGET_RECOVERY_NVMERGE_CONFIG := device/sprd/scx35/nvmerge.cfg

#SPRD:modem update config
MODEM_UPDATE_CONFIG := true
MODEM_UPDATE_CONFIG_FILE := device/sprd/scx35/modem.cfg

# camera configs
USE_CAMERA_STUB := true
#zsl capture
TARGET_BOARD_CAMERA_CAPTURE_MODE := false
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
TARGET_BOARD_CAMERA_HAL_VERSION := HAL3.0

# audio configs
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
BUILD_WITH_ALSA_UTILS := false
BOARD_AUDIO_OLD_MODEM := true
USE_LEGACY_AUDIO_POLICY := 0
USE_CUSTOM_AUDIO_POLICY := 1

# telephony
BOARD_USE_VETH := true
BOARD_SPRD_RIL := true
USE_BOOT_AT_DIAG := true

# graphics
USE_SPRD_HWCOMPOSER  := true
USE_OPENGL_RENDERER := true
USE_OVERLAY_COMPOSER_GPU := true
#TARGET_DEBUG_CAMERA_SHAKE_TEST := true

# ota
TARGET_RELEASETOOLS_EXTENSIONS := vendor/sprd/open-source/tools/ota

# add for secure boot
ifndef SECURE_BOOT_SIGN_TOOL
  ifeq ($(BOARD_SECURE_BOOT_ENABLE), true)
    SECURE_BOOT_SIGN_TOOL := vendor/sprd/proprietories-source/sprd_secure_boot_tool
  endif
endif

#widevine level, add widevine in none gms version
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3
