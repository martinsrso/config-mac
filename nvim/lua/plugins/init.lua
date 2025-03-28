return {
  -- Git related plugins
  { "tpope/vim-fugitive" },
  -- { "tpope/vim-rhubarb" },
  -- { "tpope/vim-repeat" },
  -- { "tpope/vim-sleuth" },
  -- { "inkarkat/vim-ReplaceWithRegister" },
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
}
