{ inputs, config, lib, pkgs, ... }:

{
  # Status bar
  programs.ashell = {
    enable = true;
    settings = {
      position = "Top";
      enable_esc_key = true;

      appearance = {
        primary_color = "#7aa2f7";
        success_color = "#9ece6a";
        warning_color = "#e0af68";
        danger_color = "#f7768e";
        text_color = "#ffffff";
        workspace_colors = [ "#7aa2f7" "#9ece6a" ];
        background_color = {
          base = "#000000";
        };
      };

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
        show_volume_percentage = true;
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
