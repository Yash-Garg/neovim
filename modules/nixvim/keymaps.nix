{ config, lib, ... }:
with lib;
{
  globals = {
    mapleader = ",";
    maplocalleader = ",";
  };

  keymaps =
    let
      normal =
        mapAttrsToList
          (key: action: {
            mode = "n";
            inherit action key;
          })
          {
            "<Space>" = "<NOP>";

            # Esc to clear search results
            "<esc>" = ":noh<CR>";

            # fix Y behaviour
            Y = "y$";

            # Jump to start/end of a line (first/last character)
            "<leader>h" = "^";
            "<leader>l" = "$";
          };
      visual =
        mapAttrsToList
          (key: action: {
            mode = "v";
            inherit action key;
          })
          {
            "<TAB>" = ">gv";
            "<S-TAB>" = "<gv";
          };
    in
    nixvim.keymaps.mkKeymaps { options.silent = true; } (normal ++ visual);
}
