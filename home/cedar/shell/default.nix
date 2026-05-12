{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    drs = "sudo darwin-rebuild switch";
  };
}
