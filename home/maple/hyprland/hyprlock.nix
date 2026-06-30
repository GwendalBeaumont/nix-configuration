{ inputs, config, lib, pkgs, ... }:

with lib; {
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
        ignore_empty_input = true;
      };

      animations = {
        enabled = true;
        bezier = "linear, 1, 1, 0, 0";
        animation = [
          "fadeIn, 1, 5, linear"
          "fadeOut, 1, 5, linear"
          "inputFieldDots, 1, 2, linear"
        ];
      };

      background = {
        color = "rgba(0, 0, 0, 1.0)";
      };

      input-field = {
        size = "10%, 3%";
        outline_thickness = 3;
        inner_color = "rgba(0, 0, 0, 0.0)"; # no fill

        outer_color = "rgba(255,255,255,1)";
        check_color = "rgba(00ff99ee) rgba(ff6633ee) 120deg";
        fail_color = "rgba(ff6633ee) rgba(ff0066ee) 40deg";

        font_color = "rgb(255, 255, 255)";
        font_family = "Sans";
        fade_on_empty = false;
        rounding = 30;

        placeholder_text = "Input password...";
        fail_text = "$PAMFAIL$FPRINTFAIL";

        position = "0, 10%";
        halign = "center";
        valign = "bottom";
      };

      label = [
        # TIME
        {
          text = "$TIME"; # ref. https://wiki.hyprland.org/Hypr-Ecosystem/hyprlock/#variable-substitution
          font_family = "Sans";
          font_size = 80;

          position = "0, 200";
          halign = "center";
          valign = "center";
        }

        # DATE
        {
          text = "cmd[update:60000] date +\"%A, %d %B %Y\""; # update every 60 seconds
          font_family = "Sans";
          font_size = 25;

          position = "0, 130";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}

