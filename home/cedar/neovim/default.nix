{ inputs, config, lib, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
  };

  home.shellAliases = {
    e = "nvim";
  };
}
