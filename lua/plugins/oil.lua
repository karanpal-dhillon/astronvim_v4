return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    skip_confirm_for_simple_edits=true,
     float = {
        -- Padding around the floating window
        padding = 5,
        max_width = 50,
        max_height = 80,
        border = "rounded",
        win_options = {
          winblend = 5,
        },
      },
    keymaps = {
      ["<Esc>"] = "actions.close",
      ["q"] = "actions.close",
      ["<CR>"] = "actions.select",
      ["g"] = "actions.select",
      ["b"] = "actions.parent",
      ["?"] = "actions.show_help",
      ["<C-p>"] = "actions.preview",
      ["<C-r>"] = "actions.refresh",
      ["<C-t>"] = "actions.select_tab",
      ["_"] = "actions.open_cwd",
      ["`"] = "actions.cd",
      ["~"] = "actions.tcd",
      ["<C-f>"] = "actions.change_sort",
      ["<C-e>"] = "actions.open_external",
      ["<C-.>"] = "actions.toggle_hidden",
    },
  },
  -- enabled = true,
  cmd = "Oil",
  keys = {
    { "<leader>O", function() require("oil").toggle_float() end, desc = "Open folder in Oil" },
  },
}
