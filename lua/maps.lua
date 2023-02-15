local keymap = vim.keymap
local builtin = require('telescope.builtin')

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', ';te', ':tabedit<Cr>')
keymap.set('n', ';tn', ':tabnext<Cr>')
keymap.set('n', ';tp', ':tabprevious<Cr>')
keymap.set('n', ';tc', ':tabclose<Cr>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Leave insert mode
keymap.set('i', 'jk', '<Esc>')

-- Nvim Tree
keymap.set('n', '<leader>cf', ':NvimTreeFindFile<Cr>')
keymap.set('n', ';cc', ':NvimTreeToggle<Cr>')

-- Git stuff
keymap.set('n', ';gs', vim.cmd.Git);
keymap.set('n', ';gb', ':Git blame<Cr>');
keymap.set('n', ';gd', ':Git diff<Cr>');
