{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        astro
        bash
        c
        cmake
        comment
        cpp
        css
        csv
        dart
        diff
        dockerfile
        editorconfig
        gitattributes
        gitcommit
        gitignore
        git_rebase
        go
        gomod
        gosum
        graphql
        groovy
        haskell
        helm
        html
        javascript
        jq
        json
        just
        kotlin
        make
        markdown
        markdown_inline
        meson
        ninja
        nix
        prisma
        python
        rust
        scss
        sql
        ssh_config
        svelte
        swift
        tmux
        toml
        tsx
        typescript
        vim
        vimdoc
        vue
        xml
        yaml
        zig
      ];
      nixvimInjections = true;
      settings.indent.enable = true;
      settings.highlight.enable = true;
    };
  };
}
