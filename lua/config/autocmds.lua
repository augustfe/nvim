-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tex", "plaintex", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.breakindent = true
    vim.opt_local.showbreak = "↪ "

    -- spell settings (edit languages as you prefer)
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "en_gb", "nb" } -- e.g. Oxford English + Norwegian Bokmål
    vim.opt_local.spellsuggest = "best,9"

    -- optional: per-project custom words file (create it when prompted by `zg`)
    vim.opt_local.spellfile = vim.fn.stdpath("config") .. "/spell/custom.utf-8.add"
  end,
})
