local plugins = {
  -- Themes
  -- { "glepnir/oceanic-material" },
  {
    "sainnhe/everforest",
    config = function()
      -- Colors for indent-blankline plugin
      vim.cmd [[highlight IndentBlanklineContextChar guifg=#e67e80]]
      vim.cmd [[highlight IndentBlanklineIndent1 guifg=#323b45 gui=nocombine]]
      vim.cmd [[let g:everforest_background = 'soft']]
    end

  },
  { "ajmwagar/vim-deus" },
  { "franbach/miramare" },
  { "rebelot/kanagawa.nvim" },
  { "sainnhe/gruvbox-material" },
  { "tpope/vim-fugitive" },
  { "nvim-telescope/telescope-media-files.nvim" },
  { "ap/vim-css-color" },
  { "akinsho/toggleterm.nvim" },
  {
    "mg979/vim-visual-multi",
    config = function()
      vim.cmd [[let g:VM_maps = {}]]
      vim.cmd [[let g:VM_maps["Add Cursor Down"] = '<C-j>']]
      vim.cmd [[let g:VM_maps["Add Cursor Up"] = '<C-k>']]
      -- vim.g.VM_maps = {}
      -- vim.g.VM_maps["Add Cursor Down"] = 'C-j'
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      vim.cmd [[highlight IndentBlanklineContextChar guifg=#e67e80]]
      vim.cmd [[highlight IndentBlanklineIndent1 guifg=#323b45 gui=nocombine]]
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        char_highlight_list = { "IndentBlanklineIndent1" }
      }
    end
  },
}


require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/lvim/snippets" } })


return plugins
