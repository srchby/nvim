return {
  {
    'nvimtools/none-ls.nvim',
    opts = function(_, opts)
      local nls = require 'null-ls'
      opts.sources = opts.sources or {}
      table.insert(
        opts.sources,
        nls.builtins.formatting.prettier.with {
          filetypes = {
            'javascript',
            'typescript',
            'javascriptreact',
            'typescriptreact',
            'json',
            'jsonc',
            'scss',
            'html',
            'md',
            'yaml',
            'css',
          },
        }
      )
    end,
  },
}
