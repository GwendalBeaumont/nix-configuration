{ config, pkgs, ... }:

{
  imports = [
    ./btop
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
    bat
    coreutils
    curl
    fastfetch
    fd
    fzf
    gnumake
    lf
    ripgrep
    trash-cli
    tree-sitter
    wget

    # LaTeX
    texliveFull
  ];
}
