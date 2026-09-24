return {
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = {
      enabled = true,

      -- repeated key must happen within this time
      max_time = 1000,

      -- allow only a couple repeated presses
      max_count = 10,

      -- actually block bad movement instead of only warning
      restriction_mode = "block",

      -- show suggestions for better Vim motions
      hint = true,

      -- tell you when you're doing something inefficient
      notification = true,

      -- encourage keyboard-only movement
      disable_mouse = true,
    },
  },
}
