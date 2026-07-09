{ pkgs, ... }:

{
  imports = [
    ./casks.nix
    ./masApps.nix
  ];

  # Homebrew
  homebrew = {
    enable = true;

    greedyCasks = true;

    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
      extraFlags = [
        "--verbose"
        "--force-cleanup"
      ];
      upgrade = true;
    };
  };
}
