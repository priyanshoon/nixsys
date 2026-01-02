{
	description = "My system configurations";

    # nixConfig = {
    #     extra-substituters = [
    #         "https://cache.nixos-cuda.org"
    #     ];
    #     extra-trusted-public-keys = [
    #         "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
    #     ];
    # };

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		
		stylix = {
			url = "github:nix-community/stylix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = {self, nixpkgs, home-manager, ...}@inputs: let
		system = "x86_64-linux";
		homeStateVersion = "25.05";
		user = "priyanshoon";
		hosts = [
			{ hostname = "expansion"; stateVersion = "25.05"; }
			{ hostname = "domain"; stateVersion = "25.05"; }
		];
		
		makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
			system = system;
			specialArgs = {
				inherit inputs stateVersion hostname user;
			};
			
			modules = [
				./hosts/${hostname}/configuration.nix
			];
		};
	in {
		nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
			configs // {
				"${host.hostname}" = makeSystem {
					inherit (host) hostname stateVersion;
				};
		}) {} hosts;
		
		homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
			pkgs = nixpkgs.legacyPackages.${system};
			extraSpecialArgs = {
				inherit inputs homeStateVersion user;
			};

			modules = [
				./home-manager/home.nix
			];
		};
	};
}
