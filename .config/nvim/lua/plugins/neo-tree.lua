return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
		"antosha417/nvim-lsp-file-operations",
		"folke/snacks.nvim",
	},
	lazy = false,
	opts = {
		close_if_last_window = true,

		filesystem = {
			follow_current_file = { enabled = true },
		},
	},
}
