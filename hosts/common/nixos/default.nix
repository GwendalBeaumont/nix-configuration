{ config, pkgs, hostname, username, ... }:

{
  imports = [
    ./boot.nix
    ./internationalisation.nix
    ./networking.nix
    ./programs.nix
    ./sound.nix
    ./user.nix
  ];

  # Configure console keymap
  console.useXkbConfig = true;

  # Garbage collection
  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 1w";
    };
    settings.auto-optimise-store = true;
  };

  # Power management for laptops
  services.thermald.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.download-buffer-size = 524288000;
  environment.systemPackages = with pkgs; [
    git
    vim
    sbctl
  ];

  # Wayland
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  # Deactivate documentation
  documentation.nixos.enable = false;

  system.stateVersion = "25.05";
}
