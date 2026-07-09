{ config, pkgs, hostname, username, modules, ... }:

{
  imports = [
    ./hardware-configuration.nix

    # "${modules}/containers"
    "${modules}/gnome"
    "${modules}/hyprland"
    "${modules}/keyboard"
    "${modules}/printing"
  ];

  boot.initrd.luks.devices."luks-8f74c7fd-732f-43c7-ba42-380c3188d00c".device = "/dev/disk/by-uuid/8f74c7fd-732f-43c7-ba42-380c3188d00c";

  # Networking
  networking = {
    networkmanager = {
      plugins = with pkgs; [
        networkmanager-openvpn
      ];
    };
  };
}
