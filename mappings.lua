-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["d"] = {'"_d', desc = "Delete not to register"},
    ["D"] = {'"_D', desc = "Delete not to register"},
    ["<leader>d"] = {'"+d', desc = "Cut in the register"},
    ["<leader>D"] = {'"+D', desc = "Cut in the register"},
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<A-j>"] = {":m .+1<CR>==", desc = "move code 1 line down"},
    ["<A-k>"] = {":m .-2<CR>==", desc="move code 1 line up"},
    
  },
  v = {
    ["d"] = {'"_d', desc = "Delete not to register"},
    ["<leader>d"] = {'"+d', desc = "Cut in the register"},
    ["<A-j>"] = {":m '>+1<CR>gv=gv", desc = "move code 1 line down"},
    ["<A-k>"] = {":m '<-2<CR>gv=gv", desc="move code 1 line up"},
  },
  i = {

    ["<A-j>"] = {"<Esc>:m .+1<CR>==gi", desc = "move code 1 line down"},
    ["<A-k>"] = {"<Esc>:m .-2<CR>==gi", desc="move code 1 line up"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
