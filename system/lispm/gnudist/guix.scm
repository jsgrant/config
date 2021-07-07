;; This is an operating system configuration generated
;; by the graphical installer.


(use-modules (nongnu packages linux)
             (nongnu system linux-initrd)
             (gnu packages linux)
             (gnu packages package-management)
             (gnu packages virtualization)
             (gnu packages display-managers)
             (gnu packages pulseaudio)
             (gnu packages gnome-xyz)
             (gnu packages syncthing)
             (gnu packages backup)
             (gnu packages admin)
             (gnu packages scheme)
             (gnu packages lisp)
             (gnu packages base)
             (gnu packages xfce)
             (gnu packages emacs)
             (gnu packages nano)
             (gnu packages wget)
             (gnu packages w3m)
             (gnu))

(use-service-modules desktop networking ssh xorg)


(operating-system
  (kernel linux)
  (initrd microcode-initrd)
  (firmware (list linux-firmware))
  (locale "en_US.utf8")
  (timezone "America/Chicago")
  (keyboard-layout
    (keyboard-layout "us" "colemak"))
  (bootloader
    (bootloader-configuration
      (bootloader grub-efi-bootloader)
      (target "/boot/efi")
      (keyboard-layout keyboard-layout)))
  (swap-devices (list "/dev/sda2"))
  (mapped-devices
    (list (mapped-device
            (source
              (uuid "????????-????-????-????-????????????"))
            (target "root")
            (type luks-device-mapping))
          (mapped-device
            (source
              (uuid "????????-????-????-????-????????????"))
            (target "home")
            (type luks-device-mapping))
          (mapped-device
            (source
              (uuid "????????-????-????-????-????????????"))
            (target "xana")
            (type luks-device-mapping))))
  (file-systems
    (cons* (file-system
             (mount-point "/boot/efi")
             (device (uuid "????-????" 'fat32))
             (type "vfat"))
           (file-system
             (mount-point "/")
             (device "/dev/mapper/root")
             (type "xfs")
             (dependencies mapped-devices))
           (file-system
             (mount-point "/home")
             (device "/dev/mapper/home")
             (type "ext4")
             (dependencies mapped-devices))
           (file-system
             (mount-point "/xeno")
             (device "/dev/mapper/xeno")
             (type "xfs")
             (dependencies mapped-devices))
           %base-file-systems))
  (host-name "hax")
  (users (cons* (user-account
                  (name "jsg")
                  (comment "JSGrant")
                  (group "users")
                  (home-directory "/home/jsg")
                  (supplementary-groups
                    '("wheel" "netdev" "audio" "video")))
                %base-user-accounts))


  (packages
    (cons*
     (specification->package "nss-certs")
      xfce xfconf xfce4-terminal xfce4-taskmanager xfce4-settings xfce4-session xfce4-screenshooter 
      xfce4-screensaver xfce4-appfinder xfce4-power-manager xfce4-panel xfce4-notifyd 

      xfce4-xkb-plugin xfce4-whiskermenu-plugin xfce4-weather-plugin xfce4-wavelan-plugin
      xfce4-systemload-plugin xfce4-stopwatch-plugin xfce4-statusnotifier-plugin xfce4-genmon-plugin
      xfce4-smartbookmark-plugin xfce4-volumed-pulse xfce4-verve-plugin xfce4-timer-plugin 
      xfce4-time-out-plugin xfce4-pulseaudio-plugin xfce4-places-plugin xfce4-netload-plugin 
      xfce4-mpc-plugin xfce4-mount-plugin xfce4-mailwatch-plugin xfce4-kbdleds-plugin  
      xfce4-fsguard-plugin xfce4-embed-plugin xfce4-diskperf-plugin xfce4-datetime-plugin 
      xfce4-cpugraph-plugin xfce4-cpufreq-plugin xfce4-calculator-plugin xfce4-battery-plugin 


      flatpak htop lm-sensors acpi nano w3m wget ;irssi ; rtorrent ;hugo
      emacs sbcl racket lightdm lightdm-gtk-greeter papirus-icon-theme ;icedove iceweasel plata-theme
      pavucontrol virt-manager syncthing borg ;guake

      %base-packages))

  (services
    (append
      (list (service xfce-desktop-service-type)
            (service openssh-service-type)
            (set-xorg-configuration
              (xorg-configuration
                (keyboard-layout keyboard-layout))))
      %desktop-services)))

