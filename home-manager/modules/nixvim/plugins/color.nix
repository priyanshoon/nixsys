{
    programs.nixvim = {
        # colorschemes.solarized-osaka = {
        #     enable = true;
        # };

        colorschemes.kanagawa-paper = {
            enable = true;
            settings = {
                transparent = true;
            };
        };

        # colorschemes.gruvbox = {
        #     enable = true;
        #     settings = {
        #         terminal_colors = true;
        #         dim_inactive = true;
        #         transparent_mode = true;
        #         bold = true;
        #         italic = {
        #             strings = true;
        #             emphasis = true;
        #             comments = true;
        #             operators = false;
        #             folds = true;
        #         };
        #     };
        # };

        # colorschemes.gruvbox-material = {
        #     enable = true;
        #     settings = {
        #         transparent_background = 2;
        #     };
        # };

        # plugins.lualine.enable = true;
    };
}
