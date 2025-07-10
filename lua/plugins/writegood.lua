return {
  "davidbeckingsale/writegood.vim",
  config = function()
    -- Enable writegood on markdown and text files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown", "text" },
      command = "WritegoodEnable",
    })
  end,
}
