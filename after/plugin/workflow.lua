require("neogit").setup({

    integrations = {
        diffview = true,
        telescope = true,
    },
    kind = "vsplit",
    commit_popup = {
        kind = "split",
    },
    auto_refresh = true,
  
})
 
vim.api.nvim_set_keymap("n", "<leader>ng", ":Neogit<CR>", { noremap = true })
 

vim.g.visualmulti_disable_maps = 0
vim.g.visualmulti_map_add_cursor = "<C-a>"  -- Add cursor with Ctrl+a
vim.g.visualmulti_map_remove_cursor = "<C-x>"  -- Remove cursor with Ctrl+x

-- Nvim Tree
vim.api.nvim_set_keymap("n", "<leader>ot", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ft", ":NvimTreeFocus<CR>",  { noremap = true, silent = true })

require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
})


-- Commentary Mappings
vim.api.nvim_set_keymap("n", "<C-\\>", ":Commentary<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-\\>", ":Commentary<CR>", { noremap = true, silent = true })


-- Session Manager

local Path = require('plenary.path')
local config = require('session_manager.config')
require('session_manager').setup({
    -- Save Directory
    sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'),
    -- Function to convert session to save dir
    session_filename_to_dir = session_filename_to_dir,
    -- Replace seprators and colons 
    dir_to_session_filename = dir_to_session_filename,
    -- Define what to do when neovim is started without args
    autoload_mode = {
        config.AutoloadMode.GitSession,
        config.AutoloadMode.CurrentDir,
        config.AutoloadMode.LastSession,
    },
    autosave_last_session = true,
    autosave_ignore_not_normal = true,
    autosave_ignore_dirs = {},
    autosave_ignore_filetypes = {
        'gitcommit',
        'gitrebase',
    },
    autosave_ignore_buftypes = {},
    autosave_only_in_session = false,
    max_path_length = 80,
    load_include_current = true,
})

-- Autopair
-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)




