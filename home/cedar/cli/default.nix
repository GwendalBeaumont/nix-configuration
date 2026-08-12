{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    drs = "sudo darwin-rebuild switch";
  };

  programs.zsh.initContent = "eval \"$(/opt/homebrew/bin/brew shellenv zsh)\"\neval \"$(starship init zsh)\"\nexport PATH=/usr/local/texlive/2026/bin/universal-darwin:$PATH";
}
