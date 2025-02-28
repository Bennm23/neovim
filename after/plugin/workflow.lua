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
