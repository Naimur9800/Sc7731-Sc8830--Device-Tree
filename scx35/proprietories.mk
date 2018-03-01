
ifneq ($(shell ls -d vendor/sprd/proprietories-source 2>/dev/null),)
# for spreadtrum internal proprietories modules: only support package module names

OPENMAX := libomx_m4vh263dec_sw_sprd libomx_m4vh263dec_hw_sprd libomx_m4vh263enc_hw_sprd \
	libomx_avcdec_hw_sprd libomx_avcdec_sw_sprd libomx_avcenc_hw_sprd libomx_vpxdec_hw_sprd libomx_mp3dec_sprd

PRODUCT_PACKAGES := \
	$(OPENMAX) \
	rild_sp \
	libril_sp \
	libreference-ril_sp \
	phoneserver \
	librilproxy \
	rilproxyd \
	akmd8963

ADDITIONAL_STATIC_LIB_DIR :=

else
# for spreadtrum customer proprietories modules: only support direct copy

PROPMODS := \
	system/lib/libomx_m4vh263dec_sw_sprd.so \
	system/lib/libomx_m4vh263dec_hw_sprd.so	\
	system/lib/libomx_m4vh263enc_hw_sprd.so \
	system/lib/libomx_avcdec_hw_sprd.so \
	system/lib/libomx_avcdec_sw_sprd.so \
	system/lib/libomx_avcenc_hw_sprd.so	\
	system/lib/libomx_vpxdec_hw_sprd.so	\
	system/lib/libomx_mp3dec_sprd.so \
	system/bin/rild_sp \
	system/lib/libril_sp.so \
	system/lib/libreference-ril_sp.so \
	system/bin/phoneserver \
	system/lib/librilproxy.so \
	system/bin/rilproxyd

PRODUCT_COPY_FILES := $(foreach f,$(PROPMODS),vendor/sprd/proprietories/scx35/$(f):$(f))

ADDITIONAL_STATIC_LIB_DIR := vendor/sprd/proprietories/scx35/obj/STATIC_LIBRARIES/libsprd_verify_intermediates/

endif

# for widevine, add widevine in none gms version
ifneq ($(shell ls -d vendor/widevine 2>/dev/null),)

else

BOARD_WIDEVINE_OEMCRYPTO_LEVEL:=3

PROPMODSW := \
        system/vendor/lib/libwvdrm_L$(BOARD_WIDEVINE_OEMCRYPTO_LEVEL).so \
        system/vendor/lib/libwvm.so \
        system/vendor/lib/libWVStreamControlAPI_L$(BOARD_WIDEVINE_OEMCRYPTO_LEVEL).so \
        system/vendor/lib/mediadrm/libwvdrmengine.so \
        system/vendor/lib/drm/libdrmwvmplugin.so \
        system/lib/libdrmdecrypt.so \
        system/framework/com.google.widevine.software.drm.jar \
        system/etc/permissions/com.google.widevine.software.drm.xml
PRODUCT_COPY_FILES += $(foreach f,$(PROPMODSW),vendor/sprd/proprietories/scx35/$(f):$(f))
endif
