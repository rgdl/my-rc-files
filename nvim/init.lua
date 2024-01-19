-- Install package manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Packages

require("lazy").setup({
    'airblade/vim-gitgutter',
    'Soares/write.vim',
	'Vimjas/vim-python-pep8-indent',
	'w0rp/ale'
})

-- General config

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.colorcolumn = "80"

indent = { enable = true, disable = { "python" } }
