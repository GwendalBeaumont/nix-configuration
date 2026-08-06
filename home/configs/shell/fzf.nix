{ inputs, config, lib, pkgs, ... }:

{
  programs.fzf = {
    enableZshIntegration = true;
  };
}
