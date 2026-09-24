return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      terminal_colors = true,
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true,
      contrast = "hard", -- hard, soft or empty
      palette_overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        transparent = {
          -- Enable transparent background.
          bg = true,
          -- Enable transparent background for floating windows.
          float = true,
        },
        bright_border = true,
        visual = {
          -- Bold font in visual selection.
          bold = true,
          -- Bold visual selection number.
          bold_number = true,
          -- Available styles: 'dark', 'light'.
          theme = "light",
          -- Blending the visual selection bg with the buffer bg.
          blend = 0.85,
        },
        telescope = {
          -- Available styles: `classic`, `flat`.
          style = "classic",
        },
      })
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
        solid = true, -- use solid styling for floating windows, see |winborder|
      },
      integrations = {
        blink_cmp = true,
        gitsigns = true,
        mason = true,
        native_lsp = { enabled = true },
        neotree = true,
        telescope = { enabled = true },
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
    priority = 1000,
    opts = {
      variant = "main",
      dark_variant = "main",
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = require("config.theme").colorscheme(),
    },
  },
}
