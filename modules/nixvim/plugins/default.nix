{ lib, ... }:
{
  plugins = {
    comment.enable = true;
    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = true;
      };
    };
    nix.enable = true;
    nix-develop.enable = true;
    nvim-autopairs.enable = true;
    nvim-colorizer.enable = true;
    todo-comments.enable = true;
    tmux-navigator.enable = true;
    which-key.enable = true;
  };
}
