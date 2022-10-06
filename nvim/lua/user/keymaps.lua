local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local term_opts = { silent = true }

-- Allow jk to be used instead of Esc to switch to NORMAL mode
keymap('i', 'jk', '<esc>', opts)

-- Save files with Ctrl+S
keymap('n', '<c-s>', ':w<CR>', opts)

-- Map ; to : to skip pressing Shift every time
keymap('n', ';', ':', { noremap = true })

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>e", ":Lex 20<cr>", opts)

-- Disable insert mode when adding new line
keymap("n", "o", ":a<CR><CR>.<CR>", opts)
keymap("n", "<S-o>", "k:a<CR><CR>.<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation --
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Use `X` to cut to clipboard
keymap('n', 'x', '"+x', opts)
keymap('v', 'x', '"+x', opts)

-- Prevent `d` and `x` from cutting text instead of deleting
keymap('n', 'd', '"_d', opts)
keymap('v', 'd', '"_d', opts)
keymap('n', 'x', '"_x', opts)
keymap('v', 'x', '"_x', opts)

