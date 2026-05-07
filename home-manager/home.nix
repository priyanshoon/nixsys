{ inputs, homeStateVersion, user, ... }: {
	imports = [
		./modules
		./home-packages.nix
        inputs.sops-nix.homeModules.sops
	];

    sops.defaultSopsFile = ../secrets/secrets.yaml;
    sops.age.keyFile = "/home/priyanshoon/.config/sops/age/keys.txt";
    sops.secrets.example-key = {};

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
            setSessionVariables = true;
        };
    };
}
