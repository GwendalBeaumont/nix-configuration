{
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Polkit
  security.polkit.enable = true;

  # Hyprlock
  security.pam.services.hyprlock = {};
}
