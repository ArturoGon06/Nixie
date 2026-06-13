

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("core.lazy")

require("config.options") 
require("config.binds")
require("config.theme").setup()

require("core.lsp")

require("plugins.colorize")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.tabs")




