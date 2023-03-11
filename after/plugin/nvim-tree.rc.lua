require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
})

local function open_nvim_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
  local directory = vim.fn.isdirectory(data.file) == 1
  local api = require("nvim-tree.api")

  vim.cmd [[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
  if no_name then
    api.tree.open({ focus = false, find_file = true, })
  elseif directory then
    vim.cmd.cd(data.file)
    api.tree.open()
  else
    return
  end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
