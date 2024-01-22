local opts={noremap=true,silent=true}
vim.keymap.set('n','<leader>csg',":colorscheme gruvbox<cr>",opts);
vim.keymap.set('n','<leader>cst',":colorscheme tokyonight-moon<cr>",opts);
vim.keymap.set('n','<leader>csd',":colorscheme default<cr>",opts);
vim.cmd(":colorscheme gruvbox");
vim.cmd(":set spell");
-- =====Lsp=====

