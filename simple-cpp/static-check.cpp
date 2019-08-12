// #include <ACL/include/ACL/AVSConnectionManager.h>
#include<iostream>

#define LOG_TAG "your-log-tag"

class AlexaSample
{
     public:
     AlexaSample() {
          printf("got here");
     };
     void startAVS() {
          printf("This should ideally start the AVS process");
     };
};

int main()
{
     printf("got here");
     AlexaSample alexaClient;
     alexaClient.startAVS();
     return 0;
}
