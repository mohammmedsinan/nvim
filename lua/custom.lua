local opts={noremap=true,silent=true}
vim.keymap.set('n','<leader>csgurv',":colorscheme gruvbox<cr>",opts);
vim.keymap.set('n','<leader>cstokyo',":colorscheme tokyonight-moon<cr>",opts);
vim.keymap.set('n','<leader>csdefault',":colorscheme default<cr>",opts);
vim.cmd("colorscheme tokyonight")
