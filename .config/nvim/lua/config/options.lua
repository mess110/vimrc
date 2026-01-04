-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable conceal for markdown and tex
-- this disables that ```sh hover
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "tex" },
  callback = function()
    vim.opt_local.conceallevel = 0
    vim.opt_local.concealcursor = ""
  end,
})
