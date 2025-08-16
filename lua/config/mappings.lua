-- general

vim.keymap.set({ 'n' }, '<leader>w', '<ESC>:w<CR>', { desc = '[W]rite file' })
vim.keymap.set({ 'n' }, '<leader>c', '<ESC>:q<CR>', { desc = '[Q]uit file' })

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
end, { desc = 'New Horizontal [Te]rm' })
