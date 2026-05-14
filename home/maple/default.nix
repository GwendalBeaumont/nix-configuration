{ config, pkgs, username, ... }:

{
  imports = [
    ../common

    ./eclipse
    ./element-desktop
    # ./emacs
    ./firefox
    ./git
    ./kitty
    ./lazygit
    ./neovim
    ./onlyoffice
    ./shell
    ./vscode
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";

    packages = with pkgs; [
      # Communication
      signal-desktop

      # Productivity
      drawio
      thunderbird
      zotero

      # Misc
      noto-fonts-cjk-sans
      qbz

      # Utils
      libgcc
      libsecret
      wl-clipboard
    ];

    sessionPath = [
      "$HOME/.emacs.d/bin"
    ];

    stateVersion = "25.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
