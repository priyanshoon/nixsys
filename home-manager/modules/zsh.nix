{ config, ... }: {
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		
		shellAliases = {
            ls = "ls -la --color";
			cls = "clear";
			tmux = "tmux -u";
            nix-clean = "sudo nix-collect-garbage --delete-older-than 2d --cores 16 && nix-collect-garbage --delete-older-than 2d --cores 16";
			vi = "nvim";
		};

		history.size = 10000;
		history.path = "${config.xdg.dataHome}/zsh/history";
	};
}
