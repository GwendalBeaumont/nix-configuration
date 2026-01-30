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
    coreutils
    curl
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
