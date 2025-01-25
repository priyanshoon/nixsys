-- Lualine
require("lualine").setup({
    icons_enabled = true,
})

-- Colorscheme
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = true,
  transparent_mode = true,
})

vim.cmd("colorscheme gruvbox")

-- Comment
require("Comment").setup({})

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Git fugitive    
vim.keymap.set('n', '<leader>gi', vim.cmd.Git)
