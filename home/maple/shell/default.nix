{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    o = "xdg-open";
    open = "xdg-open";
    evince = "papers";

    nrs = "sudo nixos-rebuild switch";
    nrb = "sudo nixos-rebuild boot";
  };
}
