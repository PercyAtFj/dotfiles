return {
  n = {
    ["H"] = { "^", desc = "go line head" },
    ["L"] = { "g_", desc = "go line tail" },
    ["J"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["K"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["jc"] = { "<cmd>HopChar1<cr>", desc = "Jump to char" },
    -- ["jl"] = { "<cmd>HopLine<cr>", desc = "Jump to line" },
    ["jl"] = {
      function()
        if vim.bo.filetype ~= "neo-tree" then vim.cmd "HopLine" end
      end,
      desc = "Jump to line",
    },
    ["<A-Up>"] = { "<cmd>resize -10<cr>", desc = "resize buffer" },
    ["<A-Down>"] = { "<cmd>resize +10<cr>", desc = "resize buffer" },
    ["<A-Left>"] = { "<cmd>vertical resize -2<cr>", desc = "resize buffer" },
    ["<A-Right>"] = { "<cmd>vertical resize +2<cr>", desc = "resize buffer" },
  },
  i = {
    ["<C-f>"] = { "<Right>", desc = "go line right" },
    ["<C-b>"] = { "<Left>", desc = "go line left" },
  },
  t = {
    ["<Esc>"] = { "<C-\\><C-n>", desc = "exit terminal" },
  },
  v = {
    ["J"] = { ":move '>+1<cr>gv-gv" },
    ["K"] = { ":move '<-2<cr>gv-gv" },
    ["p"] = { '"_dP' },
  },
}
