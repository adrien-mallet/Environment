local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")
local lspconfig = require("lspconfig")

mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",             -- LSP for Lua language
    "phpactor",
  },
  automatic_installation = true,
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {}
  end,
}

mason_tool_installer.setup({
	ensure_installed = {
		"stylua", -- lua formatter
		"phpstan",
		"psalm",
	},
})
