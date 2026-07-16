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

      group = {
        col.border_active = "rgba(3584e4ff)";
        col.border_inactive = "rgba(99c1f1ff)";

        groupbar = {
          font_size = 12;
          height = 16;
          indicator_height = 1;
          col.active = "rgba(3584e4ff)";
          col.inactive = "rgba(99c1f1ff)";
        };
      };
    };
  };
}
