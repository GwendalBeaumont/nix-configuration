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
    "whatsapp"

    # Utils
    "darktable"
    "drawio"
    "firefox"
    "kitty"
    "libreoffice"
    "logi-options+"
    "openvpn-connect"
    "orbstack"
    "qobuz"
    "vlc"
    "zotero"
  ];
}
