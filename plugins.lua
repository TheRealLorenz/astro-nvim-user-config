local plugins = {
  init = {

    ["petertriho/nvim-scrollbar"] = {
      config = function() require("scrollbar").setup() end,
    },

    -- Sorrounding things
    ["kylechui/nvim-surround"] = {
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function() require("nvim-surround").setup() end,
    },

    -- Discord rich presence
    ["andweeb/presence.nvim"] = {},

    -- Function signatures
    ["ray-x/lsp_signature.nvim"] = {
      event = "BufRead",
      config = function() require("lsp_signature").setup() end,
    },

    -- Better preview for goto
    ["DNLHC/glance.nvim"] = {
      config = function() require("glance").setup() end,
    },

    -- Swap items
    ["mizlan/iswap.nvim"] = {
      config = function() require("iswap").setup() end,
    },

    -- Colorscheme
    ["navarasu/onedark.nvim"] = {
      config = function() require("onedark").setup() end,
    },

    -- SchemaStore 'https://www.schemastore.org/json/'
    ["b0o/SchemaStore.nvim"] = {},
  },

  -- All other entries override the require("<key>").setup({...}) call for default plugins
  ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
  treesitter = { -- overrides `require("treesitter").setup(...)`
    -- ensure_installed = { "lua" },
  },
  -- use mason-lspconfig to configure LSP installations
  ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
    -- ensure_installed = { "sumneko_lua" },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
    -- ensure_installed = { "prettier", "stylua" },
  },
}

return plugins
