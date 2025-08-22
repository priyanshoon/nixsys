{
    programs.nixvim = {
        plugins.telescope = {
            enable = true;
            keymaps = {
                "<leader>pf" = {
                    action = "find_files";
                    options = {
                        desc = "telescope files";
                    };
                };
                "<leader>ps" = {
                    action = "live_grep";
                    options = {
                        desc = "search by grep";
                    };
                };
                "<C-p>" = {
                    action = "git_files";
                    options = {
                        desc = "telescope git files";
                    };
                };
            };
        };
    };
}
