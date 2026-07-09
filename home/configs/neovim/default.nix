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
      # LSP
      lua-language-server

      # Tools
      imagemagick
      markdownlint-cli2
      go
    ];

    plugins = with pkgs.vimPlugins; [
      (nvim-treesitter.withPlugins (p: with p; [ latex regex ]))
    ];

    initLua = "require 'globals'\nrequire 'options'\nrequire 'autocmd'\nrequire 'bindings'\nrequire 'groups'";
  };

  home.shellAliases = {
    e = "nvim";
  };

  home.packages = with pkgs; [
    ghostscript
    imagemagick
    lua-language-server
    markdownlint-cli2
  ];
}
