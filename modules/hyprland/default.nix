{
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Hyprlock
  security.pam.services.hyprlock = {};
}
