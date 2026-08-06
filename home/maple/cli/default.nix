{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    o = "xdg-open";
    open = "xdg-open";

    nrd = "nixos-rebuild dry-run";
    nrb = "sudo nixos-rebuild boot";
    nrs = "sudo nixos-rebuild switch";
  };
}
