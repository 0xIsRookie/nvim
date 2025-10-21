return {
  "folke/trouble.nvim",
  opts = {
    position = "left", -- Trouble窗口显示在左侧
    height = 40, -- 左侧的宽度
    use_diagnostic_signs = true,
  },
  keys = {
    { "<Space>cs", "<Cmd>Trouble symbols toggle<CR>", desc = "Symbols (Trouble)" },
  },
}
