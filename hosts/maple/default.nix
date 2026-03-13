{ config, pkgs, hostname, username, modules, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../common/nixos.nix

    "${modules}/containers"
    "${modules}/gnome"
    "${modules}/printing"
  ];

  boot.initrd.luks.devices."luks-8f74c7fd-732f-43c7-ba42-380c3188d00c".device = "/dev/disk/by-uuid/8f74c7fd-732f-43c7-ba42-380c3188d00c";

  # Networking
  networking = {
    networkmanager = {
      plugins = with pkgs; [
        networkmanager-openvpn
        networkmanager-openconnect
      ];

      ensureProfiles = {
        profiles.tuWien = {
          connection = {
            id = "TU Wien";
            type = "vpn";
          };
          vpn = rec {
            gateway = "vpn.tuwien.ac.at";
            remote = gateway;

            service-type = "org.freedesktop.NetworkManager.openconnect";
            protocol = "anyconnect";
            useragent = "AnyConnect";
            authtype = "password";
          };
        };
      };
    };
  };
}
