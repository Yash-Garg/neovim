{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      astro.enable = true;
      biome.enable = true;
      ccls.enable = true;
      cmake.enable = true;
      cssls.enable = true;
      dartls.enable = true;
      docker_compose_language_service.enable = true;
      eslint.enable = true;
      gleam.enable = true;
      golangci_lint_ls.enable = true;
      gopls.enable = true;
      helm_ls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      kotlin_language_server.enable = true;
      lua_ls.enable = true;
      marksman.enable = true;
      nixd.enable = true;
      ruff.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
        settings = {
          diagnostics = {
            enable = true;
            styleLints.enable = true;
          };

          files = {
            excludeDirs = [ ".direnv/" ];
          };

          procMacro.enable = true;
        };
      };
      sqls.enable = true;
      svelte.enable = true;
      tailwindcss.enable = true;
      ts_ls = {
        enable = true;
        filetypes = [
          "javascript"
          "javascriptreact"
          "typescript"
          "typescriptreact"
        ];
        extraOptions = {
          settings = {
            javascript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true;
                includeInlayFunctionLikeReturnTypeHints = true;
                includeInlayFunctionParameterTypeHints = true;
                includeInlayParameterNameHints = "all";
                includeInlayParameterNameHintsWhenArgumentMatchesName = true;
                includeInlayPropertyDeclarationTypeHints = true;
                includeInlayVariableTypeHints = true;
              };
            };
            typescript = {
              inlayHints = {
                includeInlayEnumMemberValueHints = true;
                includeInlayFunctionLikeReturnTypeHints = true;
                includeInlayFunctionParameterTypeHints = true;
                includeInlayParameterNameHints = "all";
                includeInlayParameterNameHintsWhenArgumentMatchesName = true;
                includeInlayPropertyDeclarationTypeHints = true;
                includeInlayVariableTypeHints = true;
              };
            };
          };
        };
      };
      vue_ls.enable = true;
      yamlls.enable = true;
      zls.enable = true;
    };
  };
}
