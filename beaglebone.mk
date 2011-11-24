PRODUCT_PACKAGES := \
	ApiDemos      \
	SoundRecorder \
	GeneralRunner \
	EvilSkull \
	Vase \
        androidvncserver \
	lights.$(TARGET_PRODUCT) \
	alsa.$(TARGET_PRODUCT)


$(call inherit-product, build/target/product/generic.mk)

# Overrides
PRODUCT_BRAND := TI
PRODUCT_NAME := beaglebone
PRODUCT_DEVICE := beaglebone
PRODUCT_PACKAGE_OVERLAYS := device/rowboat/generic
ifeq ($(TARGET_PRODUCT), beaglebone)
# Lowering lcd density from 160 to 80 to support lower resolution for vnc screen
ADDITIONAL_DEFAULT_PROPERTIES += ro.sf.lcd_density=80
endif
