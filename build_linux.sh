top=$PWD

cd linux
make ARCH=x86_64 x86_64_defconfig
make ARCH=x86_64 -j8

cd $top
