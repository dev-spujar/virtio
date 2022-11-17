./qemu/build/x86_64-softmmu/qemu-system-x86_64 -kernel ./linux/arch/x86_64/boot/bzImage \
 -boot c -m 2049M -hda ./prebuilts/x86/rootfs.ext4 \
 -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr" \
 -device virtio-snd-pci,disable-legacy=on \
 -net nic,model=virtio \
 -net user,hostfwd=tcp::10022-:22 \
 -serial stdio -display none
