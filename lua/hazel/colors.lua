local M = {}

M.variants = {
  light = {
    background = "light",
    palette = {
      -- Surfaces
      bg             = "#e6dcc0",  -- main background (Hazel parchment)
      bg_alt         = "#e3dbc6",  -- statusline, tabline, sidebars
      bg_dark        = "#d8cfb6",  -- subtle accents, indent guides
      cursorline     = "#e3dbc6",  -- current line highlight
      selection      = "#d8cba8",  -- visual selection
      search         = "#f0d680",  -- search match
      search_cur     = "#e6b850",  -- current search match
      float_bg       = "#e8e0cc",  -- floating windows
      float_border   = "#c4b89a",  -- floating window borders

      -- Text
      fg             = "#3d3326",  -- main text (balanced contrast)
      fg_dim         = "#5a4d3a",  -- secondary text, operators
      fg_subtle      = "#7a6a4d",  -- inactive text
      comment        = "#998667",  -- comments (balanced visibility)
      line_nr        = "#b8a986",  -- inactive line numbers
      line_nr_active = "#5a4d3a",  -- active line number

      -- Syntax accents
      red            = "#c4391f",  -- keywords, errors
      blue           = "#2389bd",  -- functions, info, numbers
      green          = "#5b9925",  -- strings, success
      teal           = "#1f9b8c",  -- types, escapes, hints
      orange         = "#c66a22",  -- warnings
      mauve          = "#7e3fc4",  -- constants, builtins
      yellow         = "#c98c12",  -- secondary warnings
      pink           = "#c43d7a",  -- regex, special chars

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
