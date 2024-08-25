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
      docker-compose-language-service.enable = true;
      eslint.enable = true;
      gleam.enable = true;
      golangci-lint-ls.enable = true;
      gopls.enable = true;
      graphql.enable = true;
      helm-ls.enable = true;
      html.enable = true;
      jsonls.enable = true;
      kotlin-language-server.enable = true;
      lua-ls.enable = true;
      marksman.enable = true;
      nixd.enable = true;
      prismals.enable = true;
      ruff.enable = true;
      rust-analyzer = {
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
      tsserver = {
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
      volar.enable = true;
      yamlls.enable = true;
      zls.enable = true;
    };
  };
}
