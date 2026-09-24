return {
  dir = "/Users/jung/Projects/open-sources/commitgen.nvim",
  name = "commitgen.nvim",
  cmd = { "CommitGen", "CommitGenShort", "CommitGenAndCommit" },
  keys = {
    { "<leader>gm", "<cmd>CommitGen<cr>", desc = "Generate commit message" },
    { "<leader>gM", "<cmd>CommitGenAndCommit<cr>", desc = "Generate + commit" },
  },
  opts = {},
}
