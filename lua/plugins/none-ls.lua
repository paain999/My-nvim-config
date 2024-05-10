return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
      	"nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				--null_ls.builtins.formatting.stylua,
			--	null_ls.builtins.formatting.prettier,
				--null_ls.builtins.diagnostics.djlint,
				null_ls.builtins.formatting.htmlbeautifier,
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.diagnostics.rubocop,
				--null_ls.builtins.diagnostics.eslint_d,
				--null_ls.builtins.diagnostics.htmlhint,
				--null_ls.builtins.formatting.rubocop,
				--require("none-ls.diagnostics.eslint")
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
