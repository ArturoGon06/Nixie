


{ pkgs, ... }:


{
	environment.systemPackages = with pkgs; [
		neovim
		git
		curl
		wget
		fastfetch
		btop
		firefox
		wezterm
		rofi
		awww
		starship
		eza
		bat
		localsend

		yazi
		thunar

		ffmpegthumbnailer
		poppler
		p7zip
		jq
		ripgrep
		fd
		fzf
		zoxide
		imagemagick

	];
}


