{
    programs.nixvim.globals = {
        mapleader = " ";
        maplocalleader = " ";
        have_nerd_font = true;
    };

	programs.nixvim.opts = {
		number = true;
		relativenumber = true;
		termguicolors = true;
		completeopt = [
			"menuone"
			"noselect"
			"noinsert"
		];
		mouse = "a";
		guicursor = "";
		wrap = false;
		tabstop = 4;
		shiftwidth = 4;
		softtabstop = 4;
		expandtab = true;
		smartindent = true;
		showmode = false;
		breakindent = true;
		undofile = true;
        ignorecase = true;
        smartcase = true;
        signcolumn = "yes";
        colorcolumn = "80";
        updatetime = 250;
        timeoutlen = 300;
        splitright = true;
        splitbelow = true;
        inccommand = "split";
        cursorline = false;
        scrolloff = 10;
        winborder = "rounded";
        hlsearch = false;
	};
}
