require('neogit').setup({

    integrations = {
        diffview = true,
        telescope = true,
    },
    kind = 'vsplit',
    commit_popup = {
        kind = 'split',
    },
    auto_refresh = true,

})

vim.api.nvim_set_keymap("n", "<leader>ng", ":Neogit<CR>", { noremap = true })
