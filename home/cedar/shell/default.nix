{ inputs, config, lib, pkgs, ... }:

{
  home.shellAliases = {
    e = "nvim";
    lg = "lazygit";

    drs = "sudo darwin-rebuild switch";
  };
}
