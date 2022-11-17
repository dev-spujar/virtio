top=$PWD

cd qemu
./configure --audio-drv-list=alsa --target-list=x86_64-softmmu
cd $top
