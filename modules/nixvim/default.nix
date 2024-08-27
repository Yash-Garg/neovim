{ pkgs, ... }:
{
  imports = [ ./keymaps.nix ];

  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = hardtime-nvim;
      config = ''
        lua require("hardtime").setup()
      '';
    }
  ];

  plugins = {
    nix.enable = true;
    nix-develop.enable = true;
    nvim-colorizer.enable = true;
  };

  viAlias = true;
  vimAlias = true;
}
