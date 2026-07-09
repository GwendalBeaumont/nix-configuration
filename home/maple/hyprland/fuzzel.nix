{ inputs, config, lib, pkgs, ... }:

{
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "Sans:size=14";
        dpi-aware = "no";
        use-bold = true;
        placeholder = "Search...";
        terminal = "${pkgs.kitty}/bin/kitty";
        horizontal-pad = 20;
        inner-pad = 8;
      };

      colors = {
        background = "1d1d1dff";
        text = "f7f6ecff";
        match = "9141acff";
        selection = "165776ff";
        selection-text = "1d1d1dff";
        selection-match = "c061cbff";
        border = "c061cbee";
      };

      border = {
        width = 2;
      };
    };
  };
}
