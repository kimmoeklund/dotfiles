require("toggleterm").setup({
  open_mapping=[[<M-0>]]
})

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "~/go/bin/lazygit", hidden = true, direction= "float" })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<A-9>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
