{
	programs.nixvim.keymaps = [	
        {
            mode = "n";
            key = "<leader>yv";
            action.__raw = ''vim.cmd.Ex'';
            options = {
                desc = "File navigator";
            };
        }

        {
            mode = "n";
            key = "<C-f>";
            action = ''<cmd>silent !tmux neww tmux-sessionizer<CR>'';
            options = {
                desc = "tmux sessionizer";
            };
        }

        {
            mode = "n";
            key = "<Esc>";
            action = ''<cmd>nohlsearch<CR>'';
            options = {
                desc = "this is will trigger nohlsearch";
            };
        }

        {
            mode = "v";
            key = "J";
            action = '':m '>+1<CR>gv=gv'';
            options = {
                desc = "move line to up";
            };
        }
        
        {
            mode = "v";
            key = "K";
            action = ":m '<-2<CR>gv=gv";
            options = {
                desc = "move line down";
            };
        }

        {
            mode = "i";
            key = "<C-c>";
            action = "<Esc>";
            options = {
                desc = "using ctrl-c instead of esc in insert mode";
            };
        }
        
        {
            mode = "n";
            key = "<leader>bk";
            action.__raw = "vim.cmd.bd";
            options = {
                desc = "closes the current buffer";
            };
        }

        {
            mode = "n";
            key = "<C-d>";
            action = "<C-d>zz";
            options = {
                desc = "whatever";
            };
        }

        {
            mode = "n";
            key = "<C-u>";
            action = "<C-u>zz";
            options = {
                desc = "whatever";
            };
        }

        {
            mode = "n";
            key = "<leader>x";
            action = ":!chmod +x %<CR>";
            options = {
                desc = "make file executable";
            };
        }

        {
            mode = ["n" "v"];
            key = "<leader>y";
            action = ''"+y'';
            options = {
                desc = "this is copy pasta";
            };
        }

        {
            mode = "n";
            key = "<leader>Y";
            action = ''"+Y'';
            options = {
                desc = "idk";
            };
        }

        {
            mode = "n";
            key = "<leader>r";
            action = ''<cmd>:term printf "priyanshoon your output is \\n****************************************************************************************************************************************\\n" && g++ -std=c++1z -o test %:r.cpp && ./test && printf "**********************************************************************************************************************************\\n" <CR>'';
            options = {
                desc = "this is cp runner boi";
                silent = true;
                noremap = true;
            };
        }
	];
}
