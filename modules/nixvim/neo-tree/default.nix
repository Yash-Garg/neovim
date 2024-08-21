{
  plugins.neo-tree = {
    enable = true;
    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;
    enableRefreshOnWrite = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";
    buffers = {
      bindToCwd = true;
      followCurrentFile = {
        enabled = true;
      };
    };
    window = {
      width = 30;
      height = 15;
      autoExpandWidth = true;
      mappings = {
        "<space>" = "none";
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>Neotree toggle right reveal_force_cwd focus<CR>";
      options = {
        silent = true;
        desc = "Explorer NeoTree (cwd)";
      };
    }
  ];
}
