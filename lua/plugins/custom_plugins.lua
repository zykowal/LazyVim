-- Only change configurations for LazyVim plugins
return {
  -- Use catppuccin as colorscheme
  {
    "catppuccin/nvim",
    priority = 1000,
    opts = {
      transparent_background = true,
      term_colors = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- Disable tokyonight
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  -- Disable bufferline
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "folke/which-key.nvim",
    -- Modify which-key mappings
    opts = {
      spec = {
        { "<leader>w", desc = "Save Current Buffer" },
        { "<leader>d", desc = "Close Current Buffer" },
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "<leader>cR", function()
            vim.cmd.RustLsp("codeAction")
          end, { desc = "Code Action", buffer = bufnr })
          -- Delete the dap mappings
        end,
      },
    },
  },
}
