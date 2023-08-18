local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup({
  bin = 'prettierd',
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        check_package_json = true,
      })
    end,
    runtime_condition = function(params)
      return true
    end,
    timeout = 5000,
  },
  filetype = {
    "typescript",
    "typescriptreact",
  },
  cli_options = {
    config_precedence = "prefer-file",
  }
})
