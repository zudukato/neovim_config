--require("core.plugins")
--require("core.plugin_config.init_plug")
require('initLazy')
require("map")

vim.opt.number = true
vim.opt.rnu = true
vim.opt.ignorecase = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.encoding = 'utf-8'
vim.opt.termguicolors = true
vim.opt.showcmd = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.api.nvim_command('set noswapfile')
