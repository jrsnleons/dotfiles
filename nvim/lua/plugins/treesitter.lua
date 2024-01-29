return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    { "windwp/nvim-ts-autotag" },
  },
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      autotag = { enable = true },
      ensure_installed = {"lua", "javascript", "python", "c", "html", "css"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
