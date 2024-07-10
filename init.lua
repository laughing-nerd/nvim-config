-- Some Netrw configs
vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
-- vim.g.netrw_liststyle = 3

require("user.core.options")
require("user.core.keymaps")

require("user.lazy")

P = function(v)
  print(vim.inspect(v))
end

local client = vim.lsp.start_client {
  name = "mylsp",
  cmd = { "/home/userx/personal/mylsp/main" }
}
if not client then
  vim.notify("Failed to start mylsp")
  return
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end
})
