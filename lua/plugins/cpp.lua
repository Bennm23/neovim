return {

	{
	  "p00f/clangd_extensions.nvim",
	  dependencies = { "neovim/nvim-lspconfig" },
	  config = function()
		require("clangd_extensions").setup({
		  inlay_hints = {
			enabled = true,
		  },
		})
	  end
	},


}
