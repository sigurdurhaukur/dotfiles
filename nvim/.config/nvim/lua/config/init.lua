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


require('config.globals')
require('config.options')
require('config.keymaps')
require('config.autocmds')


local opt = {
	defaults = {
		lazy = true,
	},
	install = {
		coloscheme = {"nightfox"}
	},
	rtp = {
		disabled_plugins = {
	"gzip",
	"matchit",
	"netrwPlugin",
	"tarPlugin",
	"tohtml",
	"tutor",
	"zipPlugin",
		}
	},
	change_detection = {
		notify = true,
	},
}



-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct


require("lazy").setup("plugins", opt)
