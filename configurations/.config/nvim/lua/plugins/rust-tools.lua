return {
	'simrat39/rust-tools.nvim',
	ft = "rust",
	opt = function ()
		local on_attach = require("lspconfig").on_attach
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()
		local options = {
			server = {
				on_attach = on_attach,
				capabilities = capabilities,
			}
		}
		return options
	end,
	config = function (_, opts)
		require('rust-tools').setup(opts)
	end,
}
