{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    # https://wiki.hypr.land/Configuring/Basics/Window-Rules/
    window_rule = [
      {
        name = "Ignore maximise requests from apps";
        match = {
          class = ".*";
        };
        suppress_event = "maximize";
      }
      {
        name = "Thunderbird composing";
        match = {
          initial_class = "^thunderbird$";
          initial_title = "^Write";
        };
        float = true;
        center = true;
      }
      {
        name = "Nautilus Previewer";
        match = {
          initial_class = "^org.gnome.NautilusPreviewer$";
        };
        float = true;
        center = true;
      }
    ];
  };
}