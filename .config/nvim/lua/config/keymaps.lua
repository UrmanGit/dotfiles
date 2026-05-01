local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", opts)

-- NvimTree
map("n", "<leader>t", "<Cmd>Neotree filesystem toggle left<CR>", opts)
map("n", "<leader>e", "<Cmd>Neotree filesystem focus left<CR>", opts)
map(
	"n",
	"<leader>[]",
	"<Cmd>set tabstop=2 shiftwidth=2 noexpandtab<CR><Cmd>retab!<CR><Cmd>set tabstop=4 shiftwidth=4 expandtab<CR><Cmd>retab!<CR>",
	opts
)

-- NvimLSP
map("n", "<leader>h", vim.lsp.buf.hover, opts)
map("n", "<leader>gd", vim.lsp.buf.definition, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>se", vim.diagnostic.open_float, opts)

-- None ls
map("n", "<leader>gf", vim.lsp.buf.format, opts)
