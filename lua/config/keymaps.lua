-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.del("n", "<leader>wd", { desc = "windows" })
keymap.del("n", "<leader>wm", { desc = "windows" })
keymap.del("n", "<leader>dpp")
keymap.del("n", "<leader>dph")
keymap.del("n", "<leader>dps")

keymap.set("n", "<leader>w", "<Cmd>w<CR>", { noremap = true, silent = true, desc = "Save Current Buffer" })
keymap.set("n", "<leader>d", "<Cmd>bd<CR>", { noremap = true, silent = true, desc = "Save Current Buffer" })
keymap.set("n", "<S-h>", "^", { noremap = true, silent = true })
keymap.set("n", "<S-l>", "$", { noremap = true, silent = true })
keymap.set("v", "<S-h>", "^", { noremap = true, silent = true })
keymap.set("v", "<S-l>", "$", { noremap = true, silent = true })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { noremap = true, desc = "Line Diagnostics" })
vim.keymap.set("n", "<leader>f/", "<leader>sb", { remap = true, desc = "Buffer Lines" })

keymap.set("n", "<leader>fw", LazyVim.pick("live_grep"), { noremap = true, silent = true, desc = "Grep (Root Dir)" })
keymap.set(
  "n",
  "<leader>fW",
  LazyVim.pick("live_grep", { root = false }),
  { noremap = true, silent = true, desc = "Grep (cwd)" }
)
