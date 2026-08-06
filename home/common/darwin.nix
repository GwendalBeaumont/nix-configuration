{ config, pkgs, username, ... }:

{
  # imports = [
  #   ./default.nix
  # ];

  home = {
    username = "${username}";
  };
}
