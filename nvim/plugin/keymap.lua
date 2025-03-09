local set = vim.keymap.set

set("n", "<M-j>", function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! ]c]]
  else
    vim.cmd [[m .+1<CR>==]]
  end
end)

set("n", "<M-k>", function()
  if vim.opt.diff:get() then
    vim.cmd [[normal! [c]]
  else
    vim.cmd [[m .-2<CR>==]]
  end
end)

set("x", "<leader>p", [["_dP]])
set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "N", "Nzzzv")
set("n", "n", "nzzzv")
set("n", "<leader>w", ":wa<cr>")
set("n", "<leader>q", ":wqa<cr>")
set("n", ";w", ":w<cr>")
set("n", ";q", ":q<cr>")
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- set('n', '<left>', 'gT', {desc = 'Move to the tab left'})
-- set('n', '<right>', 'gt', {desc = 'Move to the tab right'})

-- Make U opposite to u.
set("n", "U", "<C-r>", { desc = "Redo" })

-- Indent while remaining in visual mode
set("v", "<", "<gv")
set("v", ">", ">gv")

-- snacks keymaps
set("n", "<leader>e", ":lua Snacks.picker.explorer()<CR>", { desc = "Move to the tab right" })
set("n", "<leader>g", "<cmd>lua Snacks.lazygit()<cr>", {})
set("n", "<leader>tt", "<cmd>lua Snacks.terminal.toggle()<CR>")

vim.keymap.set("n", "<leader>vd", function()
  vim.diagnostic.open_float()
end)

function ToggleDiagnostics()
  local current_virtual_text = vim.diagnostic.config().virtual_text

  if current_virtual_text then
    vim.diagnostic.config {
      virtual_text = false,
    }
  else
    vim.diagnostic.config {
      virtual_text = true,
    }
  end
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>td",
  ":lua ToggleDiagnostics()<CR>",
  { noremap = true, silent = true }
)

vim.keymap.set("n", "<C-t>", "<C-t>:bdelete#<CR>", { noremap = true })
