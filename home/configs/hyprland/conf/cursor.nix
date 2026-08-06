{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    # https://wiki.hyprland.org/Configuring/Environment-variables/
    env = [
      {
        _args = [
          "XCURSOR_SIZE"
          "24"
        ];
      }
      {
        _args = [
          "HYPRCURSOR_SIZE"
          "24"
        ];
      }
    ];
  };
}
