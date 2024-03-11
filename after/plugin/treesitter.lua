require('nvim-treesitter.configs').setup {
	sync_install=false,
	ensure_installed = { 'vim',  "c", "lua", 'lua',"javascript","typescript" ,"tsx","css","html","json","astro"},

	auto_install = true,
 	textsubjects = {
          enable = true,
        },
	highlight = { enable = true },
--	autotag = {enable = true},
	indent = { enable = true },
}
