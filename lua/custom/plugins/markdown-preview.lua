return {
  'iamcco/markdown-preview.nvim', -- Markdown Previewer (:MarkdownPreview)
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
}
