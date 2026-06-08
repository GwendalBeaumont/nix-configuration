{ config, pkgs, ... }:

{
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Necessary for GDM
  services.xserver.xkb = {
    layout = "us";
    variant = "altgr-intl";
  };

  # Make sure dev-tools and games aren't installed by default
  services.gnome = {
    core-developer-tools.enable = false;
    games.enable = false;
  };

  environment = {
    gnome.excludePackages = with pkgs; [
      decibels # Audio Player
      epiphany # Web
      geary # Mail
      gnome-characters # Characters
      gnome-clocks # Clocks
      gnome-connections # Connections
      gnome-console # Console
      gnome-contacts # Contacts
      gnome-font-viewer # Fonts
      gnome-maps # Maps
      gnome-music # Music
      gnome-system-monitor # System Monitor
      gnome-text-editor # Text Editor
      gnome-tour # Tour
      gnome-user-docs # User Documentation
      gnome-weather # Weather
      simple-scan # Document Scanner
      snapshot # Camera
      showtime # Video Player
      yelp # Help
    ];
  };
}
