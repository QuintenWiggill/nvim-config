require('base')
require('highlights')
require('maps')
require('plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end

require'nvim-web-devicons'.setup {
 -- your personal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
