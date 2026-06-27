{ inputs, config, lib, pkgs, ... }:

{
  # Status bar
  programs.ashell = {
    enable = true;
    settings = {
      position = "Top";

      modules = {
        left = [
          "Workspaces"
          "WindowTitle"
        ];
        center = [
          "Tempo"
          "MediaPlayer"
        ];
        right = [
          "SystemInfo"
          [
            "Tray"
          ]
          [
            "Privacy"
            "Settings"
          ]
        ];
      };

      # notifications = {
      #   format = "%H:%M";
      #   show_timestamps = true;
      #   show_bodies = true;
      # };

      osd = {
        enabled = true;
        timeout = 1500;
      };

      settings = {
        battery_format = "IconAndTime";
        audio_indicator_format = "IconAndPercentage";
        microphone_indicator_format = "IconAndPercentage";
      };

      system_info.memory = {
        format = "Fraction";
      };

      system_info.disk = {
        format = "Fraction";
      };

      workspaces = {
        visibility_mode = "MonitorSpecificExclusive";
      };
    };
  };
}
