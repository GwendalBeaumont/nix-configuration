{ config, pkgs, ... }:

{
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
  ];

  programs = {
    # Shell
    bat.enable = true;
    btop.enable = true;
    fd.enable = true;
    fzf.enable = true;
    ripgrep.enable = true;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
