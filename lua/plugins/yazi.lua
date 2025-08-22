-- ===
-- === explorer tree 文件列表
-- ===

-- 判断当前环境是否是vscode映射不同命令打开yazi
if vim.g.vscode then
  -- VSCode Neovim environment
  local vscode = require("vscode")
  vim.keymap.set("n", "tt", function()
    vscode.action("yazi-vscode.toggle")
  end, { noremap = true, silent = true, desc = "Toggle Yazi (VSCode)" })
end

---@type LazySpec
return {
  "mikavilpas/yazi.nvim",
  enabled = not vim.g.vscode,
  event = "VeryLazy",
  dependencies = {
    -- check the installation instructions at
    -- https://github.com/folke/snacks.nvim
    "folke/snacks.nvim",
  },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      "qq",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
  },
  ---@type YaziConfig | {}
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    -- vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
}
