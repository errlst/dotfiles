require('lualine').setup({
  options = {
    theme = "tokyonight",
    component_separators = {
      left = "|",
      right = "|"
    },
    section_separators = {
      left = " ",
      right = "",
    },
    globalstatus = true,
  },
  extensions = { "nvim-tree" },
  sections = {
    lualine_c = {
      "filename",
      {
        "lsp_progress",
        spinner_symbols = { " ", " ", " ", " ", " ", " " },
      },
    },
    lualine_x = {
      "filesize",
      {
        "fileformat",
        symbols = {
          unix = '', 
          dos = '',
          mac = '',
        },
      },
      "encoding",
      "filetype",
    },
  },
})
