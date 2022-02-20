lvim.log.level = "warn"
lvim.format_on_save = true
-- lvim.colorscheme = "oceanic_material"
-- lvim.colorscheme = "everforest"
lvim.colorscheme = "miramare"
-- lvim.colorscheme = "zephyr"
-- lvim.colorscheme = "deus"
vim.opt.timeoutlen = 500
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.list_extend(lvim.lsp.override, { "volar", "eslint", "tsserver", "eslintrc" })
-- local opts = {}
require("lvim.lsp.manager").setup("vuels", {})
require("lvim.lsp.manager").setup("tailwindcss", {})
lvim.lsp.buffer_mappings.normal_mode['K'] = nil
lvim.lsp.buffer_mappings.normal_mode['gk'] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show hover" }
lvim.lsp.automatic_servers_installation = false

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.treesitter.indent.enable = false
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.context_commentstring.enable = true
-- lvim.builtin.treesitter.context_commentstring.enable_autocmd = false
lvim.builtin.comment.pre_hook = function(ctx)
    return require('ts_context_commentstring.internal').calculate_commentstring()
end
lvim.builtin.telescope.extensions["media_files"] = {
  filetypes = {"png", "webp", "jpg", "jpeg"},
  find_cmd = "rg" -- find command (defaults to `fd`)
}
-- require("telescope").load_extension "media_files"
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "vue"
}

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }

-- Additional Plugins
lvim.plugins = {
    {"JoosepAlviste/nvim-ts-context-commentstring"},
    {"tpope/vim-fugitive"},
    {"nvim-telescope/telescope-media-files.nvim"},
    {"glepnir/zephyr-nvim"},
    {"tomlion/vim-solidity"},

    -- Themes
    {"glepnir/oceanic-material"},
    {"franbach/miramare"},
    {"sainnhe/everforest"},
    {"ajmwagar/vim-deus"},
}

---------------------------------------------------------------------
-- Keymappings
---------------------------------------------------------------------

-- Copilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
-- vim.api.nvim_set_keymap("i", "<Right>", 'copilot#Accept("")', { expr = true, silent = true })


-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')


-- Better window movment
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})
vim.api.nvim_set_keymap('n', '<Space><Space>', ':Telescope find_files<CR>', {silent = true})

vim.api.nvim_set_keymap('n', 'aa', "lua require('ts_context_commentstring.internal').update_commentstring()<CR>", {silent = true})

-- Move faster
lvim.keys.visual_block_mode["J"] = "5j"
lvim.keys.visual_block_mode["K"] = "5k"
lvim.keys.visual_block_mode["L"] = "5l"
lvim.keys.visual_block_mode["H"] = "5h"
vim.api.nvim_set_keymap('n', 'H', '5h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'J', '5j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'K', '5k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'L', '5l', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'J', '5j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'H', '5h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'K', '5k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'L', '5l', {noremap = true, silent = true})


-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})


-- Rnvimr
vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})


-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', '<C-K>', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-J>', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})


-- I hate escape
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})


-- Tab switch buffer
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"

-- Fix to get netrw's gx command to work correctly
vim.api.nvim_set_keymap('n', 'gx', ":call netrw#BrowseX(expand((exists('g:netrw_gx')? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<cr>", {noremap = true, silent = true})


vim.cmd('vnoremap p "0p')
vim.cmd('vnoremap P "0P')

---------------------------------------------------------------------
-- Which-key
---------------------------------------------------------------------

