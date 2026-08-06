{ inputs, config, lib, pkgs, ... }:

{
  programs.git = {
    settings = {
      user.name = "Gwendal Beaumont";

      init = {
        defaultBranch = "main";
      };
    };

    signing = {
      format = "openpgp";
      signByDefault = true;
    };
  };
}
