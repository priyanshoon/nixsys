{
    programs.nixvim = {
        plugins.fugitive = {
            enable = true;

        };

        keymaps = [

            {
                mode = "n";
                key = "<leader>gi";
                action.__raw = ''vim.cmd.Git'';
                options = {
                    desc = "Git windows";
                };
            }

        ];
    };
}
