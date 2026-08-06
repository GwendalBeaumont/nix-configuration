{ inputs, config, lib, pkgs, ... }:
{
  imports = [
    ./monitors.nix
    ./programs.nix
    ./autostart.nix
    ./cursor.nix
    ./variables
    ./input.nix
    ./keybindings.nix
    # ./workspace-rules.nix
    ./window-rules.nix
    ./master-layout.nix
    ./dwindle-layout.nix
  ];
}