return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enable = true },
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
      dashboard = {
        enable = true,
        preset = {
          header = [[
 ██████  ██    ██  ██████  ███████ ██   ██ ██ ██    ██ ██    ██  █████  ███    ██
██       ██    ██ ██    ██    ███  ██   ██ ██  ██  ██  ██    ██ ██   ██ ████   ██
██   ███ ██    ██ ██    ██   ███   ███████ ██   ████   ██    ██ ███████ ██ ██  ██
██    ██ ██    ██ ██    ██  ███    ██   ██ ██    ██    ██    ██ ██   ██ ██  ██ ██
 ██████   ██████   ██████  ███████ ██   ██ ██    ██     ██████  ██   ██ ██   ████
          ]],
        },
        sections = {
          { section = "header" },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
          {
            section = "terminal",
            cmd = "ascii-image-converter ~/.config/Bunny.png -C -c",
            random = 10,
            pane = 2,
            indent = 4,
            height = 25,
          },
        },
      },
    },
  },
}
