require('nvim-treesitter.configs').setup {
	sync_install=false,
	ensure_installed = { 'vim',  "c", "lua", 'lua',"javascript","typescript" ,"tsx","css","html","json"},

	auto_install = true,

	highlight = { enable = true },
--	autotag = {enable = true},
	indent = { enable = true },
}
