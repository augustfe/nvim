return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      -- Your global defaults (no 'buffer' here if you still want it elsewhere, keep it)
      -- default = { "lsp", "path", "snippets", "buffer" },

      -- Per-filetype overrides completely replace the default list.
      per_filetype = {
        -- LaTeX (both flavors)
        tex = { "lsp", "path", "snippets" },
        plaintex = { "lsp", "path", "snippets" },

        -- Markdown (covers normal Markdown)
        markdown = { "lsp", "path", "snippets" },

        -- Plain text
        text = { "path", "snippets" }, -- no LSP in plain text usually
      },
    },
  },
}
