local M = {}

M.copilot = {
  i = {
    ["<C-o>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      { 
        replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true
      }
    }
  }
}

M.dap = {
  plugin=true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  }
}

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap=true, silent=true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap=true, silent=true })
return M
