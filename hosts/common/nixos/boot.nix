{ config, pkgs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {
      limine = {
        enable = true;
        secureBoot.enable = true;
        maxGenerations = 10;
      };
      efi = {
        canTouchEfiVariables = true;
      };
    };
  };
}
