local M = {}

M.variants = {
  bright = {
    background = "light",
    palette = {
      -- Surfaces
      bg             = "#eee7d6",  -- main background (Hazel parchment)
      bg_alt         = "#e3dbc6",  -- statusline, tabline, sidebars
      bg_dark        = "#d8cfb6",  -- subtle accents, indent guides
      cursorline     = "#e6dec7",  -- current line highlight
      selection      = "#d8cba8",  -- visual selection
      search         = "#f0d680",  -- search match
      search_cur     = "#e6b850",  -- current search match
      float_bg       = "#e8e0cc",  -- floating windows
      float_border   = "#c4b89a",  -- floating window borders

      -- Text
      fg             = "#3d3326",  -- main text
      fg_dim         = "#5a4d3a",  -- secondary text, operators
      fg_subtle      = "#7a6a4d",  -- inactive text
      comment        = "#a89878",  -- comments
      line_nr        = "#b8a986",  -- inactive line numbers
      line_nr_active = "#5a4d3a",  -- active line number

      -- Syntax accents (Catppuccin-Latte-ish, warmed for parchment)
      red            = "#c84538",  -- keywords, errors
      blue           = "#3a73b8",  -- functions, info
      green          = "#6b9c33",  -- strings, success
      amber          = "#d4901c",  -- types, warnings
      orange         = "#c97f1c",  -- numbers
      mauve          = "#a44fc4",  -- constants, builtins
      teal           = "#2a8a82",  -- escapes, hints
      yellow         = "#c4a02c",  -- secondary warnings
      pink           = "#c84588",  -- regex, special chars

      -- Diff (soft tints of accents on parchment)
      diff_add       = "#d6e5b8",
      diff_change    = "#e0d9b3",
      diff_delete    = "#e8c7b8",
      diff_text      = "#c8d9a0",

      none           = "NONE",
    },
  },
}

function M.get(variant)
  return M.variants[variant]
end

return M
