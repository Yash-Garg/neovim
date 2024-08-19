_: {
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      astro.enable = true;
      biome.enable = true;
      ccls.enable = true;
      cmake.enable = true;
      cssls.enable = false;
      dartls.enable = true;
      docker-compose-language-service.enable = true;
      gleam.enable = true;
      golangci-lint-ls.enable = true;
      gopls.enable = true;
      graphql.enable = true;
      helm-ls.enable = true;
      html.enable = false;
      jsonls.enable = false;
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
      };
      sqls.enable = true;
      svelte.enable = true;
      tailwindcss.enable = true;
      tsserver.enable = true;
      volar.enable = true;
      yamlls.enable = true;
      zls.enable = true;
    };
  };
}
