return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    opts = function(_, opts)
      local nls = require 'null-ls'
      opts.sources = opts.sources or {}
      table.insert(
        opts.sources,
        nls.builtins.formatting.prettier.with {
          filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'json', 'scss', 'html', 'md', 'yaml', 'css' },
        }
      )
    end,
  },
  {
    'MunifTanjim/prettier.nvim',
    ft = { 'javascript', 'typescript', 'json', 'markdown', 'html', 'css' },
    config = function()
      require('prettier').setup {}
    end,
  },
}
