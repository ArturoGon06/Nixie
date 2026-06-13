

{ pkgs, ... }:

{

  programs.bash = {
		  enable = true;
		  shellAliases = {
			  btw = "echo I use NixOS, btw";
			  rebuild = "sudo nixos-rebuild switch --flake path:/etc/nixos#nixie";
			  tree = "eza --tree --icons --level=3";
			  fast = "fastfetch";
		  };
	  };

	  programs.starship = {
		  enable = true;

		  settings = {
			  add_newline = false;

			  character = {
				  success_symbol = "[](bold #ff8800)";
				  error_symbol = "[ ](bold #7a1f3d)";
        };

			  directory = {
				  home_symbol = " 󰋜 ";
				  read_only = "  ";
				  style = "bold #ff8800";
        };

			  git_branch = {
				  symbol = "   ";
        };

			  git_status = {
				  modified = " ";
				  staged = " ";
				  untracked = " ";
				  deleted = " ";
        };
      };
    };
}
