{ config, pkgs, ... }:

{
  imports = [
    ./direnv
    ./git
    ./gpg
    ./kitty
    ./lazygit
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

    # LaTeX
    texliveFull
  ];
}
