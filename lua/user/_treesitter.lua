local status_ok, configs = pcall(jrequire("nvim-treesitter.configs")
if not status_ok then
    return
end

local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = { "c", "lua", "cpp" },
  sync_install = false, 
  auto_install = true,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,

  },

  indent = { enable = true, disable = { "yaml" } },
}

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
