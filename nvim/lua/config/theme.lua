-- Reads ~/dotfiles/theme/current (managed by theme/switch.sh) and maps it
-- to the matching nvim colorscheme. Falls back to tokyonight if the file
-- is missing or unrecognized, so a fresh machine without the theme dir
-- still boots with a valid colorscheme.
local M = {}

local MAP = {
  current = "tokyonight",
  -- "tokyo" is an older name for `current` that some machines still have
  -- written into theme/current; keep it mapped so they don't silently
  -- fall through to the default branch.
  tokyo = "tokyonight",
  nord = "nordic",
  solarized = "solarized-osaka",
  catppuccin = "catppuccin",
  rosepine = "rose-pine",
}

function M.colorscheme()
  local path = vim.fn.expand("~/dotfiles/theme/current")
  local ok, lines = pcall(vim.fn.readfile, path)
  local name = ok and lines[1] and vim.trim(lines[1]) or "current"
  return MAP[name] or "tokyonight"
end

return M
