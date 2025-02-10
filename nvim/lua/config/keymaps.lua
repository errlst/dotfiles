-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 窗口跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- 快速移动
map("n", "<C-j>", "10j", opt)
map("n", "<C-k>", "10k", opt)
map("v", "<C-j>", "10j", opt)
map("v", "<C-k>", "10k", opt)

-- bufferline
map("n", "<C-w>", ":bd<CR>", opt)
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

-- fzf
map("n", "<C-p>", ":FzfLua files<CR>", opt)

-- neotree
map("n", "<A-e>", ":Neotree toggle<CR>", opt)
