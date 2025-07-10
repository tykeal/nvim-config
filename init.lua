if vim.g.vscode then
  return
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- colors
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Enable line length rulers
--vim.opt.colorcolumn = "80,100-"
vim.cmd("execute \"set colorcolumn=80,\" . join(range(120,999), ',')")

-- Make sure the console bell is enabled
vim.opt.belloff = ""

-- Default tab configuration
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Listcharacters
vim.opt.listchars = {
  tab = ">~",
  trail = "^",
  eol = "↵",
  extends = "»",
  precedes = "«",
  nbsp = "␣",
}
vim.opt.list = false -- Disable list mode by default

-- Disable the mouse, it interferes with my normal usage
vim.opt.mouse = ""

-- Disable quote concealing in json
vim.g.vim_json_syntax_conceal = 0

-- Enable folding on json(p) files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "jsonp" },
  command = "setlocal foldmethod=syntax",
})

-- Enable folding for sh files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh" },
  callback = function()
    vim.g.sh_fold_enabled = 7
    vim.opt.syntax = "on"
  end,
})
