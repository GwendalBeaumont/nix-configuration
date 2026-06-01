{ config, lib, pkgs, ... }:

{
  # Add QMK/VIA
  environment.systemPackages = with pkgs; [ via qmk qmk-udev-rules ];
  hardware.keyboard.qmk.enable = true;
  services.udev.packages = [ pkgs.qmk-udev-rules pkgs.via ];

  # Add udev rule for MonsGeek M1 V5 ISO
  services.udev.extraRules = ''KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="342d", ATTRS{idProduct}=="e4c2", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"'';
}
