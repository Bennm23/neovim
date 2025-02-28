return {
  {
    "simrat39/rust-tools.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local rt = require("rust-tools")
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            local opts = { buffer = bufnr }
            vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, opts)
          end,
        },
      })
    end,
  }
}

