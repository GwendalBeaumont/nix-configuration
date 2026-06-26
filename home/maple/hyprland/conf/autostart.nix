{ config, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
    on = {
      _args = [
        "hyprland.start"
        (lib.generators.mkLuaInline "function()\n  hl.exec_cmd(\"systemctl --user start hyprpolkitagent\")\n  hl.exec_cmd(\"nm-applet & ashell\")\nend")
      ];
    };
  };
}
