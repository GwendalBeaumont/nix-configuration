{ inputs, config, lib, pkgs, ... }:

{
  programs.lazygit = {
    enableZshIntegration = true;
  };

  home.shellAliases = {
    lg = "lazygit";
  };
}
