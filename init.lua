require('keybinds')
require('packages')
require('config')

local configs = require 'nvim-treesitter.configs'
configs.setup {
    ensure_installed = { "c", "cpp" }, -- Only use parsers that are maintained
    highlight = { -- enable highlighting
        enable = true,
    },
    indent = {
        enable = true, -- default is disabled anyways
    }
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

--This cmd removes all warnings everywhere and possible more
--vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    underline = false,
    signs = false
}
)
