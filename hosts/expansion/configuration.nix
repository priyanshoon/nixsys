{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];
  nixpkgs.config.allowUnfree = true;
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
