{ config, lib, pkgs, ... }:

{
  nixpkgs.overlays = [
    (_final: prev: {
      # https://github.com/NixOS/nixpkgs/issues/475202
      wireplumber = prev.wireplumber.overrideAttrs (_old: rec {
        version = "0.5.12";
        src = pkgs.fetchFromGitLab {
          domain = "gitlab.freedesktop.org";
          owner = "pipewire";
          repo = "wireplumber";
          rev = version;
          hash = "sha256-3LdERBiPXal+OF7tgguJcVXrqycBSmD3psFzn4z5krY=";
        };
      });
    })
  ];
}
