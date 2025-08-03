vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {
    '*.js',
    '*.ts',
    '*.jsx',
    '*.tsx',
    '*.json',
    '*.jsonc',
    '*.scss',
    '*.css',
    '*.html',
    '*.yaml',
    '*.md',
  },
  callback = function()
    vim.lsp.buf.format {
      async = false,
      filter = function(client)
        return client.name == 'null-ls'
      end,
    }
  end,
})
