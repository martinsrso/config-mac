local opt = vim.opt
vim.g.snacks_animate = false

----- Interesting Options -----

-- You have to turn this one on :)
opt.inccommand = "split"

-- Best search settings :)
opt.smartcase = true
opt.ignorecase = true
opt.guicursor = "i:block"

----- Personal Preferences -----
opt.number = true
opt.relativenumber = true

opt.showmode = false
opt.updatetime = 250
opt.timeoutlen = 300

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.linebreak = true
opt.wrap = true
opt.textwidth = 80

-- Don't have `o` add a comment
opt.formatoptions:remove "o"

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.breakindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.undofile = true

opt.lazyredraw = true

opt.colorcolumn = "100"

opt.cmdheight = 0
opt.laststatus = 3

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

opt.magic = true
opt.virtualedit = "block"
opt.clipboard = "unnamedplus"
