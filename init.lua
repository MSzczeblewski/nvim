require "user._options"
require "user._keymaps"
require "user._plugins"
require "user._cmp"
require "user._colorscheme"
--require "user.lsp"
require "user._telescope"

--vim.wo.foldmethod = "expr"
--vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
--Removes highlighting of folded lines
vim.cmd [[ highlight Folded ctermbg=NONE ]]
