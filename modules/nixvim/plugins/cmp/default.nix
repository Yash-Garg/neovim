_: {
  autoCmd = [
    {
      # Show diagnostic window when cursor is over warning/error
      event = [
        "CursorHold"
        "CursorHoldI"
      ];
      group = "float_diagnostic_cursor";
      callback.__raw = ''
        function()
        	vim.diagnostic.open_float(
        		nil,
        		{ focus = false, scope = "cursor" }
        	)
        end
      '';
    }
  ];

  autoGroups = {
    float_diagnostic_cursor = { };
  };

  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        snippet = {
          expand = ''
            function(args)
            	luasnip.lsp_expand(args.body)
            end
          '';
        };

        completion = {
          completeopt = "menu,menuone,noinsert";
        };

        mapping = {
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm {
								behavior = cmp.ConfirmBehavior.Replace,
								select = true,
							}";
          "<Tab>" = "cmp.mapping(function(fallback)
								if cmp.visible() then
									cmp.select_next_item()
								elseif luasnip.expand_or_locally_jumpable() then
									luasnip.expand_or_jump()
								else
									fallback()
								end
							end, { 'i', 's' })";
        };

        window.documentation.border = [
          "╭"
          "─"
          "╮"
          "│"
          "╯"
          "─"
          "╰"
          "│"
        ];

        sources = [
          { name = "buffer"; }
          { name = "luasnip"; }
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "nvim_lua"; }
          { name = "path"; }
        ];
      };
    };

    cmp-buffer.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    friendly-snippets.enable = true;
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
    };
    lspkind = {
      enable = true;
      cmp = {
        enable = true;
        ellipsisChar = "...";
        maxWidth = 30;
        menu = {
          buffer = "[Buffer]";
          nvim_lsp = "[LSP]";
          luasnip = "[LuaSnip]";
          nvim_lua = "[Lua]";
          path = "[Path]";
        };
      };
    };
    lsp-status.enable = true;
  };

  extraConfigLuaPre = ''
    local luasnip = require("luasnip")
    luasnip.config.setup({})
  '';
}
