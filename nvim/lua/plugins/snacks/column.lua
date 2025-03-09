return {
  "snacks.nvim",
  opts = {
    statuscolumn = {
      left = { "mark", "sign" }, -- priority of signs on the left (high to low)
      right = { "git" }, -- priority of signs on the right (high to low)
      folds = {
        open = false, -- show open fold icons
        git_hl = true, -- use Git Signs hl for fold icons
      },
      refresh = 50, -- refresh at most every 50ms
    },
  },
}
