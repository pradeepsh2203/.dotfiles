-- To go to the Directory listing use <space> with p and v
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i","jk","<Esc>")

vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")


-- Make Y behave like C and D
vim.keymap.set("n","Y","y$")

-- Select all 
vim.keymap.set("n","==","gg<S-v>G")


-- Paste without overwriting the register
vim.keymap.set("x","p","\"_dP")

-- close buffer 
vim.keymap.set("n","<leader>q","<cmd>bd<CR>")

