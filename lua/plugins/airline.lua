return {
  "vim-airline/vim-airline",
  dependencies = {
    "vim-airline/vim-airline-themes",
    "ryanoasis/vim-devicons",
  },
  config = function()
    vim.g.airline_theme = "kolor"
    -- vim.g.airline_powerline_fonts = 1
    -- vim.g.airline#extensions#tabline#enabled = 1
    -- vim.g.airline#extensions#tabline#buffer_idx_mode = 1
    -- vim.g.airline#extensions#tabline#show_splits = 2
    -- vim.g.airline#extensions#tabline#show_tabs = 1
    vim.cmd([[let g:airline#extensions#ale#enabled = 1]])
  end,
}
