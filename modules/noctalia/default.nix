{ config, lib, pkgs, inputs, ... }:

{
  # Activate necessary packages for Noctalia to work
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;

  # Calendar support
  services.gnome.evolution-data-server.enable = true;

  # Install Noctalia with calendar support
  environment.systemPackages = with pkgs; [
    (inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default.override { calendarSupport = true; })
  ];
}
