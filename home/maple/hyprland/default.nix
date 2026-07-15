{ inputs, config, lib, pkgs, ... }:

with lib; {
  imports = [
    # Hyprland config
    ./conf

    # Programs
    ./fuzzel.nix
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

      # Sound control
      pavucontrol
    ];

    pointerCursor = {
      enable = true;
      gtk.enable = true;
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
      size = 16;
    };
  };

  gtk = {
    enable = true;

    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };
  };
}
