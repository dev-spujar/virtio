./qemu/build/aarch64-softmmu/qemu-system-aarch64 \
 -machine virt \
 -cpu cortex-a57 \
 -hda ./prebuilts/arm64/rootfs.ext4 \
 -kernel ./prebuilts/arm64/Image \
 -append "console=ttyAMA0 root=/dev/vda oops=panic panic_on_warn=1 panic=-1" \
 -device virtio-snd-pci,disable-legacy=on \
 -m 2048 \
 -net nic,model=virtio \
 -net user,hostfwd=tcp::10022-:22 \
 -serial stdio -display none

