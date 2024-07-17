return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  opts = {},
  keys = {
    {
      "Ss",
      mode = { "n", "x", "o" },
      function() require("flash").jump() end,
      desc = "Flash",
    },
    {
      "SS",
      mode = { "n", "o", "x" },
      function() require("flash").treesitter() end,
      desc = "Flash Treesitter",
    },
    {
      "rr",
      mode = "o",
      function() require("flash").remote() end,
      desc = "Remote Flash",
    },
    {
      "R",
      mode = { "o", "x" },
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search",
    },
  },
}
