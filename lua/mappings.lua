require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>e", "<cmd> NvimTreeToggle <cr>")
-- vim.api.nvim_del_keymap("n", "cs")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
