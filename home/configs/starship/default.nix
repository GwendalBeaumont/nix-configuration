{ inputs, config, lib, pkgs, ... }:

{
  programs.starship = {
    settings = {
      add_newline = false;
    };
  };
}
