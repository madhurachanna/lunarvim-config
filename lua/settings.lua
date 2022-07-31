lvim.plugins = require("plugins")
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "everforest"
vim.g.miramare_enable_italic = 1
vim.g.miramare_disable_italic_comment = 1
-- lvim.colorscheme = "miramare"

vim.opt.timeoutlen = 500
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'

vim.cmd("highlight IndentBlanklineContextChar guifg=#98C379")
vim.cmd("highlight IndentBlanklineIndent1 guifg=#323b45 gui=nocombine")

-- Neovide/ Gui Settings
vim.o.guifont = "DejaVuSansMono Nerd Font Mono:h17"
vim.g.neovide_transparency = 0.95
vim.g.neovide_floating_blur_amount = 1
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_vfx_particle_speed = 20
vim.g.neovide_cursor_vfx_particle_density = 10
vim.g.neovide_cursor_vfx_particle_phase = 10
vim.g.neovide_cursor_vfx_particle_curl = 0.02
vim.g.neovide_cursor_vfx_particle_lifetime = 2

