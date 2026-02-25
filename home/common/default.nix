{ config, pkgs, ... }:

{
  imports = [
    ./dir-env
    ./git
    ./gpg
    ./kitty
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

    # LaTeX
    texliveFull
  ];
}
