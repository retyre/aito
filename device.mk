# Device config for aito
LOCAL_PATH := device/motorola/aito

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_verifier

# Health
PRODUCT_PACKAGES += \
    android.hardware.health-service.example_recovery

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot-service.example_recovery

# Keymint / gatekeeper (A15 KeyMint 3 trustonic, needed for FBE decrypt)
PRODUCT_PACKAGES += \
    android.hardware.security.keymint-service.trustonic \
    android.hardware.gatekeeper-service.trustonic

# Touch modules are auto-included from recovery/root/ - no PRODUCT_COPY_FILES needed
# (files live in recovery/root/lib/modules/ + modules.load.recovery)
