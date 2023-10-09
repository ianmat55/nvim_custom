local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- ensures that packer is installed

local status, packer = pcall(require, "packer")
if not status then
    return
end

-- reloads nvim whenever this file is saved, install missing plugins, manage updates, etc
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

-- packer installs
return packer.startup(function(use)

	use 'wbthomason/packer.nvim'

    -- colors
    use 'shaunsingh/nord.nvim'
    use 'sainnhe/everforest'
    use 'ray-x/starry.nvim'

    -- tmux & split window nav
    use 'christoomey/vim-tmux-navigator' -- tmux & split window nav

    -- essential
    use 'nvim-lua/plenary.nvim' -- lua functions that many plugins use
    use 'tpope/vim-surround' -- easy quotes
    use 'vim-scripts/ReplaceWithRegister' -- easy text copy and replace

    -- commenting w/ gc
    use 'numToStr/Comment.nvim'
   
    -- file explorer
    use('nvim-tree/nvim-tree.lua')

    -- icons
    use('kyazdani42/nvim-web-devicons')
    
    -- statusline
    use('nvim-lualine/lualine.nvim')
    
    -- fuzzy finding (wtf does that mean), apparently very useful
    use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }) -- telescope dependency
    use({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' })
    
    -- autocompletion
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    
    -- snippets (wtf is a snippet)
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')
    
    -- transparent editor
    use('xiyaowong/transparent.nvim')

    -- manage & instal lsp servers
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

    -- configures lsp servers
	use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use { 'glepnir/lspsaga.nvim', branch = 'main' }
    use 'onsails/lspkind.nvim'

    -- formatting & linting
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jayp0521/mason-null-ls.nvim'

    -- auto closing
    use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
--    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

    -- don't know why we need this, but docs say we do
    if packer_bootstrap then
        require("packer").sync()
    end
end)

