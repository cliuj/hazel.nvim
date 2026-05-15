local M = {}

-- Build the highlight table for a given palette.
--
-- For reference on the legacy highlight groups, see:
-- https://neovim.io/doc/user/syntax.html#highlight-groups
function M.build(palette)
  local p = palette

  return {
    -- =========================================================
    -- Editor UI
    -- =========================================================
    Normal        = { fg = p.fg, bg = p.bg },
    NormalNC      = { fg = p.fg, bg = p.bg },
    NormalFloat   = { fg = p.fg, bg = p.float_bg },
    FloatBorder   = { fg = p.float_border, bg = p.float_bg },
    FloatTitle    = { fg = p.fg, bg = p.float_bg, bold = true },

    Cursor        = { fg = p.bg, bg = p.fg },
    CursorLine    = { bg = p.cursorline },
    CursorColumn  = { bg = p.cursorline },
    CursorLineNr  = { fg = p.line_nr_active, bold = true },
    LineNr        = { fg = p.line_nr },
    SignColumn    = { bg = p.bg },
    ColorColumn   = { bg = p.bg_alt },

    VertSplit     = { fg = p.float_border },
    WinSeparator  = { fg = p.float_border },

    StatusLine    = { fg = p.fg, bg = p.bg_alt },
    StatusLineNC  = { fg = p.fg_subtle, bg = p.bg_alt },
    TabLine       = { fg = p.fg_subtle, bg = p.bg_alt },
    TabLineSel    = { fg = p.fg, bg = p.bg, bold = true },
    TabLineFill   = { bg = p.bg_alt },
    WinBar        = { fg = p.fg_dim, bg = p.bg, bold = true },
    WinBarNC      = { fg = p.fg_subtle, bg = p.bg },

    Pmenu         = { fg = p.fg, bg = p.bg_alt },
    PmenuSel      = { fg = p.fg, bg = p.selection, bold = true },
    PmenuSbar     = { bg = p.bg_alt },
    PmenuThumb    = { bg = p.float_border },
    PmenuKind     = { fg = p.mauve, bg = p.bg_alt },
    PmenuKindSel  = { fg = p.mauve, bg = p.selection, bold = true },

    Search        = { fg = p.fg, bg = p.search },
    IncSearch     = { fg = p.fg, bg = p.search_cur, bold = true },
    CurSearch     = { fg = p.fg, bg = p.search_cur, bold = true },
    Substitute    = { fg = p.fg, bg = p.search_cur },

    Visual        = { bg = p.selection },
    VisualNOS     = { bg = p.selection },
    MatchParen    = { fg = p.red, bold = true, underline = true },

    Folded        = { fg = p.fg_dim, bg = p.bg_alt },
    FoldColumn    = { fg = p.line_nr, bg = p.bg },

    NonText       = { fg = p.line_nr },
    EndOfBuffer   = { fg = p.bg },
    Whitespace    = { fg = p.line_nr },
    SpecialKey    = { fg = p.fg_subtle },
    Conceal       = { fg = p.fg_subtle },

    Title         = { fg = p.blue, bold = true },
    Directory     = { fg = p.blue, bold = true },
    Question      = { fg = p.green },
    ModeMsg       = { fg = p.fg_dim, bold = true },
    MoreMsg       = { fg = p.green },
    MsgArea       = { fg = p.fg },
    MsgSeparator  = { fg = p.float_border },
    WarningMsg    = { fg = p.amber },
    ErrorMsg      = { fg = p.red, bold = true },

    SpellBad      = { sp = p.red,   undercurl = true },
    SpellCap      = { sp = p.blue,  undercurl = true },
    SpellLocal    = { sp = p.teal,  undercurl = true },
    SpellRare     = { sp = p.mauve, undercurl = true },

    QuickFixLine  = { bg = p.cursorline },

    -- =========================================================
    -- Legacy syntax groups
    -- =========================================================
    Comment        = { fg = p.comment, italic = true },

    Constant       = { fg = p.mauve },
    String         = { fg = p.green },
    Character      = { fg = p.green },
    Number         = { fg = p.orange },
    Float          = { fg = p.orange },
    Boolean        = { fg = p.mauve, bold = true },

    Identifier     = { fg = p.fg },
    Function       = { fg = p.blue },

    Statement      = { fg = p.red },
    Conditional    = { fg = p.red },
    Repeat         = { fg = p.red },
    Label          = { fg = p.red },
    Operator       = { fg = p.fg_dim },
    Keyword        = { fg = p.red },
    Exception      = { fg = p.red, bold = true },

    PreProc        = { fg = p.mauve },
    Include        = { fg = p.mauve },
    Define         = { fg = p.mauve },
    Macro          = { fg = p.mauve },
    PreCondit      = { fg = p.mauve },

    Type           = { fg = p.amber },
    StorageClass   = { fg = p.amber },
    Structure      = { fg = p.amber },
    Typedef        = { fg = p.amber },

    Special        = { fg = p.teal },
    SpecialChar    = { fg = p.teal },
    Tag            = { fg = p.blue },
    Delimiter      = { fg = p.fg_dim },
    SpecialComment = { fg = p.comment, bold = true, italic = true },
    Debug          = { fg = p.red },

    Underlined     = { underline = true },
    Ignore         = { fg = p.fg_subtle },
    Error          = { fg = p.red, bold = true },
    Todo           = { fg = p.amber, bold = true },

    -- =========================================================
    -- Treesitter
    -- =========================================================
    ["@comment"]                 = { link = "Comment" },
    ["@comment.documentation"]   = { fg = p.comment, italic = true, bold = true },
    ["@comment.todo"]            = { fg = p.bg, bg = p.amber, bold = true },
    ["@comment.warning"]         = { fg = p.bg, bg = p.amber, bold = true },
    ["@comment.error"]           = { fg = p.bg, bg = p.red,   bold = true },
    ["@comment.note"]            = { fg = p.bg, bg = p.blue,  bold = true },

    ["@variable"]                = { fg = p.fg },
    ["@variable.builtin"]        = { fg = p.mauve, italic = true },
    ["@variable.parameter"]      = { fg = p.fg, italic = true },
    ["@variable.member"]         = { fg = p.fg_dim },

    ["@constant"]                = { fg = p.mauve },
    ["@constant.builtin"]        = { fg = p.mauve, bold = true },
    ["@constant.macro"]          = { fg = p.mauve },

    ["@module"]                  = { fg = p.amber },
    ["@module.builtin"]          = { fg = p.amber, italic = true },
    ["@label"]                   = { fg = p.red },

    ["@string"]                  = { fg = p.green },
    ["@string.documentation"]    = { fg = p.comment, italic = true },
    ["@string.regexp"]           = { fg = p.pink },
    ["@string.escape"]           = { fg = p.teal, bold = true },
    ["@string.special"]          = { fg = p.teal },
    ["@string.special.symbol"]   = { fg = p.mauve },
    ["@string.special.url"]      = { fg = p.blue, underline = true },

    ["@character"]               = { fg = p.green },
    ["@character.special"]       = { fg = p.teal },

    ["@boolean"]                 = { fg = p.mauve, bold = true },
    ["@number"]                  = { fg = p.orange },
    ["@number.float"]            = { fg = p.orange },

    ["@type"]                    = { fg = p.amber },
    ["@type.builtin"]            = { fg = p.amber, italic = true },
    ["@type.definition"]         = { fg = p.amber, bold = true },

    ["@attribute"]               = { fg = p.mauve },
    ["@property"]                = { fg = p.fg_dim },

    ["@function"]                = { fg = p.blue },
    ["@function.builtin"]        = { fg = p.blue, italic = true },
    ["@function.call"]           = { fg = p.blue },
    ["@function.macro"]          = { fg = p.mauve },
    ["@function.method"]         = { fg = p.blue },
    ["@function.method.call"]    = { fg = p.blue },

    ["@constructor"]             = { fg = p.amber },
    ["@operator"]                = { fg = p.fg_dim },

    ["@keyword"]                 = { fg = p.red },
    ["@keyword.coroutine"]       = { fg = p.red },
    ["@keyword.function"]        = { fg = p.red },
    ["@keyword.operator"]        = { fg = p.red },
    ["@keyword.import"]          = { fg = p.mauve },
    ["@keyword.type"]            = { fg = p.red },
    ["@keyword.modifier"]        = { fg = p.red },
    ["@keyword.repeat"]          = { fg = p.red },
    ["@keyword.return"]          = { fg = p.red, bold = true },
    ["@keyword.debug"]           = { fg = p.red, bold = true },
    ["@keyword.exception"]       = { fg = p.red, bold = true },
    ["@keyword.conditional"]     = { fg = p.red },
    ["@keyword.directive"]       = { fg = p.mauve },

    ["@punctuation.delimiter"]   = { fg = p.fg_dim },
    ["@punctuation.bracket"]     = { fg = p.fg_dim },
    ["@punctuation.special"]     = { fg = p.teal },

    ["@tag"]                     = { fg = p.red },
    ["@tag.attribute"]           = { fg = p.amber, italic = true },
    ["@tag.delimiter"]           = { fg = p.fg_dim },

    ["@markup.strong"]           = { bold = true },
    ["@markup.italic"]           = { italic = true },
    ["@markup.strikethrough"]    = { strikethrough = true },
    ["@markup.underline"]        = { underline = true },
    ["@markup.heading"]          = { fg = p.blue, bold = true },
    ["@markup.quote"]            = { fg = p.fg_dim, italic = true },
    ["@markup.math"]             = { fg = p.teal },
    ["@markup.link"]             = { fg = p.blue, underline = true },
    ["@markup.link.label"]       = { fg = p.mauve },
    ["@markup.link.url"]         = { fg = p.blue, underline = true },
    ["@markup.raw"]              = { fg = p.green },
    ["@markup.raw.block"]        = { fg = p.fg },
    ["@markup.list"]             = { fg = p.red },
    ["@markup.list.checked"]     = { fg = p.green },
    ["@markup.list.unchecked"]   = { fg = p.fg_dim },

    ["@diff.plus"]               = { fg = p.green, bg = p.diff_add },
    ["@diff.minus"]              = { fg = p.red,   bg = p.diff_delete },
    ["@diff.delta"]              = { fg = p.amber, bg = p.diff_change },

    -- =========================================================
    -- LSP semantic tokens
    -- =========================================================
    ["@lsp.type.namespace"]                  = { link = "@module" },
    ["@lsp.type.type"]                       = { link = "@type" },
    ["@lsp.type.class"]                      = { link = "@type" },
    ["@lsp.type.enum"]                       = { link = "@type" },
    ["@lsp.type.interface"]                  = { link = "@type" },
    ["@lsp.type.struct"]                     = { link = "@type" },
    ["@lsp.type.parameter"]                  = { link = "@variable.parameter" },
    ["@lsp.type.variable"]                   = { link = "@variable" },
    ["@lsp.type.property"]                   = { link = "@property" },
    ["@lsp.type.enumMember"]                 = { link = "@constant" },
    ["@lsp.type.function"]                   = { link = "@function" },
    ["@lsp.type.method"]                     = { link = "@function.method" },
    ["@lsp.type.macro"]                      = { link = "@function.macro" },
    ["@lsp.type.decorator"]                  = { link = "@attribute" },
    ["@lsp.type.keyword"]                    = { link = "@keyword" },
    ["@lsp.type.comment"]                    = { link = "@comment" },
    ["@lsp.type.string"]                     = { link = "@string" },
    ["@lsp.type.number"]                     = { link = "@number" },
    ["@lsp.type.operator"]                   = { link = "@operator" },
    ["@lsp.typemod.variable.readonly"]       = { link = "@constant" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.type.defaultLibrary"]     = { link = "@type.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },

    -- =========================================================
    -- Diagnostics
    -- =========================================================
    DiagnosticError            = { fg = p.red },
    DiagnosticWarn             = { fg = p.amber },
    DiagnosticInfo             = { fg = p.blue },
    DiagnosticHint             = { fg = p.teal },
    DiagnosticOk               = { fg = p.green },

    DiagnosticVirtualTextError = { fg = p.red,   italic = true },
    DiagnosticVirtualTextWarn  = { fg = p.amber, italic = true },
    DiagnosticVirtualTextInfo  = { fg = p.blue,  italic = true },
    DiagnosticVirtualTextHint  = { fg = p.teal,  italic = true },

    DiagnosticUnderlineError   = { sp = p.red,   undercurl = true },
    DiagnosticUnderlineWarn    = { sp = p.amber, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = p.blue,  undercurl = true },
    DiagnosticUnderlineHint    = { sp = p.teal,  undercurl = true },

    DiagnosticSignError        = { fg = p.red },
    DiagnosticSignWarn         = { fg = p.amber },
    DiagnosticSignInfo         = { fg = p.blue },
    DiagnosticSignHint         = { fg = p.teal },

    -- =========================================================
    -- Diff
    -- =========================================================
    DiffAdd                    = { bg = p.diff_add },
    DiffChange                 = { bg = p.diff_change },
    DiffDelete                 = { fg = p.red, bg = p.diff_delete },
    DiffText                   = { bg = p.diff_text, bold = true },

    -- =========================================================
    -- Git signs
    -- =========================================================
    GitSignsAdd                = { fg = p.green },
    GitSignsChange             = { fg = p.amber },
    GitSignsDelete             = { fg = p.red },
    GitSignsAddNr              = { fg = p.green },
    GitSignsChangeNr           = { fg = p.amber },
    GitSignsDeleteNr           = { fg = p.red },

    -- =========================================================
    -- Telescope
    -- =========================================================
    TelescopeNormal            = { fg = p.fg, bg = p.float_bg },
    TelescopeBorder            = { fg = p.float_border, bg = p.float_bg },
    TelescopePromptNormal      = { fg = p.fg, bg = p.bg_alt },
    TelescopePromptBorder      = { fg = p.bg_alt, bg = p.bg_alt },
    TelescopePromptTitle       = { fg = p.bg, bg = p.blue,  bold = true },
    TelescopePreviewTitle      = { fg = p.bg, bg = p.green, bold = true },
    TelescopeResultsTitle      = { fg = p.float_bg, bg = p.float_bg },
    TelescopeSelection         = { bg = p.selection, bold = true },
    TelescopeMatching          = { fg = p.amber, bold = true },

    -- =========================================================
    -- NvimTree / neo-tree
    -- =========================================================
    NvimTreeNormal             = { fg = p.fg, bg = p.bg_alt },
    NvimTreeFolderName         = { fg = p.blue },
    NvimTreeOpenedFolderName   = { fg = p.blue, bold = true },
    NvimTreeFolderIcon         = { fg = p.amber },
    NvimTreeRootFolder         = { fg = p.mauve, bold = true },
    NvimTreeGitDirty           = { fg = p.amber },
    NvimTreeGitNew             = { fg = p.green },
    NvimTreeGitDeleted         = { fg = p.red },
    NvimTreeSpecialFile        = { fg = p.mauve, underline = true },

    -- =========================================================
    -- Indent guides
    -- =========================================================
    IndentBlanklineChar        = { fg = p.bg_dark },
    IndentBlanklineContextChar = { fg = p.line_nr_active },
    IblIndent                  = { fg = p.bg_dark },
    IblScope                   = { fg = p.line_nr_active },
  }
end

return M
