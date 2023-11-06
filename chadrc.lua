---@type ChadrcConfig
local M = {}

M.ui = { theme = 'yoru' }
M.plugins="custom.plugins"
M.mappings = require("custom.mappings")

vim.api.nvim_set_hl(0, 'LineNr', { fg = '#DDEEFF'} )

return M
