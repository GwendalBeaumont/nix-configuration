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
        background = "282c34ff";
        text = "abb2bfff";
        match = "9141acff";
        selection = "4b5263ff";
        selection-text = "abb2bfff";
        selection-match = "c061cbff";
        border = "c061cbee";
      };

      border = {
        width = 2;
      };
    };
  };
}
