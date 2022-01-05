vim.cmd([[packadd packer.nvim]])
-- Reload Packer
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})
return require("packer").startup(function()
	-- #1 General Plugins--------------------------------------------------------------------------------
	use("wbthomason/packer.nvim")
	use("mbbill/undotree")
	--NOTE: use("scrooloose/nerdtree")
	use({
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	use("tpope/vim-fugitive")
	--NOTE: use("jiangmiao/auto-pairs")
	use("windwp/nvim-autopairs")
	---NOTE:  use("steelsojka/pears.nvim")
	---NOTE: require("pears").setup()
	use("tpope/vim-surround") -- https://github.com/tpope/vim-surround"
	use("alvan/vim-closetag") -- auto closing tags - web development
	use("numToStr/Comment.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("mhinz/vim-startify")
	--NOTE: use('lewis6991/gitsigns.nvim')
	use("airblade/vim-gitgutter")
	use("junegunn/vim-easy-align")
	----------------------------------------------------------------------------------------------------
	-- 2 Auto Completion Plugins-------------------------------------------------------------------------
	use("neovim/nvim-lspconfig")
	use({ "tami5/lspsaga.nvim" })
	use({ "github/copilot.vim", opt = true, cmd = { "coco" } })
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	-- use 'SirVer/ultisnips'
	-- use 'honza/vim-snippets'
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/vim-vsnip-integ")
	-- use 'golang/vscode-go'
	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind-nvim") -- icons for lsp
	-- use 'sbdchd/neoformat'
	-- post install (yarn install | npm install) then load plugin only for editing supported files
	-- use {'prettier/vim-prettier', run= 'yarn install' }
	use("jose-elias-alvarez/null-ls.nvim")
	----------------------------------------------------------------------------------------------------
	-- #3 color settings and look😛----------------------------------------------------------------------
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- We recommend updating the parsers on update
	-- use 'lifepillar/vim-gruvbox8'
	use("lifepillar/vim-solarized8")
	-- Pslug 'arcticicestudio/nord-vim'
	-- use 'dracula/vim', { 'as': 'dracula' }
	-- "use 'morhetz/gruvbox'
	-- "indentation guidelines
	-- "minimap
	-- use 'psliwka/vim-smoothie'
	use({ "karb94/neoscroll.nvim" })
	-- "use 'vim-airline/vim-airline'
	use("hoob3rt/lualine.nvim")
	use({ "rrethy/vim-hexokinase", run = "make hexokinase" }) -- Color Display"
	use("KabbAmine/vCoolor.vim") -- color picker for vim
	-- Fuzzy Finders and Navigation----------------------------------------------------------------------
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("nvim-telescope/telescope-media-files.nvim")
	-- "fuzzy finedr using fzf
	-- use 'junegunn/fzf', { 'do': { -> fzf#install() } }
	-- use 'junegunn/fzf.vim'
	-- -------------------------------------------------------------------------------------------------
	-- use 'lervag/vimtex',{'do':'latex'}
	-- Lua
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	})
	use({ "ThePrimeagen/harpoon" })
	use({
		"vimwiki/vimwiki",
		branch = "dev",
		-- keys = { "<leader>x" },
		config = function()
			vim.g["vimwiki_list"] = {
				{
					template_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/vimwiki/autoload/",
					path = "~/Downloads/vimwiki",
					-- syntax = "markdown",
					-- ext = ".md",
				},
			}
			vim.g["vimwiki_global_ext"] = 0
		end,
	})
	-- use("davidgranstrom/nvim-markdown-preview")
    use({ "iamcco/markdown-preview.nvim" , run = "cd app && npm install" })
	-- use({
	-- 	"glacambre/firenvim",
	-- 	run = function()
	-- 		vim.fn["firenvim#install"](1)
	-- 	end,
	-- })
	---------------------------------------------------------------------------------------------------
end)
