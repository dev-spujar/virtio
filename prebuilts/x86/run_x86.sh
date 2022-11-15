./qemu-system-x86_64 -kernel ./bzImage \
 -boot c -m 2049M -hda ./rootfs.ext4 \
 -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr" \
 -device virtio-snd-pci,disable-legacy=on \
 -net nic,model=virtio \
 -net user,hostfwd=tcp::10022-:22 \
 -serial stdio -display none
