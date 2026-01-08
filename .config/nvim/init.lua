-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy", {
  spec = {
    { import = "plugins" }, -- Automatically loads all files in lua/plugins/
  },
})
