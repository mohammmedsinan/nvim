local opts= {noremap=true,silent=true}
local term_opts = {silent=true}
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'

vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'

-- =========Telescope ======================
vim.keymap.set("n", "<leader>ff", [[:Telescope find_files <CR>]])
vim.keymap.set("n", "<leader>fg", [[:Telescope git_files <CR>]])
vim.keymap.set("n", "<leader>fw", [[:Telescope live_grep <CR>]])
-- ========Nvim-Tree========================
vim.keymap.set("n", "<leader>tt", [[:NvimTreeToggle <CR>]])
--========ReMaps===============================
vim.keymap.set('n','<leader>e',vim.cmd.Ex);
vim.keymap.set('n','<A-s>s',":vsplit<cr>",opts);
--Navigation Between Windows
vim.keymap.set('n',"<C-Left>" , "<C-w>h",opts);
vim.keymap.set('n',"<C-Down>" , "<C-w>j",opts);
vim.keymap.set('n',"<C-Up>" , "<C-w>k",opts);
vim.keymap.set('n',"<C-Right>" , "<C-w>l",opts);
vim.keymap.set('n','<leader>E',":Lex 25 <cr>",opts);
--Resize the window
vim.keymap.set('n','<S-Up>',":resize -5<CR>",opts);
vim.keymap.set('n','<S-Down>',":resize +5<CR>",opts);
vim.keymap.set('n','<S-Left>',":vertical resize -5<CR>",opts);
vim.keymap.set('n','<S-Right>',":vertical resize +5<CR>",opts);
vim.keymap.set('i','qq',"<ESC>",opts);
--Move the Text (UP-Down)
vim.keymap.set("x", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<A-Left>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<A-Right>", ":m '>+1<CR>gv=gv", opts)
