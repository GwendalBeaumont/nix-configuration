{ config, pkgs, username, ... }:

{
  imports = [
    ../config

    ./git
    ./kitty
    ./lazygit
    ./neovim
    ./shell
  ];

  home = {
    username = "${username}";

    packages = with pkgs; [
      # Misc
      cairo
      cocoapods
      pinentry_mac
    ];

    sessionPath = [
      "$HOME/flutter/bin"
    ];

    stateVersion = "25.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
