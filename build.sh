
ICU_ROOT=$(pwd)

rm -rf build-*

./configure_host.sh
mkdir -p build-host && cd build-host && gnumake

cd $ICU_ROOT

./configure_x86_64.sh
mkdir -p build-x86_64 && cd build-x86_64 && gnumake

cd $ICU_ROOT

./configure_armv7s.sh
mkdir -p build-armv7s && cd build-armv7s && gnumake

cd $ICU_ROOT

./configure_armv7.sh
mkdir -p build-armv7 && cd build-armv7 && gnumake

cd $ICU_ROOT

./configure_arm64.sh
mkdir -p build-arm64 && cd build-arm64 && gnumake

cd $ICU_ROOT

echo "Combining x86 64, armv7, armv7s, and arm64 libraries."

./make_universal.sh
