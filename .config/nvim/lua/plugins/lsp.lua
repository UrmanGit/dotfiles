return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "ruff", "rust_analyzer", "bashls" },
    },

    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        {
            "neovim/nvim-lspconfig",
            config = function()
                local capabilities = require("blink.cmp").get_lsp_capabilities()

                vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

                vim.lsp.config("ruff", { capabilities = capabilities })
                vim.lsp.config("lua_ls", { capabilities = capabilities })
                vim.lsp.config("rust_analyzer", { capabilities = capabilities })
                vim.lsp.config("bashls", { capabilities = capabilities })

                vim.lsp.enable("ruff")
                vim.lsp.enable("lua_ls")
                vim.lsp.enable("rust_analyzer")
                vim.lsp.enable("bashls")
            end,
        },
    },
}
