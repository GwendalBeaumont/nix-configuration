{ inputs, config, lib, pkgs, ... }:

{
  programs.neovim = {
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    withNodeJs = true;
    withPython3 = true;
    withRuby = true;

    extraPackages = with pkgs; [
      markdownlint-cli2
      go
    ];

    initLua = "require 'globals'\nrequire 'options'\nrequire 'autocmd'\nrequire 'bindings'\nrequire 'groups'";
  };

  home.shellAliases = {
    e = "nvim";
  };
}
