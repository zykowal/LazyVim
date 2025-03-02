return {
  "supermaven-inc/supermaven-nvim",
  event = "VeryLazy",
  cmd = {
    "SupermavenUseFree",
    "SupermavenUsePro",
  },
  opts = {
    keymaps = {
      accept_suggestion = "<C-l>",
      accept_word = nil,
      clear_suggestion = nil,
    },
    log_level = "warn",
    disable_inline_completion = false,
    disable_keymaps = false,
    ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
  },
}
