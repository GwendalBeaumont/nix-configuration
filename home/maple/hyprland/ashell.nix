{ inputs, config, lib, pkgs, ... }:

{
  # Status bar
  programs.ashell = {
    enable = true;
    settings = {
      position = "Top";
      enable_esc_key = true;

      appearance = {
        primary_color = "#813d9c";
        success_color = "#9ece6a";
        warning_color = "#e0af68";
        danger_color = "#f7768e";
        text_color = "#ffffff";
        workspace_colors = [ "#000000" ];
        background_color = {
          base = "#2E2E2E";
        };
      };

      modules = {
        left = [
          "Workspaces"
          "WindowTitle"
        ];
        center = [
          "Tempo"
        ];
        right = [
          "MediaPlayer"
          "SystemInfo"
          [
            "Tray"
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
