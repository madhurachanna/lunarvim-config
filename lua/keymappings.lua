---------------------------------------------------------------------
-- Keymappings
---------------------------------------------------------------------

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"


-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')


-- Better window movment
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })
vim.api.nvim_set_keymap('n', '<Space><Space>', ':Telescope find_files<CR>', { silent = true })

vim.api.nvim_set_keymap('n', 'aa', "lua require('ts_context_commentstring.internal').update_commentstring()<CR>",
  { silent = true })

-- Move faster
lvim.keys.visual_block_mode["J"] = "5j"
lvim.keys.visual_block_mode["K"] = "5k"
lvim.keys.visual_block_mode["L"] = "5l"
lvim.keys.visual_block_mode["H"] = "5h"
vim.api.nvim_set_keymap('n', 'H', '5h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '5l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'H', '5h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '5l', { noremap = true, silent = true })


-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })


-- Rnvimr
vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', { noremap = true, silent = true })


-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', '<C-K>', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-J>', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })


-- I hate escape
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })


-- Tab switch buffer
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"

-- Fix to get netrw's gx command to work correctly
vim.api.nvim_set_keymap('n', 'gx',
  ":call netrw#BrowseX(expand((exists('g:netrw_gx')? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<cr>",
  { noremap = true, silent = true })


vim.cmd('vnoremap p "0p')
vim.cmd('vnoremap P "0P')

vim.cmd('inoremap <buffer> <C-s> <esc>yiwi<lt><esc>ea></><esc>hpF>i')

-- ToggleTerm
vim.api.nvim_set_keymap('n', 'tt', ':ToggleTerm direction="horizontal"<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'tt', ':ToggleTerm direction="horizontal"<CR>', { noremap = true, silent = true })
-- vim.cmd('nnoremap <silent><t-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>')
-- vim.cmd('inoremap <silent><t-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>')

-- Copilot
-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_assume_mapped = true
-- vim.api.nvim_set_keymap("i", "<Right>", 'copilot#Accept("")', { expr = true, silent = true })
