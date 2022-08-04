--Text Formatting
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.w.wrap = false
vim.w.number = true
--Auto formats text when saving based on LSP installed
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

--Search Options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.scrolloff = 16 

--Other
vim.g.hidden = true
vim.g.swapfile = false

--Terminal Colors
vim.cmd [[ colorscheme molokai ]]
--Removes highlighting of folded lines
vim.cmd [[ highlight Folded ctermbg=NONE ]]
