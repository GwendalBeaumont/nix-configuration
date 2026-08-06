{ config, pkgs, username, ... }:

{
  imports = [
    ../common/darwin.nix
    ../configs

    ./cli
    ./git
  ];

  home = {
    stateVersion = "25.05";
  };

  programs = {
    direnv.enable = true;
    nix-direnv.enable = true;
    fastfetch.enable = true;
    git.enable = true;
    gpg.enable = true;
    kitty = {
      enable = true;
      package = pkgs.emptyDirectory;
    };
    lazygit.enable = true;
    lf.enable = true;
    neovim.enable = true;
    starship.enable = true;
  };
}
