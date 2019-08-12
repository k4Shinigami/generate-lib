export NDK_ROOT=${ANDROID_NDK_ROOT}
AVS_PREFIX=../../k4-avs-sdk-android/debug/android-27/jniLibs/armeabi-v7a


${NDK_ROOT}/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang++ \
     --target=armv7-none-linux-androideabi \
     --gcc-toolchain=${NDK_ROOT}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64  \
     --sysroot=${NDK_ROOT}/sysroot \
     -isystem ${NDK_ROOT}/sysroot/usr/include/arm-linux-androideabi \
     -o hello-compiled.cpp.o -c hello.cpp


${NDK_ROOT}/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang++ \
     --target=armv7-none-linux-androideabi \
     --gcc-toolchain=${NDK_ROOT}/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64 \
     --sysroot  ${NDK_ROOT}/platforms/android-23/arch-arm \
     -stdlib=libstdc++ \
     -lstdc++ \
     -llog \
     -pie \
     $AVS_PREFIX/libACL.so \
     hello-compiled.cpp.o \
     -o hello-binary
     
     

