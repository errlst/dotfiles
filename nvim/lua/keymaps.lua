local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- 空格作为前缀键
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map('n', ' ', '', opt)


-- 拆分窗口
map('n', 's', '', opt)
map('n', 'sv', ':vsp<CR>', opt)
map('n', 'sh', ':sp<CR>', opt)

-- 关闭当前和其他
map('n', 'sc', '<C-w>c', opt)
map('n', 'so', '<C-w>o', opt)

-- 窗口跳转
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)

-- 进入 terminal 模式
map('n', '<A-t>', ':terminal<CR>i', opt)

-- 快速浏览
map('n', '<C-j>', '5j', opt)
map('n', '<C-k>', '5k', opt)
map('n', '<C-d>', '10j', opt)
map('n', '<C-u>', '10k', opt)

-- insert 跳转行首行尾
map('i', '<C-h>', '<ESC>I', opt)
map('i', '<C-l>', '<ESC>A', opt)


-- nvim-tree
map('n', '<A-e>', ':NvimTreeToggle<CR>', opt)


-- bufferline
map('n', '<C-w>', ':Bdelete!<CR>', opt)
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)

-- telescope
map('n', '<C-p>', ':Telescope find_files<CR>', opt)
map('n', '<C-f>', ':Telescope live_grep<CR>', opt)
