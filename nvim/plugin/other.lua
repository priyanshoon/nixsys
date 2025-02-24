-- Lualine
require("lualine").setup({
    icons_enabled = false,
})

-- fidget
require("fidget").setup({})

-- Colorscheme
require("kanagawa").setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    transparent = true,         -- do not set background color
    dimInactive = true,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    theme = "dragon",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "dragon",           -- try "dragon" !
        light = "lotus"
    },
})

vim.cmd("colorscheme kanagawa-dragon")

-- Comment
require("Comment").setup({})

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Git fugitive    
vim.keymap.set('n', '<leader>gi', vim.cmd.Git)
