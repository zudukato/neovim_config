return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup {
            options = {
                icons_enebled = true,
                theme = 'auto',
            },
            sections = {
                lualine_a = {
                    {
                        'filname',
                        path = 1,
                    }
                }
            },
            tabline = {
                lualine_a = { {
                    'buffers',
                    show_filename_only = true,
                    hide_filename_extension = false,
                    show_modified_status = true,
                    max_length = vim.o.columns * 2 / 3,
                    filetype_names = {
                        TelescopePrompt = 'Telescope',
                        dashboard = 'Dashboard',
                        packer = 'Packer',
                        fzf = 'FZF',
                        alpha = 'Alpha',
                    },
                    buffers_color = {
                        inactive = 'blue',
                    },
                    symbols = {
                        modified = '#',
                        alternate_file = '',
                    },
                } },
            }
        }
    end,

}
