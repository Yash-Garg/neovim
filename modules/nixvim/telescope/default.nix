{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
      fzf-native.enable = true;
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<space><leader>" = {
        action = "buffers";
        options = {
          desc = "+buffer";
        };
      };
      "<leader>p" = {
        action = "git_files";
        options = {
          desc = "Search git files";
        };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = {
          desc = "Commits";
        };
      };
      "<leader>gs" = {
        action = "git_status";
        options = {
          desc = "Status";
        };
      };
      "<C-f>" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Buffer";
        };
      };
      "<leader>wd" = {
        action = "diagnostics";
        options = {
          desc = "Workspace diagnostics";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File browser";
      };
    }
  ];
}
