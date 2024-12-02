require("mason").setup()
local lspconfig = require('lspconfig')
local servers = {
  "jdtls"
}
require('mason-lspconfig').setup {
  handlers = {
    function(server_name)
      local server = servers[server_name] or {}
      lspconfig[server_name].setup(server)
    end,
  },
}
