local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",     -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins", {
  install = { colorscheme = { "catppuccin" } },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "zip",
        "zipPlugin",
        "fzf",
        "tar",
        "tarPlugin",
        "getscript",
        "getscriptPlugin",
        "vimball",
        "vimballPlugin",
        "2html_plugin",
        "matchit",
        "matchparen",
        "logiPat",
        "rrhelper",
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
      },
    },
  },
})
