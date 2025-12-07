{ lib, ... }: {
	programs.ghostty = {
		enable = true;
		settings = {
            # background = "#181818";
            cursor-style = "block";
            shell-integration-features = "no-cursor";
			theme = "Gruvbox Dark Hard";
			# font-family = lib.mkForce "Mononoki Nerd Font";
			font-family = lib.mkForce "Caskaydia Mono Nerd Font Light";
			font-size = 18;
            # background-opacity = 0.9;
		};
	};
}
