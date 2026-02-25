{ inputs, config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    defaultKeymap = "emacs";

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      bindkey "^[[1;5C" forward-word
      bindkey "^[[1;5D" backward-word
    '';
  };

  home.shellAliases = {
    mk = "(){ mkdir -p $1 && cd $1 }";
    phd = "cd $HOME/Documents/twindevops";

    ls = "ls --color";
    l = "ls";
    ll = "ls -l";
    lla = "ls -la";

    nfu = "nix flake update --flake ~/nix-configuration/";
    diradd = "echo 'use nix' > .envrc && direnv allow";
  };

  programs = {
    bat.enable = true;
    btop.enable = true;
    fastfetch.enable = true;
    fd.enable = true;
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    ripgrep.enable = true;
  };
}
