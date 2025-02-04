{
  plugins.copilot-lua = {
    enable = true;

    settings = {
      panel = {
        enabled = false;
        autoRefresh = true;
        layout = {
          position = "right";
        };
      };

      suggestion = {
        enabled = false;
        autoTrigger = true;
        debounce = 75;
      };

      filetypes = {
        yaml = false;
        markdown = false;
        help = false;
        gitcommit = false;
        gitrebase = false;
        hgcommit = false;
        svn = false;
        cvs = false;
        "." = false;
        "*" = true;
      };
    };
  };
}
