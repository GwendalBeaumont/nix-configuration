{ config, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
    on = [
      {
        _args = [
          "hyprland.start"
          # Make sure to start waybar after nm-applet to avoid glitched icon
          (lib.generators.mkLuaInline "function()\n  hl.exec_cmd(\"systemctl --user start hyprpolkitagent\")\n  hl.exec_cmd(\"nm-applet\")\n  hl.exec_cmd(\"waybar\")\nend")
        ];
      }
    ];
  };
}
