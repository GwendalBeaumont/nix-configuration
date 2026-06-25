{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    # See https://wiki.hyprland.org/Configuring/Monitors/
    monitor = [
      {
        output = "desc:AU Optronics 0x4F8A";
        mode = "1920x1080@60";
        position = "0x0";
        scale = 1;
      }
      {
        output = "desc:HP Inc. HP E27q G5 CNC42530PR";
        mode = "2560x1440@75";
        position = "-2560x0";
        scale = 1;
      }
    ];
  };
}