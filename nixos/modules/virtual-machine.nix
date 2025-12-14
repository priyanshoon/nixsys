{ config, pkgs, ... }:
{
    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;

    boot.kernelModules = [ "kvm-intel" ];

    virtualisation.spiceUSBRedirection.enable = true;
}
