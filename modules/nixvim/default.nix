{
  config,
  lib,
  pkgs,
  ...
}:
{
  colorschemes.rose-pine = {
    enable = true;
    settings = {
      dark_variant = "moon";
      styles = {
        bold = true;
        italic = false;
        transparency = true;
      };
    };
  };

  viAlias = true;
  vimAlias = true;
}
