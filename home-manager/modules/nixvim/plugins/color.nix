{
    programs.nixvim = {
        colorschemes.gruvbox = {
            enable = true;
            settings = {
                terminal_colors = true;
                dim_inactive = true;
                transparent_mode = true;
            };
        };

        # plugins.lualine.enable = true;
    };
}
