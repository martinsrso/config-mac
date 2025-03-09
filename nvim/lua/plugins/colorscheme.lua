return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  config = function(_, opts)
    local time = os.date "*t"
    if time.hour < 7 or time.hour >= 18 then
      vim.o.background = "dark"
      vim.cmd "colorscheme rose-pine"
    else
      vim.o.background = "light"
      vim.cmd "colorscheme rose-pine-dawn"
    end
    -- vim.o.background = "dark"
    -- vim.cmd [[colorscheme default]]
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
