local M = {}

M.variants = {
  light = {
    background = "light",
    palette = {
      -- Surfaces
      bg             = "#e8dfc5",  -- main background (Hazel parchment)
      bg_alt         = "#e3dbc6",  -- statusline, tabline, sidebars
      bg_dark        = "#d8cfb6",  -- subtle accents, indent guides
      cursorline     = "#e3dbc6",  -- current line highlight
      selection      = "#d8cba8",  -- visual selection
      search         = "#f0d680",  -- search match
      search_cur     = "#e6b850",  -- current search match
      float_bg       = "#e8e0cc",  -- floating windows
      float_border   = "#c4b89a",  -- floating window borders

      -- Text
      fg             = "#241c10",  -- main text (darker for max contrast)
      fg_dim         = "#5a4d3a",  -- secondary text, operators
      fg_subtle      = "#7a6a4d",  -- inactive text
      comment        = "#877452",  -- comments
      line_nr        = "#b8a986",  -- inactive line numbers
      line_nr_active = "#5a4d3a",  -- active line number

      -- Syntax accents (Hazel Max — deep, saturated, max pop against parchment)
      red            = "#dc2626",  -- keywords, errors
      blue           = "#0891c9",  -- functions, info, numbers
      green          = "#2a7808",  -- strings, success
      teal           = "#0d9488",  -- types
      orange         = "#d96617",  -- warnings
      mauve          = "#6810c0",  -- constants, builtins
      teal           = "#086862",  -- escapes, hints
      yellow         = "#a8830a",  -- secondary warnings
      pink           = "#a8106a",  -- regex, special chars

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
