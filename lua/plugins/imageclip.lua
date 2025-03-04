return {
  'HakonHarnes/img-clip.nvim',
  ft = {"markdown"},
  opts = {
    dir_path = '~/Documents/vimwiki/assets/imgs',
    -- add options here
    -- or leave it empty to use the default settings
  },
  keys = {
    -- suggested keymap
    { '<leader>p', '<cmd>PasteImage<cr>', desc = 'Paste image from system clipboard' },
  },
}
