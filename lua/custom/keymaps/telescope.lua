local builtin = require 'telescope.builtin'

vim.keymap.set('n', '<leader>sfh', function()
  builtin.find_files { hidden = true }
end, { desc = '[S]earch [H]idden [F]iles' })
