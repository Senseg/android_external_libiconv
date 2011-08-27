LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libiconv

LOCAL_CFLAGS    := \
	-DHAVE_CONFIG_H -DBUILDING_LIBICONV -DBUILDING_DLL \
	-DENABLE_RELOCATABLE=1 -DIN_LIBRARY -DNO_XMALLOC \
	-Wno-multichar \
	-DLIBDIR="\"c\"" \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/lib \
	$(LOCAL_PATH)/libcharset/include

LOCAL_SRC_FILES := \
	lib/iconv.c \
	libcharset/lib/localcharset.c \
	lib/relocatable.c

include $(BUILD_STATIC_LIBRARY)

