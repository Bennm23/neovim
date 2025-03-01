return {
    {
        -- Neogit
        "TimUntersberger/neogit",
    },
    {
        "mg979/vim-visual-multi"
    },
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end,
    },
    {
        "tpope/vim-commentary"
    },
    -- Session Manager
    {

        "Shatur/neovim-session-manager",

    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
}
