return {
  'EtiamNullam/deferred-clipboard.nvim', -- Defer clipboard operations, saves startup time
  config = function()
    require('deferred-clipboard').setup {
      fallback = 'unnamedplus',
    }
  end,
}
