{ config, pkgs, username, ... }:

{
  imports = [
    ../common/darwin.nix
    ../configs/cli
    ../configs/direnv
    ../configs/git
    ../configs/gpg
    ../configs/neovim

    ./cli
    ./git
  ];

  home = {
    stateVersion = "25.05";
  };

  programs = {
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
    git.enable = true;
    gpg.enable = true;
    kitty = {
      enable = true;
      package = pkgs.emptyDirectory;
    };
  };
}
