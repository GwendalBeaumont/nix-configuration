{ config, pkgs, username, ... }:

{
  imports = [
    ../common/nixos.nix
    ../configs

    ./cli
    ./git
    ./hyprland
    ./vscode
  ];

  home = {
    stateVersion = "25.05";

    packages = with pkgs; [
      # Communication
      signal-desktop

      # Productivity
      drawio
      thunderbird
      zotero

      # Misc
      qbz
    ];
  };

  programs = {
    direnv.enable = true;
    nix-direnv.enable = true;
    eclipse.enable = true;
    element-desktop.enable = true;
    # emacs.enable = true;
    fastfetch.enable = true;
    firefox.enable = true;
    git.enable = true;
    gpg.enable = true;
    kitty.enable = true;
    lazygit.enable = true;
    lf.enable = true;
    neovim.enable = true;
    onlyoffice.enable = true;
    starship.enable = true;
    vscode.enable = true;
  };

  # Fix from switch to Hyprland
  xdg.desktopEntries.signal = {
    name = "Signal";
    exec = "signal-desktop --password-store=\"gnome-libsecret\" %U";
  };
}
