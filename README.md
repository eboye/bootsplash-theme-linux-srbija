# Description
Bootsplash theme for Manjaro Linux. 

# Preview
![preview](https://raw.githubusercontent.com/eboye/bootsplash-theme-linux-srbija/master/logo.gif "preview")

# Installation & configuration

`git clone https://github.com/eboye/bootsplash-theme-linux-srbija.git`

`cd bootsplash-theme-linux-srbija`

Run `chmod +x bootsplash-packer bootsplash-theme-linux-srbija.sh`

Run `makepkg` to create Arch package and install it with `pacman -U %packagename%`

Append `bootsplash-theme-linux-srbija` hook in the end of `HOOKS` string of /etc/mkinitcpio.conf

Add `bootsplash.bootfile=bootsplash-themes/linux-srbija/bootsplash` into `GRUB_CMDLINE_LINUX` string of `/etc/default/grub`

Run `sudo mkinitcpio -P && sudo update-grub` to update initial ram disk and grub configuration


# Some hints

The end result may vary on different configurations. For instance, it may be a good idea to add `intel_agp i915` to `MODULES` section of `mkinitcpio.conf` in case of Intel-based system, use modesetting kernel options, etc. The best result is achieved with the use of direct kernel booting (w/o any bootloader, using just linux efistub). A similar command will do the trick:

`# efibootmgr -c -d /dev/sda -p 1 -L "Manjaro Linux 5.4" -l /vmlinuz-5.4-x86_64 -u 'ro initrd=\intel-ucode.img initrd=\initramfs-5.4-x86_64.img bootsplash.bootfile=bootsplash-themes/linux-srbija/bootsplash <other options like cryptdevice, root, resume etc>' -v`
