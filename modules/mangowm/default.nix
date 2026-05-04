{ config, lib, pkgs, ... }:

{
  # Enable mango
  programs.mango.enable = true;

  # Enable XDG Portals
  xdg.portal.wlr.enable = true;
}
