#DEVELOPER="$(xcode-select --print-path)"
#SDKROOT="$(xcodebuild -version -sdk iphonesimulator | grep -E '^Path' | sed 's/Path: //')"

ICU_PATH="$(pwd)/icu"
#ICU_FLAGS="-I$ICU_PATH/source/common/ -I$ICU_PATH/source/tools/tzcode/ "

#export CXX="$DEVELOPER/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++"
#export CC="$DEVELOPER/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang"
#export CFLAGS="-isysroot $SDKROOT -I$SDKROOT/usr/include/ -I./include/"
#export CFLAGS="-isysroot $SDKROOT -I$SDKROOT/usr/include/ -I./include/ -arch $ARCH $ICU_FLAGS"
#export CFLAGS="$CPPFLAGS -pipe -no-cpp-precomp -isysroot $SDKROOT"
#export CXXFLAGS="-stdlib=libc++ -std=c++11 -isysroot $SDKROOT -I$SDKROOT/usr/include/ -I./include/ $ICU_FLAGS"
#export LDFLAGS="-stdlib=libc++ -L$SDKROOT/usr/lib/ -isysroot $SDKROOT -Wl,-dead_strip -lstdc++"

mkdir -p build-host && cd build-host

sh $ICU_PATH/source/configure --enable-static --disable-shared
