{ pkgs, ... }: {
    programs.nixvim = {
        plugins.treesitter = {
            enable = true;
            grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
                bash
                python
                c
                cpp
                go
                javascript
                typescript
                json
                make
                markdown
                nix
                regex
                vim
                astro
                vue
                php
            ];

            settings = {
                highlight.enable = true;
            };
        };
    };
}
