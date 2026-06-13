
{ pkgs, ... }:

{
environment.systemPackages = with pkgs; [
	lua

	python3
	rustc
	cargo

	gcc

  zig

	jdk
	];
}
