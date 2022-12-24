local mappings = {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["gD"] = { "<cmd>Glance definitions<CR>" },
    ["gR"] = { "<cmd>Glance references<CR>" },
    ["gY"] = { "<cmd>Glance type_definitions<CR>" },
    ["gM"] = { "<cmd>Glance implementations<CR>" },

    ["I"] = { "<cmd>ISwap<CR>" },
    -- ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    -- ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    -- ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

return mappings
