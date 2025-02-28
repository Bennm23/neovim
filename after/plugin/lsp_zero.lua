local rt = require("rust-tools")

rt.setup({
  tools = {
    inlay_hints = {
      auto = true,
      only_current_line = false,
      show_parameter_hints = true,
      max_len_align = false,  -- Prevent excessive alignment
      right_align = false,    -- Don't push hints to the right
      highlight = "Comment",
    },
  },
  server = {
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = { command = "clippy" },
        inlayHints = {
          enable = true,
          typeHints = { enable = true },
          parameterHints = { enable = true },
          chainingHints = { enable = true }, -- Show hints for method chains
          closingBraceHints = { enable = true }, -- Show hints for closing braces
        },
      },
    },
  },
})


require("clangd_extensions").setup({
  server = {
    cmd = { "clangd", "--background-index", "--clang-tidy", "--header-insertion=iwyu" },
    on_attach = function(client, bufnr)
      require("clangd_extensions.inlay_hints").setup_autocmd()
    end,
  },
})

