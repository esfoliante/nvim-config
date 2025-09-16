require"battery".setup({})

local nvimbattery = {
  function()
    return require("battery").get_status_line()
  end,
}

require('lualine').setup {
	options = {
		icons_enabled = true,
        theme = 'poimandres'
	},
    sections = {
        lualine_a = nvimbattery
    }
}

