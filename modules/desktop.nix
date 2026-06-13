

{ config, pkgs, ... }:

{
  networking.hostName = "zeus";

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modsetting.enable = true;
    open = false;
    nvidiaSettings = true;
  };

  programs.steam.enable = true;

}


