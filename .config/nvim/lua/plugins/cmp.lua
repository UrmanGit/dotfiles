return {
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },

    {
        "saghen/blink.cmp",
        dependencies = { "L3MON4D3/LuaSnip" },
        version = "*",

        opts = {
            -- === Klawisze ===
            keymap = {
                preset = "none",
                ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
                ["<C-e>"] = { "hide", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
                ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                ["<C-f>"] = { "scroll_documentation_down", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
            },

            -- === Snippety przez LuaSnip ===
            snippets = { preset = "luasnip" },

            -- === Wygląd ===
            completion = {
                menu = {
                    border = "rounded",
                    draw = {
                        columns = {
                            { "kind_icon" },
                            { "label",      "label_description", gap = 1 },
                            { "kind",       gap = 1 },
                            { "source_name" },
                        },
                    },
                },
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 100,
                    window = {
                        border = "rounded",
                        direction_priority = {
                            menu_north = { "e", "w", "n", "s" },
                            menu_south = { "e", "w", "s", "n" },
                        },
                    },
                },
            },

            -- === Źródła ===
            sources = {
                default = { "snippets", "lsp", "path", "buffer" },

                providers = {
                    snippets = {
                        score_offset = 100,
                        async = true,
                        timeout_ms = 3000,
                    },
                    lsp = {},
                },
            },

            -- === Cmdline ===
            cmdline = {
                sources = function()
                    local type = vim.fn.getcmdtype()
                    if type == ":" then
                        return { "cmdline", "path" }
                    end
                    if type == "/" or type == "?" then
                        return { "buffer" }
                    end
                    return {}
                end,
            },
        },
    },
}
