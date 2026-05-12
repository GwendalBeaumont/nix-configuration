{ inputs, config, lib, pkgs, ... }:

{
  programs.lazygit = {
    enable = true;
    enableZshIntegration = true;
  };

  home.shellAliases = {
    lg = "lazygit";
  };
}
