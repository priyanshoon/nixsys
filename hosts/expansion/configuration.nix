{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];

  # virtualisation.libvirtd = {
  #     enable = true;
  #     qemu = {
  #         swtpm.enable = true;
  #         ovmf.packages = [ pkgs.OVMFFull.fd ];
  #     };
  #
  #     virtualisation.spiceUSBRedirection.enable = true;
  # };

  environment.systemPackages = [ pkgs.home-manager ];
  nixpkgs.config.allowUnfree = true;
  networking.hostName = hostname;
  system.stateVersion = stateVersion;
}
