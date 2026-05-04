{ inputs, config, lib, pkgs, ... }:

{
  homebrew.casks = [
    # Dev
    "android-studio"
    "eclipse-ide"
    "pgadmin4"
    "visual-studio-code"

    # Communications
    "element"
    "signal"
    "thunderbird"

    # Utils
    "drawio"
    "firefox"
    "kitty"
    "logi-options+"
    "onlyoffice"
    "orbstack"
    "qobuz"
    "vlc"
    "zotero"
  ];
}
