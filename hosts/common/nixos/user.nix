{ config, pkgs, username, ... }:

{
  # User account
  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  # To go with `shell` option set above
  programs.zsh.enable = true;
}
