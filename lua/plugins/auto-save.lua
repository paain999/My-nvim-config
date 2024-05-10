return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({})
	end,
	vim.keymap.set("n", "<leader>as", ":ASToggle<CR>", {}),
}

