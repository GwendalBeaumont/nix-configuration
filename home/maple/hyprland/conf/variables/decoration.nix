{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    # https://wiki.hyprland.org/Configuring/Variables/#decoration
    config = {
      decoration = {
        rounding = 5;
        rounding_power = 2;

        active_opacity = 1.0;

        blur = {
          enabled = true;
          size = 20;
          passes = 2;
          contrast = 0.8916;
          brightness = 1.0;
          vibrancy = 1.0;
          vibrancy_darkness = 0.5;
        };

        shadow = {
          enabled = false;
        };
      };
    };
  };
}
