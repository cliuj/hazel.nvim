local M = {}

function M.load(highlights)
  for group, config in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, config)
  end
end

return M
