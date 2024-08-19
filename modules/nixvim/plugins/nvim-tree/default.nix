_: {
  plugins.nvim-tree = {
    enable = true;
    autoClose = true;
    autoReloadOnWrite = true;
    disableNetrw = true;
    git = {
      enable = true;
      ignore = false;
    };
    hijackCursor = true;
    modified.enable = true;
    renderer = {
      addTrailing = true;
      groupEmpty = true;
      highlightGit = true;
      indentWidth = 2;
      icons.glyphs = {
        git = {
          staged = "";
          unstaged = "δ";
          untracked = "α";
          deleted = "D";
          renamed = "R";
        };
      };
    };
    sortBy = "case_sensitive";
    updateFocusedFile = {
      enable = true;
      updateRoot = true;
    };
    view = {
      width = 30;
      side = "right";
      signcolumn = "yes";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>t";
      action = ":NvimTreeToggle<CR>";
      options = {
        desc = "Toggle file tree";
      };
    }
  ];
}
