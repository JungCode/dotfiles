return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
    ft = { "markdown" },
    opts = {
      -- Rounded borders read better than the default ascii on wide tables.
      pipe_table = {
        preset = "round",
        alignment_indicator = "┅",
      },
      -- Reveal the raw syntax on the cursor line so the buffer stays editable.
      anti_conceal = { enabled = true },
      -- Drop the sign column and background blocks — less visual noise on
      -- long, table-heavy documents.
      heading = {
        sign = false,
        width = "block",
        left_pad = 0,
        right_pad = 2,
      },
      code = {
        sign = false,
        width = "block",
        left_pad = 2,
        right_pad = 2,
      },
      bullet = { icons = { "●", "○", "◆", "◇" } },
    },
  },

  -- Browser preview. Wide tables always wrap in a terminal; this renders them
  -- properly and scroll-syncs with the buffer.
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview (browser)" },
    },
  },
}
