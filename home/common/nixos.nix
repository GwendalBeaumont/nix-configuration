{ config, pkgs, username, ... }:

{
  imports = [
    ./default.nix
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";

    packages = with pkgs; [
      # Misc
      noto-fonts-cjk-sans

      # Utils
      libgcc
      libsecret
      stow
      wl-clipboard
    ];
  };
}
