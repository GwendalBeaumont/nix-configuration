{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    o = "xdg-open";
    open = "xdg-open";

    nrs = "sudo nixos-rebuild switch";
    nrb = "sudo nixos-rebuild boot";
  };
}
