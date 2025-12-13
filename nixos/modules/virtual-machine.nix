{ config, pkgs, ... }:
{
    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;

    boot.kernelModules = [ "kvm-intel" ];

    users.users.priyanshoon = {
        isNormalUser = true;
        extraGroups = [ "libvirtd" "kvm" ];
    };

    virtualisation.spiceUSBRedirection.enable = true;
}
