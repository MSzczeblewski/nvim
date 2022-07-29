--Text Formatting
vim.bo.expandtab = true
vim.bo.shiftwidth = 4 
vim.bo.softtabstop = 4
vim.bo.smartindent = true
vim.w.wrap = false

--Search Options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.scrolloff = 16 

--Other
vim.g.hidden = true

--Terminal Colors
vim.cmd [[ colorscheme molokai ]]
vim.cmd [[ highlight Folded ctermbg=NONE ]]
