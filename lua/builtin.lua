lvim.builtin.which_key.mappings = require("which_key")
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.treesitter.indent.enable = true
lvim.builtin.project.patterns = { '.git' }
-- lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.context_commentstring.enable = true
lvim.builtin.telescope.defaults.layout_strategy = "vertical"
lvim.builtin.telescope.defaults.sorting_strategy = "ascending"
lvim.builtin.lualine.options.theme = "everforest"
lvim.builtin.telescope.defaults.layout_config.vertical = {
  preview_width = 0.75,
  preview_height = 0.6,
  preview_cutoff = 0,
  height = 0.9,
  prompt_position = "top",
  mirror = true,
}
lvim.builtin.comment.pre_hook = function(ctx)
  return require('ts_context_commentstring.internal').calculate_commentstring()
end
lvim.builtin.telescope.extensions["media_files"] = {
  filetypes = { "png", "webp", "jpg", "jpeg" },
  find_cmd = "rg" -- find command (defaults to `fd`)
}
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  -- "javascript",
  "json",
  "python",
  -- "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "vue"
}

local wiki_offset = {
  filetype = "vimwiki",
  text = "Vimwiki",
  padding = 1,
}

table.insert(lvim.builtin.bufferline.options.offsets, wiki_offset)

-- vim.list_extend(lvim.builtin.bufferline.options.offsets, {
--   filetype = "vimwiki",
--   text = "Vimwiki",
--   padding = 1,
-- })

-- lvim.builtin.bufferline.options.offsets = {{
--   filetype = "vimwiki",
--   text = "Vimwiki"
-- }}
