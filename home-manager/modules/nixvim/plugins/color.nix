{
    programs.nixvim = {
        # colorschemes.solarized-osaka = {
        #     enable = true;
        # };

        colorschemes.gruvbox = {
            enable = true;
            settings = {
                terminal_colors = true;
                dim_inactive = true;
                transparent_mode = true;
            };
        };

        # colorschemes.gruvbox-material = {
        #     enable = true;
        #     settings = {
        #         transparent_background = 2;
        #     };
        # };

        plugins.lualine.enable = false;
    };
}
