require('nvim-treesitter.configs').setup {
	sync_install=false,
     ensure_installed = { 'vim',  "c", "lua", 'lua',"javascript","typescript" },

     auto_install = true,

     highlight = { enable = true },

     indent = { enable = true },
 }
