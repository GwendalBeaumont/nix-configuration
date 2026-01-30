{ config, pkgs, ... }:

{
  imports = [
    ./btop
    ./dir-env
    ./git
    ./gpg
    ./kitty
    ./latex
    ./lf
    ./neovim
    ./shell
    ./starship
  ];

  home.packages = with pkgs; [
    # Archives
    zip
    unzip

    # Utils
    coreutils
    curl
    gnumake
    trash-cli
    tree-sitter
    wget
  ];
}
