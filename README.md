# hazel.nvim

A warm parchment (Neo)vim colorscheme with vibrant pastel accents.

Variants:
- `hazel-light` — light, parchment background

## Installation

> With [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "cliuj/hazel.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("hazel-light")
  end,
}
```

### Usage
###### vimscript
```vim
colorscheme hazel-light
```

###### lua
```lua
vim.cmd.colorscheme("hazel-light")

-- or

vim.cmd[[colorscheme hazel-light]]
```
