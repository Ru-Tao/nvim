local o = vim.o
o.cursorlineopt='both'
o.relativenumber=true
o.wrap=true
o.number=true
o.clipboard = "unnamedplus"
o.undofile=true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)



require("lazy").setup({
	defaults = {
		lazy = true,
	},

  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

require('config.treesitter')

require('mini.ai').setup()
require('mini.surround').setup()
require('mini.pairs').setup()
require('mini.icons').setup()
require('mini.files').setup()

vim.treesitter.language.register("markdown", "vimwiki")
