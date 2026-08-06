{ inputs, config, lib, pkgs, ... }:

with lib; {
  imports = [
    # Hyprland config
    ./conf

    # Programs config
    ./fuzzel.nix
    ./hypridle.nix
    ./hyprlock.nix
    ./waybar.nix
  ];

  wayland.windowManager.hyprland = {
    package = null;
    portalPackage = null;

    configType = "lua";
  };

  home = {
    pointerCursor = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
      size = 16;
    };
  };

  gtk = {
    iconTheme = {
      package = pkgs.adwaita-icon-theme;
      name = "Adwaita";
    };
  };
}
