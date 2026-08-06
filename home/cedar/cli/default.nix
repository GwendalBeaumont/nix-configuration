{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    drs = "sudo darwin-rebuild switch";
  };

  programs.zsh.initContent = "eval \"$(/opt/homebrew/bin/brew shellenv zsh)\"";
}
