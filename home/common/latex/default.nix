{ inputs, config, lib, pkgs, ... }:

{
  programs.texlive = {
    enable = true;

    packageSet = pkgs.texliveFull;
  };
}
