-- protected call, checks if pakcage exists.
-- local status, _ = pcall(vim.cmd, "colorscheme nord")
-- local status, _ = pcall(vim.cmd, "colorscheme everforest")
-- local, status, _ = pcall(vim.cmd, "colorscheme non-transparent mode")
-- vim.g.catppuccin_flavour = "macchiato" -- Options: "latte", "frappe", "macchiato", "mocha"
local status, _ = pcall(vim.cmd, "colorscheme catppuccin")

if not status then
	print("Colorscheme not found!")
	return
end
