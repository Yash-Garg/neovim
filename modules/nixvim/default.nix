{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [ ./keymaps.nix ];

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

  plugins = {
    comment.enable = true;
    nix.enable = true;
    nix-develop.enable = true;
    nvim-autopairs.enable = true;
    nvim-colorizer.enable = true;
    todo-comments.enable = true;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };

  viAlias = true;
  vimAlias = true;
}
