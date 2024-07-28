return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "svelte-language-server",
        "gopls",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "javascript",
        "html",
        "css",
        "python",
        "svelte",
        "go",
      },
    },
  },

  -- markdown preview
  -- install with yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        "html",
        "css",
        "scss",
        "javascript",
        "svelte",
      }
    end,
  },

  -- autodetect file indent prefs
  {
    "tpope/vim-sleuth",
    config = function()
      vim.g.sleuth_automatic = 1
    end,
  },

  {
    "evanleck/vim-svelte",
    lazy = true,
  },

  {
    "github/copilot.vim",
    config = function() end,
  },
}
