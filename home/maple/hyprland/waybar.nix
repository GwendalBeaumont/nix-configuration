{ inputs, config, lib, pkgs, ... }:

{
  # Status bar
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [ "clock" ];

        modules-right = [
          "mpris"
          "cpu"
          "memory"
          "tray"
          "pulseaudio"
          "battery"
        ];

        clock = {
          format = "{:%a %d %b %H:%M}";
          tooltip = false;
        };

        cpu = {
          interval = 5;
          format = "  {usage:02}%";
          tooltip = false;
        };

        memory = {
          interval = 5;
          format = "  {used:0.2f}/{total:0.2f} GiB";
          tooltip = false;
        };

        battery = {
          states = {
            warning = 20;
            critical = 10;
          };
          interval = 10;
          format = "{icon}  {capacity}%";
          format-charging = "󰂄  {time}";
          format-icons = [ "" "" "" "" "" ];
          format-time = "{H} h {m} min";
        };

        mpris = {
          format = "󰎇  {artist} - {title}";
          tooltip = false;
        };

        network = {
          format-wifi = " ({signalStrength}%) {essid}";
          format-ethernet = "{ipaddr}/{cidr} ";
          tooltip-format = "{ifname} via {gwaddr} ";
          format-linked = "{ifname} (No IP) ";
          format-disconnected = "Disconnected ⚠";
        };

        pulseaudio = {
          format = "{icon}  {volume}%";
          format-bluetooth = "{icon} {volume}%";
          format-muted = "  {format_source}";
          format-source = "  {volume}%";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            default = [ "" "" ""];
          };
          on-click = "pavucontrol";
        };

        tray = {
          spacing = 10;
        };
      };
    };

    style = ''
* {
  font-family: Sans, sans-serif;
  font-size: 12px;
  font-weight: 500;
  margin: 0;
  padding: 0;
  border: none;
  border-radius: 0;
  box-shadow: none;
  text-shadow: none;
}

window#waybar {
  background-color: transparent;
  color: #ffffff;
  transition: background-color 0.5s;
}

window#waybar.hidden {
    opacity: 0.2;
}

#window {
    font-family: 'Sarasa Gothic SC', sans-serif;
}

#clock {
    min-width: 140px;
    color: #ffffff;
    padding: 0px 10px;
}

#battery,
#cpu,
#memory,
#pulseaudio,
#tray,
#mpris {
  padding: 3px 5px;
  color: #ffffff;
}

#battery.charging{
  color: #9ece6a;
}

#battery.critical:not(.charging) {
  background-color: #f7768e;
  animation: blink 0.5s linear infinite alternate;
}

@keyframes blink {
  to {
    background-color: #ffffff;
    color: #3b3f51;
  }
}

#pulseaudio.muted {
  background-color: #3b3f51;
}

#tray {
  color: #282a36;
}

#tray>.passive {
  -gtk-icon-effect: dim;
  color: #6272a4;
}

#tray>.needs-attention {
  background-color: #e0af68;
  color: #ffffff;
}

#workspaces button {
  padding: 3px 3px;
  background-color: transparent;
  color: #ffffff;
}

#workspaces button:hover,
#workspaces button.active {
  /* background-color: #6272a4; */
  box-shadow: inset 0 3px #813d9c;
}

#workspaces button.urgent {
  background-color: #f7768e;
}

label:focus {
  background-color: #000000;
}
    '';
  };
}
