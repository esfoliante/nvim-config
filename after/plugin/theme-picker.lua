require('theme-picker').setup({
  themes = {
    { name = 'Github', colorscheme = 'github_dark_default' },
    { name = 'Github (Light)', colorscheme = 'github_light' },
    { name = 'Mellow', colorscheme = 'mellow' },
    { name = 'Fleet', colorscheme = 'fleet' },
    { name = 'Nord', colorscheme = 'nord' },
  },
  picker = {
    prompt_title = 'Select Theme',
  }
})
