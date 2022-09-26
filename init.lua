require "user._options"
require "user._keymaps"
require "user._plugins"
require "user._cmp"
require "user._colorscheme"
require "user._telescope"
require "user._bufferline"
--require "user.lsp"

-- Treesitter folding
--vim.wo.foldmethod = "expr"
--vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

--Removes highlighting of folded lines
vim.cmd [[ highlight Folded ctermbg=NONE ]]
