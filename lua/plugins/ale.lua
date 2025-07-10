return {
  "dense-analysis/ale",
  config = function()
    local b = vim.b

    -- Setup actionlint only on .github yaml files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "yaml" },
      callback = function()
        local expanded_path = vim.fn.expand("%:p")
        local path_search = string.find(expanded_path, ".github/actions")
          or string.find(expanded_path, ".github/workflows")
          or string.find(expanded_path, "action%.y.ml")
        if path_search then
          b.ale_linters = { yaml = { "actionlint", "yamllint" } }
        else
          b.ale_linters = { yaml = "yamllint" }
        end
      end,
    })
  end,
}
