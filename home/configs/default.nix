{ config, pkgs, ... }:

{
  imports = [
    ./cli
    ./direnv
    ./emacs
    ./firefox
    ./git
    ./gpg
    ./hyprland
    ./kitty
    ./lazygit
    ./lf
    ./neovim
    ./starship
  ];
}
