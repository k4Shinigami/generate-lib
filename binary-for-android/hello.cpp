#include <android/log.h>
// #include <ACL/include/ACL/AVSConnectionManager.h>

#define LOG_TAG "your-log-tag"


#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

class AlexaSample
{
     public:
     AlexaSample() {
          LOGD("got here");
     };
     void startAVS() {
          LOGD("This should ideally start the AVS process");
     };
};

int main()
{
     LOGD("got here");
     AlexaSample alexaClient;
     alexaClient.startAVS();
     return 0;
}
