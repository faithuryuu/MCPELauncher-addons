LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := net.zhuoweizhang.mcpelauncher.addon.dualwield # should match the name in the AndroidManifest.xml
LOCAL_SRC_FILES := main.cpp
# search for libraries in the jni/ folder of our project,
# link to the libraries for printing to logcat, getting methods from libminecraftpe,
# and for accessing BlockLauncher functions
LOCAL_LDLIBS    := -L$(LOCAL_PATH) -llog -ldl -lmcpelauncher_tinysubstrate -lminecraftpe

# ignore undefined symbols.
# workaround for method not found errors.
TARGET_NO_UNDEFINED_LDFLAGS :=

include $(BUILD_SHARED_LIBRARY)
