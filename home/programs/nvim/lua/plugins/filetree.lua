vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {}
    vim.keymap.set('n', 'T', function() vim.cmd(":Neotree toggle") end)
    vim.keymap.set('n', 't', function() vim.cmd(':Neotree') end)
  end,
}
