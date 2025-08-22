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
			vi = "nvim";
		};

		history.size = 10000;
		history.path = "${config.xdg.dataHome}/zsh/history";
	};
}
