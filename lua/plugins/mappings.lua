return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          L = {
            function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
          },
          H = {
            function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
          },

          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

          ["0"] = "^",
          ["^"] = "0",
          -- ["<C-d>"] = "20jzz", // this and one underneath is taken care by neoscroll plugin now
          -- ["<C-u>"] = "20kzz",
          ["j"] = "jzz",
          ["k"] = "kzz",
          ["d"] = '"_d',
          ["x"] = '"_x',
          -- Pipe operator accesses the system clipboard
          -- vim.keymap.set({ "n", "v" }, "|", '"+'),
          ["|"] = '"+',
          -- mappings seen under group name "Buffer"
          ["<LocalLeader>e"] = { "<cmd>Neotree float<CR>", desc = "Neotree float" },
          ["<LocalLeader>b"] = {
            function()
              require("astronvim.utils.status").heirline.buffer_picker(
                function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          ["<LocalLeader>u"] = {
            function()
              if vim.o.background == "light" then
                vim.o.background = "dark"
              else
                vim.o.background = "light"
              end
            end,
            desc = "Toggle day night mode",
          },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
