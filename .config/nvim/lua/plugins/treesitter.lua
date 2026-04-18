return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    build = ":TSUpdate",
    opts = {
        require("nvim-treesitter").install({
            "python",
            "lua",
            "bash",
            "markdown",
            "vim",
            "vimdoc",
            "rust",
            "html",
            "yaml",
        }),
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "python",
                "lua",
                "bash",
                "markdown",
                "vim",
                "vimdoc",
                "rust",
                "html",
                "yaml",
            },
            callback = function()
                vim.treesitter.start()                                -- highlighting
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
            end,
        }),
    },
}
