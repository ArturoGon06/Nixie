

return {
  "akinsho/bufferline.nvim",
  version = "*",
  
  opts = {
    options = {
      mode = "buffers",
      numbers = "none",

      show_buffer_icons = false,
      show_buffer_close_icons = false,
      show_close_icons = false,
      show_tab_indicators = false,
      
      indicator = {
        style = "none",
      },

      seperator_style = { "", "" },
      always_show_bufferline = true,
    },

    highlights = {
      fill = {
        bg = "NONE",
      },
      background = {
        fg = "#b48ead",
        bg = "NONE",
      },
      buffer_visible = {
        fg = "#b48ead",
        bg = "NONE",
      },
      buffer_selected = {
        fg = "#ff8800",
        bg = "NONE",
        bold = true,
      },
      seperator = {
        fg = "NONE",
        bg = "NONE",
      },
      separator_visible = {
        fg = "NONE",
        bg = "NONE",
      },
      separator_selected = {
        fg = "NONE",
        bg = "NONE"
      },
    },
  },
}


