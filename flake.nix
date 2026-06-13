


{
  description = "NixOS from Scratch";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:{
    nixosConfigurations.nixie = 
      nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

	modules = [
          ./configuration.nix
	  ./modules/common/packages.nix
	  ./modules/common/fonts.nix
	  home-manager.nixosModules.home-manager

	{
	  home-manager = {
	    useGlobalPkgs = true;
	    useUserPackages = true;

	    users.arturo = import ./home.nix;
	    backupFileExtension = "backup";
	  };
	 }
	];
       };
      };	
}
