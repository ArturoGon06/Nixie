




{ pkgs, ... }:

{
	users.users.arturo = {
		isNormalUser = true;
		description = "Arturo";
		
		extraGroups = [
			"wheel"
			"networkmanager"
		];
		
		shell = pkgs.bash;
	};
}
