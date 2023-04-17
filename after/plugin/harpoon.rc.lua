local status, harpoon = pcall(require, "harpoon")
if (not status) then return end

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

harpoon.setup({
})

vim.keymap.set('n', ';hm', '<Cmd>Telescope harpoon marks<CR>')
vim.keymap.set('n', ';ha', mark.add_file)
vim.keymap.set('n', ';hr', mark.rm_file)

vim.keymap.set('n', ';1', function() ui.nav_file(1) end)
vim.keymap.set('n', ';2', function() ui.nav_file(2) end)
vim.keymap.set('n', ';3', function() ui.nav_file(3) end)
vim.keymap.set('n', ';4', function() ui.nav_file(4) end)
vim.keymap.set('n', ';5', function() ui.nav_file(5) end)
