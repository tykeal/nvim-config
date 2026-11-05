return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs", -- tells lazy.nvim where setup() lives
  opts = {
    ensure_installed = {
      "python",
      "javascript",
      "rust",
      "css",
      "latex",
      "norg",
      "scss",
      "svelte",
      "typst",
      "vue",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
