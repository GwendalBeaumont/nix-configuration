{ config, ... }:

{
  # https://wiki.hyprland.org/Configuring/Keywords/
  wayland.windowManager.hyprland.settings = {
    terminal = {
      _var = "kitty";
    };

    fileManager = {
      _var = "nautilus";
    };

    menu = {
      _var = "fuzzel";
    };
  };
}
