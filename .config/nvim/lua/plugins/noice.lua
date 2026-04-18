return {
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#1e1e2e", -- catppuccin mocha base
                stages = "fade_in_slide_out",
                timeout = 3000,
                max_width = 60,
                render = "wrapped-compact",
            })
            vim.notify = require("notify")
        end,
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function()
            require("noice").setup({
                lsp = {
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    },
                    progress = { enabled = true },
                    hover = { enabled = true },
                    signature = { enabled = true },
                },

                presets = {
                    command_palette = true,       -- cmdline jako ładne okienko na środku
                    long_message_to_split = true, -- długie wiadomości → split zamiast blokowania
                    inc_rename = false,
                    lsp_doc_border = true,
                },

                -- "Please press ENTER" i podobne → mini notif zamiast blokowania
                routes = {
                    {
                        filter = {
                            event = "msg_show",
                            any = {
                                { find = "Press ENTER" },
                                { find = "press ENTER" },
                                { find = "%d+L, %d+B" },
                                { find = "; after #%d+" },
                                { find = "; before #%d+" },
                                { find = "^%%" },
                            },
                        },
                        opts = { skip = true },
                    },
                    {
                        -- błędy LSP i ostrzeżenia → prawy górny róg
                        filter = { event = "msg_show", kind = { "emsg", "wmsg" } },
                        view = "notify",
                        opts = { level = vim.log.levels.WARN },
                    },
                },

                views = {
                    notify = {
                        position = { row = 1, col = "100%" },
                    },
                },
            })
        end,
    },
}
