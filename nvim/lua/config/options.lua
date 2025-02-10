-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.mouse = "a"

-- 粘贴板
vim.opt.clipboard = "unnamedplus"

-- 连续按键时限
vim.opt.timeoutlen = 500

-- 缩进
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- 换行对齐
vim.opt.autoindent = true
vim.opt.smartindent = true

-- 左侧留出一列用于符号显示
vim.opt.signcolumn = "yes"

-- 行号和当前行
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true

-- 空格显示为点
vim.opt.list = true
vim.opt.listchars = "space:."

-- 补全
vim.opt.wildmenu = true

vim.opt.autoread = true

-- 关闭备份文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- 搜索
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 使用插件，关闭 vim 自带的模式提示
vim.opt.showmode = false

-- 显示 tabline
vim.opt.tabline = "2"

-- 样式
vim.opt.background = "dark"
vim.opt.termguicolors = true
