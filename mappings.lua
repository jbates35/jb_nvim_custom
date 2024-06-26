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
-- test2

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
    ["<leader>ds"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate debugging session",
    },
    ["<leader>dj"] = {
      "<cmd> DapStepOver <CR>",
      "Step over",
    },
    ["<leader>dl"] = {
      "<cmd> DapStepInto <CR>",
      "Step into",
    },
    ["<leader>dh"] = {
      "<cmd> DapStepOut <CR>",
      "Step out",
    }
  }
}

-- test 
--
vim.keymap.set('n', '<C-J>', '<C-d>zz', { noremap=true, silent=true })
vim.keymap.set('n', '<C-K>', '<C-u>zz', { noremap=true, silent=true })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap=true, silent=true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap=true, silent=true })
vim.keymap.set('n', 'j', 'jzz', { noremap=true, silent=true })
vim.keymap.set('n', 'k', 'kzz', { noremap=true, silent=true })
-- vim.keymap.set('n', '<C-0>', 'ciw"<C-r>-"', { noremap=true, silent=true })
vim.keymap.set('n', '<leader>P', "\"_dP", { noremap=true, silent=true })

M.gitsigns = {
  plugin = true,

  n = {
    -- Navigation through hunks
    ["<leader>gs"] = {
      function()
        package.loaded.gitsigns.stage_hunk()
      end,
      "Stage hunk",
    },
  }
}
return M
