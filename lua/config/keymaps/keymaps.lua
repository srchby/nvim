-- telescope

vim.keymap.set('n', '<leader>fh', function()
  require('telescope.builtin').find_files { hidden = true }
end, { desc = '[H]idden [F]iles' })

-- functions

vim.keymap.set('n', '<space>te', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 10)
end, { desc = 'New Horizontal [T]erm' })
