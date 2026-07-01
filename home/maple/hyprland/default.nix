{ inputs, config, lib, pkgs, ... }:

with lib; {
  imports = [
    # Hyprland config
    ./conf

    # Programs
    # ./ashell.nix
    ./hypridle.nix
    ./hyprlock.nix
    ./waybar.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    configType = "lua";
  };

  # Hyprpolkit
  services.hyprpolkitagent.enable = true;

  # Launcher
  services.hyprlauncher.enable = true;

  # Notification daemon
  services.mako.enable = true;

  # Qt support
  qt.enable = true;

  # nm-applet
  services.network-manager-applet.enable = true;

  services.playerctld.enable = true;

  home = {
    packages = with pkgs; [
      # Screenshots
      grim
      slurp

      pavucontrol
    ];
  };
}

