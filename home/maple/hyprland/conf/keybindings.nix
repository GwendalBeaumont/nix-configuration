{ config, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {
    # See https://wiki.hyprland.org/Configuring/Keywords/
    mainMod = {
      _var = "SUPER";
    };

    bind = [
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + RETURN\"")
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(terminal)")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + Q\"")
          (lib.generators.mkLuaInline "hl.dsp.window.close()")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + E\"")
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(fileManager)")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + V\"")
          (lib.generators.mkLuaInline "hl.dsp.window.float({ action = \"toggle\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + R\"")
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(menu)")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + P\"")
          (lib.generators.mkLuaInline "hl.dsp.window.pin({ action = \"toggle\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + L\"")
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"hyprlock &\")")
        ];
      }
      {
        _args = [
          "CTRL + SHIFT + 4"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"grim -g \\\"$(slurp -d)\\\" - | wl-copy\")")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + F\"")
          (lib.generators.mkLuaInline "hl.dsp.window.fullscreen({\"fullscreen\", toggle})")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + G\"")
          (lib.generators.mkLuaInline "hl.dsp.group.toggle()")
        ];
      }

      # Move focus with mainMod + arrow keys
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + left\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"left\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + right\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"right\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + up\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"up\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + down\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ direction = \"down\" })")
        ];
      }

      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + CONTROL + left\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"e-1\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + CONTROL + right\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"e+1\" })")
        ];
      }

      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + TAB\"")
          (lib.generators.mkLuaInline "hl.dsp.focus({ workspace = \"previous\" })")
        ];
      }

      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + CONTROL + SHIFT + left\"")
          (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = \"e-1\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + CONTROL + SHIFT + right\"")
          (lib.generators.mkLuaInline "hl.dsp.window.move({ workspace = \"e+1\" })")
        ];
      }

      # Move current workspace to next/previous monitor
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + ALT + left\"")
          (lib.generators.mkLuaInline "hl.dsp.workspace.move({ monitor = \"-1\" })")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + ALT + right\"")
          (lib.generators.mkLuaInline "hl.dsp.workspace.move({ monitor = \"+1\" })")
        ];
      }

      # Move/resize windows with mainMod + LMB/RMB and dragging
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + mouse:272\"")
          (lib.generators.mkLuaInline "hl.dsp.window.drag()")
          (lib.generators.mkLuaInline "{ mouse = true }")
        ];
      }
      {
        _args = [
          (lib.generators.mkLuaInline "mainMod .. \" + mouse:273\"")
          (lib.generators.mkLuaInline "hl.dsp.window.resize()")
          (lib.generators.mkLuaInline "{ mouse = true }")
        ];
      }
      
      # Laptop multimedia keys for volume and LCD brightness
      {
        _args = [
          "XF86AudioRaiseVolume"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+\")")
          (lib.generators.mkLuaInline "{ locked = true, repeating = true }")
        ];
      }
      {
        _args = [
          "XF86AudioLowerVolume"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-\")")
          (lib.generators.mkLuaInline "{ locked = true, repeating = true }")
        ];
      }
      {
        _args = [
          "XF86AudioMute"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle\")")
          (lib.generators.mkLuaInline "{ locked = true, repeating = true }")
        ];
      }
      {
        _args = [
          "XF86AudioMicMute"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle\")")
          (lib.generators.mkLuaInline "{ locked = true, repeating = true }")
        ];
      }
      {
        _args = [
          "XF86MonBrightnessUp"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"brightnessctl -e4 -n2 set 5%+\")")
          (lib.generators.mkLuaInline "{ locked = true, repeating = true }")
        ];
      }
      {
        _args = [
          "XF86MonBrightnessDown"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"brightnessctl -e4 -n2 set 5%-\")")
          (lib.generators.mkLuaInline "{ locked = true, repeating = true }")
        ];
      }

      # Requires playerctl
      {
        _args = [
          "XF86AudioNext"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"playerctl next\")")
          (lib.generators.mkLuaInline "{ locked = true }")
        ];
      }
      {
        _args = [
          "XF86AudioPause"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"playerctl play-pause\")")
          (lib.generators.mkLuaInline "{ locked = true }")
        ];
      }
      {
        _args = [
          "XF86AudioPlay"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"playerctl play-pause\")")
          (lib.generators.mkLuaInline "{ locked = true }")
        ];
      }
      {
        _args = [
          "XF86AudioPrev"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"playerctl previous\")")
          (lib.generators.mkLuaInline "{ locked = true }")
        ];
      }

      # Lid closed/opened detection
      {
        _args = [
          "switch:on:Lid Switch"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"hyprctl eval 'hl.monitor({ output = \\\"desc:AU Optronics 0x4F8A\\\", disabled = true })'\")")
          (lib.generators.mkLuaInline "{ locked = true }")
        ];
      }
      {
        _args = [
          "switch:off:Lid Switch"
          (lib.generators.mkLuaInline "hl.dsp.exec_cmd(\"hyprctl eval 'hl.monitor({ output = \\\"desc:AU Optronics 0x4F8A\\\", disabled = false })'\")")
          (lib.generators.mkLuaInline "{ locked = true }")
        ];
      }
    ];
  };

  # Switch workspaces with mainMod + [0-9]
  # Move active window to a workspace with mainMod + SHIFT + [0-9]
  wayland.windowManager.hyprland.extraConfig = ''
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end'';
}
