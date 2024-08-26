return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

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
        "jdtls",
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
        "java",
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
    "lervag/vimtex",
    init = function()
      -- put vim.g.vimtex_* settings here
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_syntax_enabled = 0
    end,
    ft = { "tex" },
  },

  -- {
  --   "kylechui/nvim-surround",
  -- },

  -- {
  --   "norcalli/nvim-colorizer.lua",
  --   config = function()
  --     require("colorizer").setup {
  --       "html",
  --       "css",
  --       "scss",
  --       "javascript",
  --       "svelte",
  --     }
  --   end,
  -- },
  --
  -- {
  --   "github/copilot.vim",
  --   lazy = false,
  --   config = function() -- Mapping tab is already used by NvChad
  --     -- The mapping is set to other key, see custom/lua/mappings
  --     -- or run <leader>ch to see copilot mapping section
  --   end,
  -- },

  -- autodetect file indent prefs
  -- {
  --   "tpope/vim-sleuth",
  --   config = function()
  --     vim.g.sleuth_automatic = 1
  --   end,
  -- },

  {
    "xiyaowong/transparent.nvim",
  },

  {
    "evanleck/vim-svelte",
    lazy = true,
  },
}
