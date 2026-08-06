{ config, pkgs, ... }:

{
  imports = [
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
    ./shell
    ./starship
  ];
}
