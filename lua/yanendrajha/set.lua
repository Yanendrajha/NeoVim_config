vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.have_nerd_font = true

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

-- Colorcolumn is thier to add a column at the side.
-- TODO : Add a auto colorcolumn at last.
vim.opt.colorcolumn = "165"


--[[ Sync clipboard between OS and Neovim.
Schedule the setting after `UiEnter` because it can increase startup-time.
Remove this option if you want your OS clipboard to remain independent.
See `:help 'clipboard'`
I will have to refactor it accordingly for seperating the two yanking buffer
]]
vim.g.clipboard = {
                   name = 'WslClipboard',
                   copy = {
                      ["+"] = 'clip.exe',
                      ["*"] = 'clip.exe',
                    },
                	paste =  {
                      ["+"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                      ["*"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                   },
                cache_enabled = false,
	   }
