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

# Touch firmware helpers
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/lib/modules/mmi_relay.ko:recovery/root/lib/modules/mmi_relay.ko \
    $(LOCAL_PATH)/recovery/root/lib/modules/touchscreen_u_mmi.ko:recovery/root/lib/modules/touchscreen_u_mmi.ko \
    $(LOCAL_PATH)/recovery/root/lib/modules/goodix_brl_u_mmi.ko:recovery/root/lib/modules/goodix_brl_u_mmi.ko \
    $(LOCAL_PATH)/recovery/root/lib/modules/goodix_gt96x_u_mmi.ko:recovery/root/lib/modules/goodix_gt96x_u_mmi.ko
