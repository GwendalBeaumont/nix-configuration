{ config, pkgs, username, ... }:

{
  imports = [
    ../configs

    # ./emacs
    ./firefox
    ./git
    ./hyprland
    ./shell
    ./vscode
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";

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
      stow
      wl-clipboard
    ];
  };

  programs = {
    eclipse.enable = true;
    element-desktop.enable = true;
    kitty.enable = true;
    lazygit.enable = true;
    neovim.enable = true;
    onlyoffice.enable = true;
    vscode.enable = true;
  };

  # Fix from switch to Hyprland
  xdg.desktopEntries.signal = {
    name = "Signal";
    exec = "signal-desktop --password-store=\"gnome-libsecret\" %U";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
