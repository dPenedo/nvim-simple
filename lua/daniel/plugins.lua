-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end




-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])
packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

    --  Coc
    -- use {'neoclide/coc.nvim', branch = 'release'}

    -- Kitty
	use("knubie/vim-kitty-navigator")
    -- Emmet
	use("mattn/emmet-vim")

    -- Lines
	use("crispgm/nvim-tabline")
	use("bling/vim-bufferline")
	use("nvim-lualine/lualine.nvim")

    -- Transparent
	use("xiyaowong/nvim-transparent")

    -- Treesitter
	-- use("nvim-treesitter/nvim-treesitter") --  Treesitter Syntax Highlighting
    -- use {
    --     'nvim-treesitter/nvim-treesitter',
    --     run = ':TSUpdate'
    -- }

	-- Tim Pope Plugins --
    --
--	use("tpope/vim-surround")

	-- Syntax Highlighting and Colors --
	use("PotatoesMaster/i3-vim-syntax")
	use("kovetskiy/sxhkd-vim")
	-- use("vim-python/python-syntax")
	-- use("ap/vim-css-color")
    use("norcalli/nvim-colorizer.lua")

-- Snippets
    use ("L3MON4D3/LuaSnip") --snippet engine
    use ("rafamadriz/friendly-snippets") -- a bunch of snippets to use



    
-- Whichkey
--    use("folke/which-key.nvim")

    -- Ranger
	use("kevinhwang91/rnvimr")
    -- nvimtree
    use("preservim/nerdtree")
    -- Comments
    use {"tpope/vim-commentary"}

-- Format
    use("sbdchd/neoformat")


-- Notes
    use("renerocksai/calendar-vim")
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    
    use {"ellisonleao/glow.nvim"}


    -- Iconos
	use("kyazdani42/nvim-web-devicons")
	use("ryanoasis/vim-devicons")
    -- Dependencias
	use("nvim-lua/plenary.nvim")
    -- indent
	use("lukas-reineke/indent-blankline.nvim")



	-- Colorschemes --
	-- use("rebelot/kanagawa.nvim")
	use("jacoborus/tender.vim")
	use("morhetz/gruvbox")
	use{"pineapplegiant/spaceduck", branch = 'dev' }

    use {"Mofiqul/dracula.nvim"}


    
   
  


        --Autopair
    use ('jiangmiao/auto-pairs')


	-- Other stuff --
    --  
	use("frazrepo/vim-rainbow")
    use("nvim-lua/popup.nvim")

	use("junegunn/fzf.vim")
	use("junegunn/fzf")



	if packer_bootstrap then
		packer.sync()
	end
end)


--Indentation
require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
  show_trailing_blankline_indent = false,
}
require("transparent").setup({
  enable = false, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared

  },
  exclude = {}, -- table: groups you don't want to clear
})






-- Color nvim
require("colorizer").setup()

-- Lualine
require('lualine').setup()


