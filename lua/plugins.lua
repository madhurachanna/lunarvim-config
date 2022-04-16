local plugins = {
    -- { "JoosepAlviste/nvim-ts-context-commentstring" },
    { "tpope/vim-fugitive" },
    { "nvim-telescope/telescope-media-files.nvim" },
    { "glepnir/zephyr-nvim" },
    { "ap/vim-css-color" },
    { "vimwiki/vimwiki" },
    {
      "lukas-reineke/indent-blankline.nvim",
      config = function ()
        vim.cmd("highlight IndentBlanklineContextChar guifg=#98C379")
        require("indent_blankline").setup {
          space_char_blankline = " ",
          show_current_context = true,
          show_current_context_start = true,
        }
      end
    },

    -- Themes
    { "glepnir/oceanic-material" },
    { "sainnhe/everforest" },
    { "ajmwagar/vim-deus" },
    {
      "franbach/miramare",
      config = function ()
          -- require("miramare").setup()
          -- vim.cmd[[colorscheme miramare]]
          -- lvim.builtin.lualine.options.theme = "auto"
      end
    },
}


require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({paths = {"~/.config/lvim/snippets"}})


return plugins
