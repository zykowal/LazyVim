return {
  "folke/trouble.nvim",
  opts = {
    use_diagnostic_signs = true,
    auto_preview = false,
    focus = true,
    keys = {
      ["<ESC>"] = "close",
      ["q"] = "close",
    },
  },
  keys = {
    {
      "gL",
      "<Cmd>Trouble diagnostics toggle filter.buf=0 win.type=float<CR>",
      { noremap = true, silent = true, desc = "Trouble Diagnostics Float" },
    },
  },
}
