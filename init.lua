require('bootstrap')
require('keybinds')
require('packages')
require('config')


--Tree-Sitter
--Configure the languages needed
local configs = require 'nvim-treesitter.configs'
configs.setup {
    ensure_installed = { "c", "cpp", "lua"}, -- Only use parsers that are maintained
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}
--How to fold
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

--LSP
--Basic Setup
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

--This cmd removes all warnings everywhere and possible more
--vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

--This removes error underlining, highlighting and gutters
--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--    vim.lsp.diagnostic.on_publish_diagnostics, {
--    virtual_text = false,
--    underline = false,
--    signs = false
--}
--)
