local opts = { noremap = true, silent = true }
-- local term_opts = {silent=true}
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'

vim.o.relativenumber = true

vim.o.signcolumn = 'yes'

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'
vim.o.cursorline = true
vim.o.number = true

-- ========== Diagnostic ===================
vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
vim.keymap.set('n', '<C-d>', function() vim.diagnostic.open_float() end, opts)

-- =========Telescope ======================
vim.keymap.set("n", "<leader>ff", [[:Telescope find_files <CR>]])
vim.keymap.set("n", "<leader>fg", [[:Telescope git_files <CR>]])
vim.keymap.set("n", "<leader>fw", [[:Telescope live_grep <CR>]])

-- ========Nvim-Tree========================
vim.keymap.set("n", "<leader>tt", [[:NvimTreeToggle <CR>]])

--========ReMaps===============================
vim.keymap.set('n', '<leader>e', vim.cmd.Ex);
vim.keymap.set('n', 'split', ":vsplit<cr>", opts);
vim.keymap.set("x", "<leader>p", [["_dP]])


--Navigation Between Windows
vim.keymap.set('n', "<C-H>", "<C-w>h", opts);
vim.keymap.set('n', "<C-J>", "<C-w>j", opts);
vim.keymap.set('n', "<C-K>", "<C-w>k", opts);
vim.keymap.set('n', "<C-L>", "<C-w>l", opts);
vim.keymap.set('n', '<leader>E', ":Lex 25 <cr>", opts);

--Resize the window
vim.keymap.set('n', '<S-Up>', ":resize -5<CR>", opts);
vim.keymap.set('n', '<S-Down>', ":resize +5<CR>", opts);
vim.keymap.set('n', '<S-Left>', ":vertical resize -5<CR>", opts);
vim.keymap.set('n', '<S-Right>', ":vertical resize +5<CR>", opts);
vim.keymap.set('i', '<C-s>', "<ESC> :w<CR>", opts);

--Move the Text (UP-Down)
vim.keymap.set("x", "<A-J>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<A-K>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<A-H>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<A-L>", ":m '>+1<CR>gv=gv", opts)


vim.keymap.set("x", "<leader>P", "\"_dP", opts)
