{ config, lib, pkgs, ... }:

{
  # Add QMK/VIA support
  environment.systemPackages = with pkgs; [ qmk ];
  hardware.keyboard.qmk.enable = true;

  # Add udev rule for MonsGeek M1 V5 ISO
  services.udev.extraRules = ''KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="342d", ATTRS{idProduct}=="e4c2", MODE="0666", GROUP="users", TAG+="uaccess", TAG+="udev-acl"'';
}
