require('imats.plugins-setup')
require('imats.core.options')
require('imats.core.keymaps')
require('imats.core.colorscheme')

-- plugin imports
require('imats.plugins.mason-config')
require('imats.plugins.comment')
require('imats.plugins.nvim-tree')
require('imats.plugins.lualine')
require('imats.plugins.telescope')
require('imats.plugins.nvim-cmp')

local nvim_lsp = require('lspconfig')

nvim_lsp.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = {'python'},
})


