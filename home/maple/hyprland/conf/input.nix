{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    config = {
      # https://wiki.hyprland.org/Configuring/Variables/#input
      input = {
        kb_layout = "us";
        # kb_variant = "altgr-intl";
        # kb_model = "";
        # kb_options = "";
        # kb_rules = "";
        numlock_by_default = true;

        follow_mouse = 1;

        touchpad = {
          natural_scroll = true;
        };
      };
    };

    # https://wiki.hyprland.org/Configuring/Variables/#gestures
    gesture = [
      {
        fingers = 3;
        direction = "horizontal";
        action = "workspace";
      }
    ];

    # https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs
    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.5;
    };
  };
}