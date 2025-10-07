local null_ls = require("null-ls")

-- Set up null-ls with Prettier
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier.with({
			filetypes = {
				"javascript", "typescript", "javascriptreact", "typescriptreact",
				"vue", "css", "scss", "less", "html", "json", "yaml",
				"markdown", "graphql"
			},
		}),
	},
})

-- Your existing LSP setup
local on_attach = function(_, bufnr)
	local bufmap = function(keys, func)
		vim.keymap.set("n", keys, func, { buffer = bufnr })
	end

	bufmap("<leader>r", vim.lsp.buf.rename)
	bufmap("<leader>a", vim.lsp.buf.code_action)

	bufmap("<leader>gd", vim.lsp.buf.definition)
	bufmap("<leader>gD", vim.lsp.buf.declaration)
	bufmap("<leader>gI", vim.lsp.buf.implementation)
	bufmap("<leader>D", vim.lsp.buf.type_definition)

	bufmap("gr", require("telescope.builtin").lsp_references)
	bufmap("<leader>s", require("telescope.builtin").lsp_document_symbols)
	bufmap("<leader>S", require("telescope.builtin").lsp_dynamic_workspace_symbols)

	bufmap("K", vim.lsp.buf.hover)

	bufmap("<C-f>", function()
		vim.lsp.buf.format({ async = false })
	end)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("mason").setup()
require("mason-lspconfig").setup_handlers({

	function(server_name)
		require("lspconfig")[server_name].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,

	["lua_ls"] = function()
		require("neodev").setup()
		require("lspconfig").lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			settings = {
				Lua = {
					workspace = { checkThirdParty = false },
					telemetry = { enable = false },
				},
			},
		})
	end,

})