lvim.builtin.which_key.mappings = {
    [" "] = "which_key_ignore",
    [";"] = " Dashboard",
    ["e"] = { "<cmd>NvimTreeToggle<cr>",  " Explorer" },
    ["s"] = { "<cmd>:w<cr>",  "Save" },
    ["h"] = " No Highlight",
    ["T"] = " Terminal",
    p = {
        name = " Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        r = { "<cmd>lua require('lvim.utils').reload_lv_config()<cr>", "Reload" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
      },
    b = {
        name = "﬘ Buffers",
        b = {"<cmd>BufferClose<cr>", "Close buffer"},
        j = {"<cmd>BufferPick<cr>", "Jump to buffer"},
        w = {"<cmd>BufferWipeout<cr>", "Wipeout buffer"},
        e = {"<cmd>BufferCloseAllButCurrent<cr>", "Close other buffers"},
        h = {"<cmd>BufferCloseBuffersLeft<cr>", "Close left buffers"},
        l = {"<cmd>BufferCloseBuffersRight<cr>", "Close right buffers"},
        D = {"<cmd>BufferOrderByDirectory<cr>", "Order buffers by directory"},
        L = {"<cmd>BufferOrderByLanguage<cr>", "Order buffers by language"}
    },
    D = {
        name = " Debug",
        b = {"<cmd>DebugToggleBreakpoint<cr>", "Toggle Breakpoint"},
        c = {"<cmd>DebugContinue<cr>", "Continue"},
        i = {"<cmd>DebugStepInto<cr>", "Step Into"},
        o = {"<cmd>DebugStepOver<cr>", "Step Over"},
        r = {"<cmd>DebugToggleRepl<cr>", "Toggle Repl"},
        s = {"<cmd>DebugStart<cr>", "Start"}
    },
    g = {
        name = " Git",
        g = {"<cmd>vertical G<cr><cmd>vertical resize -15<cr>", "Git status"},
        p = {"<cmd>Git -c push.default=current push<cr>", "Git push"},
        h = {"<cmd>diffget //2<cr>", "Diff-get left"},
        l = {"<cmd>diffget //3<cr>", "Diff-get right"},
        d = {"<cmd>Gvdiffsplit<cr><cmd>windo w<cr>", "Git diff"},
        -- j = {"<cmd>NextHunk<cr>", "Next Hunk"},
        -- k = {"<cmd>PrevHunk<cr>", "Prev Hunk"},
        -- p = {"<cmd>PreviewHunk<cr>", "Preview Hunk"},
        -- r = {"<cmd>ResetHunk<cr>", "Reset Hunk"},
        -- R = {"<cmd>ResetBuffer<cr>", "Reset Buffer"},
        -- s = {"<cmd>StageHunk<cr>", "Stage Hunk"},
        s = {"<cmd>Telescope git_stash<cr>", "Open changed file"},
        u = {"<cmd>UndoStageHunk<cr>", "Undo Stage Hunk"},
        o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
        C = {"<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)"},
    },
    l = {
        name = " LSP",
        a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
        A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>LspFormatting<cr>", "Format"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
        L = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
        p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
        q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        r = {"<cmd>Lspsaga rename<cr>", "Rename"},
        t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
        x = {"<cmd>cclose<cr>", "Close Quickfix"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"}
    },
    w = {
        name = ' Window',
        d = {"<C-w>q", "Quit window"},
        h = {"<C-w>h", "Go to left window"},
        j = {"<C-w>j", "Go to down window"},
        k = {"<C-w>k", "Go to up window"},
        l = {"<C-w>l", "Go to right window"},
        H = {"<cmd>vertical resize +5<cr>", "Vertical resize +5"},
        J = {"<cmd>resize +5<cr>", "Resize +5"},
        K = {"<cmd>resize -5<cr>", "Resize -5"},
        L = {"<cmd>vertical resize -5<cr>", "Vertical resize -5"},
        w = {"<C-w>w", "Cycle window"},
        s = {"<cmd>split<cr>", "Horizontal split"},
        v = {"<cmd>vs<cr>", "Vertical split"},
    },
    t = {
        name = " Telescope",
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"},
        p = {"<cmd>Telescope projects<cr>", "Projects"}
    },
    S = {
        name = " Session",
        s = {"<cmd>SessionSave<cr>", "Save Session"},
        l = {"<cmd>SessionLoad<cr>", "Load Session"}
    },
    z = {
        name = " Zen",
        s = {"<cmd>TZBottom<cr>", "toggle status line"},
        t = {"<cmd>TZTop<cr>", "toggle tab bar"},
        z = {"<cmd>TZAtaraxis<cr>", "toggle zen"},
    }
}

