{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./keymaps.nix
    ./options.nix
  ];

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

  # programs.tmux.plugins = [ pkgs.tmuxPlugins.vim-tmux-navigator ];
}
