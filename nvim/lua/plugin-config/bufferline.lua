-- use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
require('bufferline').setup(
{
  options = {
    -- 关闭 Tab
    close_command = 'Bdelete!%d',
    right_mouse_command = 'Bdelete!%d',


    indicator = {
      style = 'underline'
    },

    max_name_lengt = 15,
    truncate_names = true,

    -- 左侧让出 nvim-tree 位置
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'Explorer',
        highlight = 'Directory',
        text_align = 'left',
      },
    },
  },
})
