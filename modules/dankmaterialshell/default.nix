{ config, lib, pkgs, ... }:

{
  programs.dms-shell = {
    enable = true;

    # Core features
    enableSystemMonitoring = true;     # System monitoring widgets (dgop)
    enableVPN = true;                  # VPN management widget
    enableCalendarEvents = true;       # Calendar integration (khal)
  };

  # Necessary apps
  environment.systemPackages = with pkgs; [
    dgop
    khal
  ];

  # Add dsearch to spotlight
  programs.dsearch = {
    enable = true;
  };
}
