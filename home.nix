


{ config, pkgs, ... }:


{
  imports = [
    ./modules/common/bash.nix
  ];

	home.username = "arturo";
	home.homeDirectory = "/home/arturo";

	home.file.".config/hypr".source = ./dotfiles/hypr;
  home.file.".config/nvim".source = ./dotfiles/nvim;
  home.file.".wezterm.lua".source = ./dotfiles/wezterm/wezterm.lua;

	programs.git.enable = true;
	home.stateVersion = "25.11";

}

