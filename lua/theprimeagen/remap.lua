
vim.g.mapleader = " "



vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- This remap allows you to paste over selected text without overwriting your clipboard.
-- BAG Note "x" stands for visual mode
-- BAG Or just paste using P  (capital p)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- BAG Allows you to copy to the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set(
--     "n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
-- )

-- -----------------------------------------------
--                  BAG KEYMAPS
-- -----------------------------------------------
-- vim.keymap.set("n", "<leader>viam", vim.cmd.Ex)
vim.keymap.set("n", "<leader>viam", ":tabe .<CR>")
vim.keymap.set("n", "<leader>tabe", ":tabe<CR>")
vim.keymap.set("n", "<leader>tele", ":Telescope<CR>")
vim.keymap.set("n", ",n", ":tabn<CR>")
vim.keymap.set("n", ",b", ":tabp<CR>")
-- BAG doesn't work, I wanted to remap "ma" to "mf" in netrw
-- vim.keymap.set("n", "ma", "mf")


-- BAG via Copilot
-- Copy current path to system clipboard
vim.keymap.set('n', '<leader>cppath', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  print('Copied path: ' .. path)
end, { desc = 'Copy current file path to clipboard' })

vim.keymap.set("n", "<leader>setpath", function()
  local dir = vim.fn.expand("%:p:h")
  vim.cmd("cd " .. dir)
  print("Changed directory to: " .. dir)
end, { desc = "Change cwd to current file's directory" })


vim.keymap.set('n', '<leader>fae', function()
  vim.fn.setreg('+', 'Brad Grissom\nField Application Engineer\nElatec Inc.')
  print('Copied FAE')
end, { desc = 'Copy custom string to system clipboard' })



-- In Ex, using "v" to open a file sets the window width correctly
vim.api.nvim_create_autocmd("WinNew", {
  callback = function()
    if vim.fn.winwidth(0) < 80 then
      vim.cmd("vertical resize 80")
    end
  end
})

-- Visual macro for searching in current file
-- :vmap T y:vim /<C-R>"/ <C-R>%<CR>:cw<CR>/<C-R>"<CR>
-- vim.keymap.set("n", "<leader>search", [[y:vim /<C-R>"/ <C-R>%<CR>:cw<CR>/<C-R>"<CR>]])
vim.keymap.set("n", "<leader>search", [[y:vim /<C-R>"/ <C-R>%<CR>:cw<CR>/<C-R>"<CR>]])

-- vim.keymap.set('v', '<leader>search', function()
--   -- Yank the visual selection
--   vim.cmd("normal! y")
--
--   -- Get the yanked text
--   local search_term = vim.fn.getreg('"')
--
--   -- Get the current file path
--   local current_file = vim.fn.expand("%:p")
--
--   -- Run vimgrep on the current file
--   vim.cmd("vimgrep /" .. search_term .. "/ " .. current_file)
--
--   -- Open quickfix window
--   vim.cmd("cw")
--
--   -- Start a search for the term
--   vim.cmd("/" .. search_term)
-- end, { desc = "Search visual selection in current file and open quickfix" })



vim.keymap.set("n", "<leader>note", ":tabe C:/Users/b.grissom/OneDrive - ELATEC Cloud Global/Documents/notes_new_laptop.md<CR>", { desc = "Open my notes" })
vim.keymap.set("n", "<leader>nvim", ":tabe C:/Users/b.grissom/AppData/Local/nvim/lua/theprimeagen/lazy/<CR>", { desc = "Open neovim config dir" })
-- -----------------------------------------------
--              end BAG KEYMAPS
-- -----------------------------------------------


-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- BAG Orig:
--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)

