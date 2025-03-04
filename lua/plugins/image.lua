return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1001, -- Ensure this plugin runs first
    opts = {
      rocks = { 'magick' },
    },
  },
  {
    '3rd/image.nvim',
    dependencies = { 'vhyrro/luarocks.nvim' },
    ft = {"markdown", "vimwiki"},
    opts = {},
  },
}
