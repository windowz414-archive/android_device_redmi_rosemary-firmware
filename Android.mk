LOCAL_PATH := $(call my-dir)

ifneq ($(shell echo $(TARGET_PRODUCT) | grep rosemary),)
    define target_radio_files
    $(notdir \
            $(wildcard $(LOCAL_PATH)/*.bin) \
            $(wildcard $(LOCAL_PATH)/*.img)
    )
    endef

    -include $(LOCAL_PATH)/rosemary-firmware.mk
endif
