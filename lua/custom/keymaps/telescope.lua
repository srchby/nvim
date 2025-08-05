local builtin = require 'telescope.builtin'

-- telescope

vim.keymap.set('n', '<leader>sfh', function()
  builtin.find_files { hidden = true }
end, { desc = '[S]earch [H]idden [F]iles' })

-- custom functions

vim.keymap.set('n', '<space>t', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 10)
end, { desc = 'New Horizontal [T]erm' })
