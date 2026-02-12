{
    programs.nixvim = {
        # colorschemes.solarized-osaka = {
        #     enable = true;
        #     settings = {
        #         styles = {
        #             comments = {
        #                 italic = true;
        #             };
        #             floats = "transparent";
        #             keywords = {
        #                 italic = true;
        #             };
        #         };
        #         transparent = true;
        #     };
        # };

        colorschemes.vague = {
            enable = true;
            settings = {
                transparent = true;
            };
        };

        # colorschemes.kanagawa = {
        #     enable = true;
        #     settings = {
        #         theme = "dragon";
        #         commentStyle = {
        #             italic = true;
        #         };
        #         keywordStyle = {
        #             italic = true;
        #         };
        #         functionStyle = {
        #             italic = true;
        #         };
        #         transparent = true;
        #         background = {
        #             dark = "dragon";
        #             light = "lotus";
        #         };
        #         undercurl = false;
        #     };
        # };
        #
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
