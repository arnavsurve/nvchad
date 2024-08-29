require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

-- o.tabstop = 4
-- o.shiftwidth = 4
-- o.expandtab = true -- expand tab to spaces
-- o.autoindent = true -- copy indent from current line when starting new one

local autocmd = vim.api.nvim_create_autocmd

-- Function to set indentation
local function set_indentation(spaces)
  vim.bo.expandtab = true
  vim.bo.shiftwidth = spaces
  vim.bo.tabstop = spaces
  vim.bo.softtabstop = spaces
end

-- Set default indentation to 4 spaces
set_indentation(4)

-- Set file type specific indentation
autocmd("FileType", {
  pattern = { "python", "c", "cpp", "go" },
  callback = function()
    set_indentation(4)
  end,
})

-- Set 2-space indentation for specific file types
autocmd("FileType", {
  pattern = { "lua", "javascript", "typescript", "html", "css", "yaml", "json", "java" },
  callback = function()
    set_indentation(2)
  end,
})
