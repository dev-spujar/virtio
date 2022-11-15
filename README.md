# virtio
Virtio experiments with sound devices with x86:

  - For now prebuilt binaries and images are added
    under "./prebuilts/x86/" and VM can be launched
    used following steps:

    * Run following script to launch VM:

       ./run_x86.sh

    * VM boots and asks for login password.
      Use "root" as password at "buildroot login:" prompt.

    * After this VM shell is available and use following
      command to test playback.

      $ cd /audio
      $ ./aplay -Dhw:0,0 10.wav



  - TODO: Qemu changes will be pushed soon. This can
    help experiment virtio-snd with Qemu backend debug
    or customization.
