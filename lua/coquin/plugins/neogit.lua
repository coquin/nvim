return {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    { "<leader>g<Enter>", "<cmd>Neogit<cr>", desc = "Neogit" },
  },
  config = function()
    require("neogit").setup {}
  end,
}
