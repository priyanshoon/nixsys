{ homeStateVersion, user, ... }: {
	imports = [
		./modules
		./home-packages.nix
	];

	home = {
		username = user;
		homeDirectory = "/home/${user}";
		stateVersion = homeStateVersion;
	};

    xdg = {
        userDirs = {
            enable = true;
            desktop = "\$HOME/desktop";
            documents = "\$HOME/docs";
            download = "\$HOME/downloads";
            pictures = "\$HOME/pics";
            videos = "\$HOME/vids";
        };
    };
}
