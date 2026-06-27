{ inputs, config, lib, pkgs, ... }:

with lib; {
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
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
        size = "20%, 5%";
        outline_thickness = 3;
        inner_color = "rgba(0, 0, 0, 0.0)"; # no fill

        outer_color = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        check_color = "rgba(00ff99ee) rgba(ff6633ee) 120deg";
        fail_color = "rgba(ff6633ee) rgba(ff0066ee) 40deg";

        font_color = "rgb(255, 255, 255)";
        fade_on_empty = false;
        rounding = 15;

        placeholder_text = "Input password...";
        fail_text = "$PAMFAIL$FPRINTFAIL";

        position = "0, -20";
        halign = "center";
        valign = "center";
      };

      label = [
        # TIME
        {
          text = "$TIME"; # ref. https://wiki.hyprland.org/Hypr-Ecosystem/hyprlock/#variable-substitution
          font_size = 90;

          position = "-30, 0";
          halign = "right";
          valign = "top";
        }

        # DATE
        {
          text = "cmd[update:60000] date +\"%A, %d %B %Y\""; # update every 60 seconds
          font_size = 25;

          position = "-30, -150";
          halign = "right";
          valign = "top";
        }
      ];
    };
  };
}

