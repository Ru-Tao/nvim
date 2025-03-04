local plugins = {
  {
    "vimwiki/vimwiki",
    lazy = true,
    keys = { "<leader>ww", "<leader>wt" },
    init=function ()
        vim.g.vimwiki_list = {  
        {
          path = "~/Documents/vimwiki/",
          syntax = "markdown",
          ext = "md",
        }
      }
    end,
    }
}

return plugins
