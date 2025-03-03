{
  plugins.lualine = {
    enable = true;

    settings = {
      inactive_sections = {
        lualine_a = [ "filename" ];
        lualine_b = [ ];
        lualine_c = [ ];
        lualine_x = [ ];
        lualine_y = [ ];
        lualine_z = [ "location" ];
      };
      options = {
        component_separators = {
          left = "│";
          right = "│";
        };
        globalstatus = true;
        section_separators = {
          left = "";
          right = "";
        };
      };
      sections = {
        lualine_a = [
          {
            name = "mode";
            padding = {
              left = 1;
              right = 2;
            };
            separator.left = "";
          }
        ];
        lualine_b = [
          {
            name = "filename";
            padding = {
              left = 2;
              right = 1;
            };
          }
          "branch"
        ];
        lualine_c = [ "%=" ];
        lualine_x = [ "" ];
        lualine_y = [
          "filetype"
          "progress"
        ];
        lualine_z = [
          {
            name = "location";
            separator.right = "";
          }
        ];
      };
      tabline = { };
      winbar = { };
    };
  };

  extraConfigLuaPost = ''
    local colors = {
      blue   = '#66d9ef',
      cyan   = '#a1efe4',
      black  = '#272822',
      green  = '#a6e22e',
      white  = '#f8f8f2',
      red    = '#f92672',
      violet = '#ae81ff',
      grey   = '#3e3d32',
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
      },

      command = { a = { fg = colors.black, bg = colors.green } },
      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.cyan } },
      replace = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    require('lualine').setup {
      options = { theme = bubbles_theme },
    }
  '';
}
