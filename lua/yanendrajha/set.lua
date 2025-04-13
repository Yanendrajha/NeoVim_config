vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"


--[[ Sync clipboard between OS and Neovim.
Schedule the setting after `UiEnter` because it can increase startup-time.
Remove this option if you want your OS clipboard to remain independent.
See `:help 'clipboard'`
I will have to refactor it accordingly for seperating the two yanking buffer
]]
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)
