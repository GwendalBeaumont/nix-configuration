{ inputs, config, lib, pkgs, ... }:

with lib; {
  imports = [
    # Hyprland config
    ./conf
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;

    configType = "lua";
  };

  home = {
    packages = with pkgs; [
      hyprlauncher
    ];
  };
}
