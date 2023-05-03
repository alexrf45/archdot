--return {
--{ "catppuccin/nvim", name = "catppuccin" },
--{ "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
--}

return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = {
        dark = "mocha",
      },
      term_colors = true,
      transparent_background = false,
      no_italic = false,
      no_bold = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      intergrations = {
        treesitter = true,
        notify = true,
        nvimtree = true,
        mason = true,
        trouble = true,
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      highlight_overrides = {
        mocha = function(C)
          return {
            TabLineSel = { bg = C.green },
            CmpBorder = { fg = C.surface2 },
            Pmenu = { bg = C.none },
            TelescopeBorder = { link = "FloatBorder" },
          }
        end,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
}
