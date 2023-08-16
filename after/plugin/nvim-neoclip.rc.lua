local status, neoclip = pcall(require, "neoclip")
if (not status) then return end

neoclip.setup({})

vim.keymap.set('n', ';nc', '<Cmd>Telescope neoclip<CR>')
