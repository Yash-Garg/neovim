{
  opts = {
    mouse = "";
    number = true;
    relativenumber = true;
    colorcolumn = "";
    wildmenu = true;
    showmatch = true;
    cursorline = true;
    showcmd = true;
    list = true;
    listchars = {
      tab = "  ";
      trail = "·";
      extends = "→";
      precedes = "←";
      nbsp = "␣";
    };
    inccommand = "nosplit";

    # Indentation
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    shiftround = true;
    expandtab = true;
    smarttab = true;
    smartindent = true;
    scrolloff = 4;
    sidescrolloff = 4;
    wrap = false;

    # Search
    hlsearch = true;
    ignorecase = true;
    incsearch = true;
    smartcase = true;

    # Split
    splitright = true;
    splitbelow = true;

    clipboard.register = "unnamedplus";

    # Menus
    pumheight = 16;
    completeopt = [
      "menu"
      "menuone"
      "noselect"
    ];

    # Folds
    foldmethod = "indent";
    foldnestmax = 3;
    foldenable = false;
  };
}
