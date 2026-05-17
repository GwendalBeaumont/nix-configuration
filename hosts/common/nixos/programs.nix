{ config, pkgs, username, ... }:

{
  # GnuPG Agent
  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-gnome3;
  };

  # OpenSSH daemon.
  services.openssh.enable = true;
  services.pcscd.enable = true;

  # Linux Vendor Firmware Update
  services.fwupd.enable = true;
}
