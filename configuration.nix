{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix

      ./modules/common/packages.nix
      ./modules/common/fonts.nix
      ./modules/common/lsp.nix
      ./modules/common/dev.nix

      ./modules/users/arturo.nix      

      ./modules/laptop.nix
    ];

  nix.settings.experimental-features = [
	"nix-command"
	"flakes"
  ];

  networking.hostName = "nixie";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "America/Chicago";
  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "25.11";

}

