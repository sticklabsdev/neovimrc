
-- -----------------------------------------------
--                  BAG KEYMAPS
-- -----------------------------------------------
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"
-- BAG Orig:  vim.opt.guicursor = ""
vim.opt.ignorecase = true  -- Case-insensitive search...
vim.opt.smartcase = true   -- ...unless the search includes uppercase letters

vim.opt.winwidth = 30        -- Minimum width for a window
vim.opt.winminwidth = 10     -- Minimum width allowed for resizing
-- -----------------------------------------------
--              end BAG KEYMAPS
-- -----------------------------------------------


vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

