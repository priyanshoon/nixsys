{

    boot.loader.systemd-boot.enable = false;

    boot.loader.efi = {
        efiSysMountPoint = "/boot/efi";
    };


  boot.loader.grub = {
# no need to set devices, disko will add all devices that have a EF02 partition to the list already
# devices = [ ];
    enable = true;
    device = "nodev";
    efiInstallAsRemovable = true;
    efiSupport = true;
  };
}
