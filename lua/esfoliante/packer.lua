vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    use {
        'olivercederborg/poimandres.nvim',
        config = function()
        require('poimandres').setup {
            -- leave this setup function empty for default config
            -- or refer to the configuration section
            -- for configuration options
        }
        end
    }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
            {'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

	use "Djancyp/better-comments.nvim"

	use "lukas-reineke/indent-blankline.nvim"

    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    }

    require('packer').use { 'mhartington/formatter.nvim' }

    use {
        'Theo-Steiner/warped.nvim',
        require = {'tjdevries/colorbuddy.nvim'},
        config = function()
            require('warped').setup()
        end
    }

    use 'shaunsingh/nord.nvim'
    use ({ 'projekt0n/github-nvim-theme' })
    use("mellow-theme/mellow.nvim")
    use("felipeagc/fleet-theme-nvim")

    use({
        "panghu-huang/theme-picker.nvim",
        requires = {
            "nvim-telescope/telescope.nvim", -- dependency
        },
    })

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
