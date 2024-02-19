vim.g.mapleader = " " -- here to prevent namespace clashing

local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>") --, { noremap = true, silent = true }) -- remap esc to jk
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clears text search
keymap.set("n", "x", '"_x') -- something about deleting characters and storing in registers

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabnext<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabprevious<CR>") -- close prev tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
