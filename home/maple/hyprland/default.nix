{ inputs, config, lib, pkgs, ... }:

with lib; {
  wayland.windowManager.hyprland = {
    enable = true;
  };

  home = {
    packages = with pkgs; [
      # Screenshots
      grim
      slurp

      # Sound control
      pavucontrol
    ];

    # Mouse pointer
    pointerCursor = {
      enable = true;
      gtk.enable = true;
    };
  };

  # Additionnal programs
  programs = {
    fuzzel.enable = true;
    hyprlock.enable = true;
    waybar.enable = true;
  };

  services = {
    hypridle.enable = true;
    hyprpolkitagent.enable = true;
    playerctld.enable = true;
  
    # Notification daemon
    mako.enable = true;

    # nm-applet
    network-manager-applet.enable = true;
  };

  # GTK/Qt support
  gtk.enable = true;
  qt.enable = true;
}
