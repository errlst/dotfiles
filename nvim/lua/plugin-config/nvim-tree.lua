-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

local function my_on_attach(bufnr)
  local function opts(desc)
    return {
      desc = 'nvim-tree: ' .. desc, 
      buffer = bufnr, 
      noremap = true,
      silent = true,
      nowait = true
    }
  end

  local api = require 'nvim-tree.api'
  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', '?', api.tree.toggle_help, opts('帮助'))
  vim.keymap.set('n', 'c', api.fs.create, opts('新建文件'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('重命名'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('删除'))
  vim.keymap.set('n', 's', api.tree.search_node, opts('搜索'))
  vim.keymap.set('n', '.', api.tree.toggle_hidden_filter, opts('隐藏文件'))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts('垂直打开'))
  vim.keymap.set('n', 'h', api.node.open.horizontal, opts('水平打开'))
end

require('nvim-tree').setup({
    view = {
        width = 30,
    },
    filters = {
      dotfiles = true,
    },
    on_attach = my_on_attach,
})

-- 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

