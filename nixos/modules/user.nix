{ pkgs, user, ... }: {
	programs.zsh.enable = true;
	users = {
		defaultUserShell = pkgs.zsh;
		users.${user} = {
			isNormalUser = true;
			extraGroups = [ "wheel" "networkmanager" "video" "audio" "libvirtd" "kvm" ];
		};
	};
	
	services.getty.autologinUser = user;
}
