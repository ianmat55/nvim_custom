local status, lualine = pcall(require, 'lualine')
if not status then
    return
end

-- see https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md for lualine themes
local lualine_nord = require('lualine.themes.nord')
local lualine_ocean = require('lualine.themes.OceanicNext')
local lualine_iceberg = require('lualine.themes.iceberg')

lualine.setup({
    options = {
        theme = lualine_nord
    }
})
