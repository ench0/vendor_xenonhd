# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit AOSP device configuration for LG Optimus G (geehrc).
$(call inherit-product, device/lge/geehrc/geehrc.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Telephony
$(call inherit-product, vendor/xenonhd/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc
PRODUCT_NAME := xenonhd_geehrc
PRODUCT_BRAND := lge
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_HW_CPU := Snapdragon S4 Pro
PRODUCT_HW_GPU := Adreno 320

# build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
	USER=Dadi11 \
	PRODUCT_NAME=geehrc_open_eu \
	BUILD_FINGERPRINT=lge/geehrc_open_eu/geehrc:4.4.2/KOT49I.E97520a/E97520a.1403273885:user/release-keys \
	PRIVATE_BUILD_DESC="geehrc_open_eu-user 4.4.2 KOT49I.E97520a E97520a.1403273885 release-keys"
	
# Enable Torch
PRODUCT_PACKAGES += Torch
