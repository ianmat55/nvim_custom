local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- see https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md for lualine themes
local lualine_nord = require("lualine.themes.nord")
local lualine_ocean = require("lualine.themes.OceanicNext")
local lualine_iceberg = require("lualine.themes.iceberg")
local lualine_everforest = require("lualine.themes.everforest")
local lualine_pale = require("lualine.themes.palenight")
local lualine_nightfly = require("lualine.themes.nightfly")
local lualine_moon = require("lualine.themes.moonfly")

lualine.setup({
	options = {
		theme = lualine_pale,
	},
})
