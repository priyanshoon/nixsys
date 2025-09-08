{
    programs.nixvim = {
        plugins.harpoon = {
            enable = true;
        };

        keymaps = [
            {
                mode = "n";
                key = "<leader>a";
                action.__raw = ''
                function()
                    local harpoon = require("harpoon")
                    harpoon:list():add()
                end
                '';
            }
            {
                mode = "n";
                key = "C-e";
                action.__raw = ''
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end
                '';
            }
        ];
    };
}
