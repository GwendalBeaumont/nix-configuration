{ config, ... }:

{
  # https://wiki.hyprland.org/Configuring/Variables/#animations
  wayland.windowManager.hyprland.settings = {
    animation = {
      leaf = "global";
      enabled = false;
    };
  };
}
