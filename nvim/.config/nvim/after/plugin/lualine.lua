require('lualine').setup {
    options = {
        theme = 'gruvbox',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    -- inactive_sections = {
    --     lualine_a = {},
    --     lualine_b = {},
    --     lualine_c = {},
    --     lualine_x = { 'encoding' },
    --     lualine_y = {},
    --     lualine_z = {}
    -- },
}

--         sections = {
--             lualine_a = { 'mode' },
--             lualine_b = { 'branch', 'diff', 'diagnostics' },
--             lualine_c = { 'filename' },
-- lualine_x = { 'encoding', 'fileformat', 'filetype' },
--             lualine_y = { 'progress' },
--             lualine_z = { 'location' }
--         },
