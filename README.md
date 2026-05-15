# hazel.nvim

A warm parchment (Neo)vim colorscheme with vibrant pastel accents.

Variants:
- `hazel-bright` — light, parchment background

## Installation

> With [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "cliuj/hazel.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("hazel-bright")
  end,
}
```

### Usage
###### vimscript
```vim
colorscheme hazel-bright
```

###### lua
```lua
vim.cmd.colorscheme("hazel-bright")

-- or

vim.cmd[[colorscheme hazel-bright]]
```
