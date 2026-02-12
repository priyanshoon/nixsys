{ lib, ... }: {
	programs.ghostty = {
		enable = true;
		settings = {
            # background = "#131314";
            foreground = "#cdcdcd";
            cursor-style = "block";
            shell-integration-features = "no-cursor";
            theme = "Vague";
			# theme = "Gruvbox Dark Hard";
            # theme = "Solarized Dark Patched";
			# font-family = lib.mkForce "Mononoki Nerd Font";
            # font-family = lib.mkForce "AnonymicePro Nerd Font";
            font-family = lib.mkForce "ComicShannsMono Nerd Font";
			# font-family = lib.mkForce "Caskaydia Mono Nerd Font Light";
            # font-family = lib.mkForce "";
			font-size = 18;
            # background-opacity = 0.92;
		};
	};
}
