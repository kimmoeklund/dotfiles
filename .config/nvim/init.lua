-- init.lua
if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
   vim.g.loaded_netrw = 1
   vim.g.loaded_netrwPlugin = 1
   require('packer-bootstrap')
   require('metals-config')
   require('tree-config')
   require('personal-config')
   require('telescope-config')
   require('toggleterm-config')
   require('lsp-config')
--   require('copilot-config')
end
