require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'
	
	-- Sets the colorscheme to Tokyo Night
	use 'folke/tokyonight.nvim'
	vim.cmd('colorscheme tokyonight')

	--Fuzzy finder
	use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}


end)
