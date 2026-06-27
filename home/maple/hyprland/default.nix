{ inputs, config, lib, pkgs, ... }:

with lib; {
  imports = [
    # Hyprland config
    ./conf

    # Programs
    ./hypridle.nix
    ./hyprlock.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    configType = "lua";
  };

  # Hyprpolkit
  services.hyprpolkitagent.enable = true;

  # Status bar
  programs.ashell = {
    enable = true;
    settings = {
      position = "Top";

      modules = {
        left = [
          "Workspaces"
          "WindowTitle"
        ];
        center = [
          "Tempo"
          "MediaPlayer"
        ];
        right = [
          "SystemInfo"
          [
            "Tray"
          ]
          [
            "Privacy"
            "Settings"
          ]
        ];
      };

      notifications = {
        format = "%H:%M";
        show_timestamps = true;
        show_bodies = true;
      };

      osd = {
        enabled = true;
        timeout = 1500;
      };
    };
  };

  # Launcher
  services.hyprlauncher.enable = true;

  # Notification daemon
  # services.mako.enable = true;

  # Qt support
  qt.enable = true;
}

