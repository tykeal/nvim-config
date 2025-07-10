return {
  "github/copilot.vim",
  config = function()
    -- See https://codeinthehole.com/tips/vim-and-github-copilot/ for why
    vim.g.copilot_filetypes = {
      gitcommit = true,
      markdown = true,
      yaml = true,
    }

    -- Disable copilot on large files
    vim.api.nvim_create_autocmd("BufReadPre", {
      pattern = "*",
      callback = function()
        local fsize = vim.fn.getfsize(vim.fn.expand("%"))
        if fsize > 100000 or fsize == -2 then
          vim.b.copilot_enabled = false
        end
      end,
    })
  end,
}
