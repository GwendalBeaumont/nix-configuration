{ inputs, config, lib, pkgs, ... }:

{
  programs.kitty = {
    enableGitIntegration = true;

    themeFile = "Japanesque";
    font = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font Mono";
      size = 12.0;
    };

    settings = {
      disable_ligatures = "always";
    };
  };
}
