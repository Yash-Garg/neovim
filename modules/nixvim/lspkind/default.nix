{
  plugins.lspkind = {
    enable = true;
    settings.cmp = {
      enable = true;
      ellipsisChar = "...";
      maxWidth = 30;
      menu = {
        buffer = "[Buffer]";
        copilot = "[Copilot]";
        nvim_lsp = "[LSP]";
        luasnip = "[LuaSnip]";
        nvim_lua = "[Lua]";
        path = "[Path]";
      };
    };
    symbolMap = {
      Copilot = "";
    };
  };
}
