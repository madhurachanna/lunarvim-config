lvim.plugins = require("plugins")
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "everforest"
-- lvim.colorscheme = "miramare"


vim.opt.timeoutlen = 500
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'

vim.cmd("highlight IndentBlanklineContextChar guifg=#98C379")
vim.cmd("highlight IndentBlanklineIndent1 guifg=#323b45 gui=nocombine")


