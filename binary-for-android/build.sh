export NDK_ROOT=${ANDROID_NDK_ROOT}

${NDK_ROOT}/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang++ \
     --target=aarch64-linux-android23 \
     --gcc-toolchain=${NDK_ROOT}/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64  \
     -isystem ${NDK_ROOT}/sysroot/usr/include/aarch64-linux-android \
     -o  hello-compiled.cpp.o -c hello.cpp

${NDK_ROOT}/toolchains/llvm/prebuilt/darwin-x86_64/bin/clang++ \
     --target=aarch64-linux-android23 \
     --gcc-toolchain=${NDK_ROOT}/toolchains/aarch64-linux-android-4.9/prebuilt/darwin-x86_64 \
     -isystem ${NDK_ROOT}/platforms/android-27/arch-arm  hello-compiled.cpp.o -o hello-binary