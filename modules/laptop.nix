


{ pkgs, ... }:

{
	networking.networkmanager.enable = true;
	powerManagement.enable = true;

	services.xserver.enable = true;
	services.displayManager.ly.enable = true;
	services.tlp.enable = true;
	services.thermald.enable = true;

	environment.systemPackages = with pkgs; [
		powertop
	];
	
	programs.hyprland = {
	  enable = true;
	  xwayland.enable = true;
	};
}
