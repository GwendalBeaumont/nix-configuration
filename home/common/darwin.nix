{ config, pkgs, username, ... }:

{
  imports = [
    ./default.nix
  ];

  home = {
    username = "${username}";

    packages = with pkgs; [
      # Misc
      cairo
      cocoapods
      pinentry_mac
    ];
  };
}
