{ lib, pkgs, ... }:
{
  imports = [ ./keymaps.nix ];

  plugins = {
    nix.enable = true;
    nix-develop.enable = true;
    nvim-colorizer.enable = true;
  };

  viAlias = true;
  vimAlias = true;
}
