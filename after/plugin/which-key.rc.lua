local status, which_key = pcall(require, "which-key")
if (not status) then return end

which_key.setup({

})

which_key.register({
  [";"] = {
    f = { "<cmd>Telescope find_files<cr>", "Find file" },
    [";"] = { "<cmd>Telescope resume<cr>", "Resume search" },
  }
})
