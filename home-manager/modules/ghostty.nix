{ lib, ... }: {
	programs.ghostty = {
		enable = true;
		settings = {
            background = "#00151b";
            cursor-style = "block";
            shell-integration-features = "no-cursor";
			# theme = "Gruvbox Dark Hard";
            theme = "Solarized Dark Patched";
			# font-family = lib.mkForce "Mononoki Nerd Font";
			font-family = lib.mkForce "Caskaydia Mono Nerd Font Light";
			font-size = 17.5;
            # background-opacity = 0.9;
		};
	};
}
