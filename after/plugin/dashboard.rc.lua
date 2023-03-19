local status, dashboard = pcall(require, "dashboard")
if (not status) then return end

dashboard.setup({
  theme = 'hyper',
  config = {
    header = {
      [[  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
      [[  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ]],
      [[  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
      [[  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ]],
      [[  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ]],
      [[  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ]],
      [[]],
    },
    shortcut = {
      { desc = ' Update', group = '@property', action = 'PackerUpdate', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Tree',
        group = 'Label',
        action = 'NvimTreeToggle',
        key = 'c',
      },
      {
        desc = ' config',
        group = 'Number',
        action = 'e ~/.config/nvim',
        key = 'd',
      },
    },
    packages = { enable = false },
    footer = {}
  },
})

vim.keymap.set('n', ';dd', '<Cmd>Dashboard<Cr>')
