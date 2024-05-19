-- local user_config = vim.g.config.plugins.neogit or {}
--
-- local default_config = {
--   enabled = true,
--   keys = {
--     { "<leader>g<Enter>", "<cmd>Neogit<cr>", desc = "Neogit" },
--   },
--   opts = {},
-- }
--
-- local config = vim.tbl_deep_extend("force", default_config, user_config)

return {
  "NeogitOrg/neogit",
  tag = "v0.0.1",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim",
  },
  -- keys = config.keys,
  keys = {
    { "<leader>g<Enter>", "<cmd>Neogit<cr>", desc = "Neogit" },
  },
  -- opts = config.opts,
  config = function()
    require("neogit").setup {}
  end,
}
