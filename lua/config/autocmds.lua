-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Create an autocommand group for cursor centering
local cursorGrp = vim.api.nvim_create_augroup("CursorCenter", { clear = true })

-- Automatically center cursor after various movements
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
  group = cursorGrp,
  callback = function()
    local excluded_filetypes = { "minifiles", "codecompanion", "snacks_dashboard" } -- Add filetypes you want to exclude
    local current_filetype = vim.bo.filetype
    -- Only center if we're not in command or search mode
    if
      vim.fn.getcmdtype() == ""
      and vim.fn.mode() ~= "c"
      and vim.fn.mode() == "n"
      and not vim.tbl_contains(excluded_filetypes, current_filetype)
    then
      vim.cmd("norm! zz")
    end
  end,
})
