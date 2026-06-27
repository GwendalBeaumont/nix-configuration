{ config, lib, ... }:

{
  # https://wiki.hyprland.org/Configuring/Variables/#animations
  wayland.windowManager.hyprland.settings = {
    animation = {
      leaf = "global";
      enabled = true;
      speed = 0.1;
      bezier = "quick";
    };

    curve = {
      _args = [
        "quick"
        (lib.generators.mkLuaInline "{ type = \"bezier\", points = { {0.15, 0}, {0.1, 1} } }")
      ];
    };
  };
}
