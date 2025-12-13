# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ pkgs, stateVersion, hostname, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # ./layout.nix
      ./local-packages.nix
      ./nvidia-driver.nix
      ../../nixos/modules
    ];

  environment.systemPackages = [ pkgs.home-manager ];
  nixpkgs.config.allowUnfree = true;

  services.udev.packages = [
    pkgs.qmk-udev-rules
  ];

    fileSystems."/home/priyanshoon/sohard" = {
        device = "/dev/disk/by-uuid/23dbfcf5-e974-4f0a-9366-65ee6346c0a5";
        fsType = "ext4";
        options = [
            "defaults"
            "nofail"
            "noatime"
            "commit=60"
        ];
    };


  networking.hostName = hostname;
  system.stateVersion = stateVersion; # Did you read the comment?
}
