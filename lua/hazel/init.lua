local colors = require("hazel.colors")
local theme = require("hazel.theme")
local util = require("hazel.util")

local M = {}

function M.load(variant)
  variant = variant or "bright"
  local v = colors.get(variant)
  if not v then
    error("hazel: unknown variant '" .. variant .. "'")
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background = v.background
  vim.o.termguicolors = true
  vim.g.colors_name = "hazel-" .. variant

  util.load(theme.build(v.palette))
end

return M
