local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- PWSH TOGGLE --
keymap("n", [[<c-\>]], ":lua _H_PWSH_TOGGLE()<CR>", opts)
keymap("i", [[<c-\>]], "<C-c>:lua _H_PWSH_TOGGLE()<CR>", opts)

-- Integrated Terminal --
keymap("n", [[kj]], ":CocCommand powershell.toggleTerminal<CR>", opts)
keymap("i", [[kj]], "<C-c>:CocCommand powershell.toggleTerminal<CR>", opts)

keymap("n", [[rt]], ":CocCommand powershell.execute<CR>", opts)
keymap("i", [[rt]], "<C-c>:CocCommand powershell.execute<CR>", opts)
--keymap("v", [[rt]], "rCocCommand powershell.evaluateSelection<CR>", opts)
-- Normal --
-- Better window navigation
keymap("n", "<A-LEFT>", "<C-w>h", opts)
keymap("n", "<A-DOWN>", "<C-w>j", opts)
keymap("n", "<A-UP>", "<C-w>k", opts)
keymap("n", "<A-RIGHT>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-RIGHT>", ":bnext<CR>", opts)
keymap("n", "<S-LEFT>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "qe", "<ESC>", opts)
keymap("i", "qwe", "<ESC>", opts)
keymap("n", "qe", "i", opts)
keymap("n", "qwe", "i", opts)

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
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

