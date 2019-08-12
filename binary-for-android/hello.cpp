#include <android/log.h>

#define LOG_TAG "your-log-tag"

#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

int main()
{
     LOGD("got here");
     return 0;
}
