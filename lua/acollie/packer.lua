
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "rebelot/kanagawa.nvim"  
  use {
	  "nvim-treesitter/nvim-treesitter",
	  run = ":TSUpdate",
	  config = function()
		  require("nvim-treesitter.configs").setup({
			  highlight = { enable = true },
		  })
	  end,
  }
  use {
	  "nvim-neorg/neorg",
	  run = ":Neorg sync-parsers", -- This is the important bit!
	  config = function()
	  end
  }


  vim.cmd.colorscheme('kanagawa')
end)
