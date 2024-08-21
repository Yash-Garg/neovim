{
  plugins.bufferline = {
    enable = false;
    settings.options = {
      always_show_bufferline = true;
      color_icons = true;
      diagnostics = "nvim_lsp";
      hover.enabled = false;
      maxNameLength = 32;
      maxPrefixLength = 24;
      mode = "buffers";
      persist_buffer_sort = true;
      separatorStyle = "padded_slope";
      show_tab_indicators = true;
      tab_size = 18;
      themable = true;
    };
  };
}
