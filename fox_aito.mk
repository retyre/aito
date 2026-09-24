# OrangeFox product for aito
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product-if-exists, vendor/fox/config/common.mk)
$(call inherit-product, device/motorola/aito/device.mk)

PRODUCT_DEVICE := aito
PRODUCT_NAME := fox_aito
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola razr 2024
PRODUCT_MANUFACTURER := motorola

# Fox flags - encryption KEPT
FOX_AB_DEVICE := 1
FOX_VIRTUAL_AB_DEVICE := 1
FOX_RECOVERY_VENDOR_BOOT_PARTITION := vendor_boot
FOX_BUILD_TYPE := Unofficial
FOX_VARIANT := A15
OF_DEFAULT_KEYMASTER_VERSION := 4.1
OF_KEEP_DM_VERITY := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_USE_LZ4_COMPRESSION := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_SKIP_FBE_DECRYPTION := 0
OF_FBE_METADATA_MOUNT_IGNORE := 0
