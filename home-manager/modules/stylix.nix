{ pkgs, inputs, ... }: {
	imports = [ inputs.stylix.homeManagerModules.stylix ];
	home.packages = with pkgs; [
		dejavu_fonts
		nerd-fonts.jetbrains-mono
		nerd-fonts.mononoki
        nerd-fonts.fira-mono
		noto-fonts
		noto-fonts-lgc-plus
		texlivePackages.hebrew-fonts
		noto-fonts-emoji
		font-awesome
		powerline-fonts
		powerline-symbols
	];

	stylix = {
		enable = true;
		polarity = "dark";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
		targets = {
			neovim.enable = false;
			nixvim.enable = false;
			waybar.enable = false;
			wofi.enable = false;
			hyprland.enable = false;
		};
		cursor = {
			name = "Banana";
			size = 24;
			package = pkgs.banana-cursor;
		};

		fonts = {
			emoji = {
				name = "Noto Color Emoji";
				package = pkgs.noto-fonts-color-emoji;
			};
			monospace = {
				name = "Mononoki Nerd Font";
				package = pkgs.nerd-fonts.fira-mono;
			};
			sansSerif = {
				name = "Noto Sans";
				package = pkgs.noto-fonts;
			};
			serif = {
				name = "Noto Serif";
				package = pkgs.noto-fonts;
			};

			sizes = {
				terminal = 13;
				applications = 11;
			};
		};
		
		iconTheme = {
			enable = true;
			package = pkgs.papirus-icon-theme;
			dark = "Papirus-Dark";
			light = "Papirus-Light";
		};
		
		image = ../../wallpaper/nix-anime.png;
	};
} 
