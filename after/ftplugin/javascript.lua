local has = vim.fn.has
local is_mac = has "macunix"
if is_mac then
  vim.opt.shiftwidth = 4
  vim.opt.tabstop = 4
else
  vim.opt.shiftwidth = 4
  vim.opt.tabstop = 4
end
