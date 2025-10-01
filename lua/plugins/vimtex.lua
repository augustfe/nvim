-- Lazy spec for lervag/vimtex
return {
  {
    "lervag/vimtex",
    ft = { "tex", "plaintex" }, -- load only for TeX files
    init = function()
      -- Viewer: Skim on macOS
      vim.g.vimtex_view_method = "skim"

      -- Recommended quality-of-life
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_log_ignore = { "Underfull", "Overfull", "specifier changed to" }

      -- Optional: latexmk settings
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        continuous = 1,
        build_dir = "",
        callback = 1,
        options = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
        },
      }
    end,
  },
}
