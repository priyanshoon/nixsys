{ pkgs, ... }: {
    programs.nixvim = {
        plugins.treesitter = {
            enable = true;
            grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
                bash
                python
                html
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

        plugins.treesitter-context = {
            enable = true;
            settings = {
                line_numbers = true;
                multiline_threshold = 4;
                max_lines = 2;
            };
        };
    };
}
