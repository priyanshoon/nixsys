{ pkgs, inputs, ... }: {
	imports = [ inputs.stylix.homeModules.stylix ];

    fonts.fontconfig = {
        enable = true;
    };

	home.packages = with pkgs; [
		dejavu_fonts
		nerd-fonts.jetbrains-mono
        nerd-fonts.anonymice
        nerd-fonts.caskaydia-mono
        cascadia-code
		nerd-fonts.mononoki
		noto-fonts
		noto-fonts-lgc-plus
		texlivePackages.hebrew-fonts
        noto-fonts-color-emoji
		font-awesome
		powerline-fonts
		powerline-symbols
	];

	stylix = {
		enable = true;
		polarity = "dark";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa-dragon.yaml";
		targets = {
			emacs.enable = false;
			# neovim.enable = true;
			nixvim.enable = false;
            qt = {
                enable = true;
                platform = "qtct";
            };
            ghostty.enable = false;
			waybar.enable = false;
			wofi.enable = false;
			hyprland.enable = false;
            firefox = {
                enable = true;
                profileNames = [ "ybz00pzr.default" ];
            };
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
				package = pkgs.nerd-fonts.mononoki;
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

		icons = {
			enable = true;
			package = pkgs.papirus-icon-theme;
			dark = "Papirus-Dark";
			light = "Papirus-Light";
		};

		image = ../../wallpaper/toji.png;
	};
}
