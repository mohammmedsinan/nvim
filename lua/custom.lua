local opts={noremap=true,silent=true}
vim.keymap.set('n','<leader>csg',":colorscheme gruvbox<cr>",opts);
vim.keymap.set('n','<leader>cst',":colorscheme tokyonight-moon<cr>",opts);
vim.keymap.set('n','<leader>csd',":colorscheme default<cr>",opts);
vim.cmd(":colorscheme tokyonight-moon");
vim.filetype.add {
      extension = {
        astro = "astro",
      },
}



--vim.cmd(":set spell");
-- ===============Custom Plugin ===============
--[[local function printTable(tbl) 
    for key, value in pairs(tbl) do
        print(key, value)
    end
end

local VimTimer = require('custom_plugin.init');
local path = '/home/train/.local/state/nvim/timer/start.json';
print(VimTimer.start(""))
VimTimer.stop();
]]--
