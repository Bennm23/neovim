return {

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
      "nvim-tree/nvim-web-devicons",
      lazy = false, -- Load only when needed
      config = function()
        require("nvim-web-devicons").setup({
          override = {},
          default = true, -- Use default icons
        })
      end,
    },

}
