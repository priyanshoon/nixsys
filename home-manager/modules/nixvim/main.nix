{ inputs, ... }: {
	
	imports = [
		inputs.nixvim.homeManagerModules.nixvim
	];
	
	programs.nixvim = {
		enable = true;
        plugins.web-devicons.enable = false;
	};
}

