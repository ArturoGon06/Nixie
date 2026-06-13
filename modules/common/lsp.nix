


{ pkgs, ... }:


{
	environment.systemPackages = with pkgs; [
		clang-tools

		lua-language-server
		stylua

		nil
		nixfmt
	];
}
