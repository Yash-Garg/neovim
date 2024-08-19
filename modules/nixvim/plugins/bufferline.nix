{ lib, ... }:
{
  plugins.bufferline = {
    enable = false;
    settings.options = {
      hover.enabled = true;
      indicator.style = null;
      mode = "buffers";
      separatorStyle = "slant";
      themable = true;
    };
  };
}
