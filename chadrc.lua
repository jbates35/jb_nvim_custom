---@type ChadrcConfig
local M = {}

M.ui = { theme = 'jellybeans' }
M.plugins="custom.plugins"
M.mappings = require("custom.mappings")

vim.api.nvim_set_hl(0, 'LineNr', { fg = '#DDEEFF'} )
vim.api.nvim_set_hl(0, 'Comment', { fg = '#666666'} )
vim.api.nvim_set_hl(0, 'SpecialComment', { fg = '#666677'} )

return M
