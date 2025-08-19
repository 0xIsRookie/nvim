return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        vue = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        -- less = { "prettier" }, -- 可选：如果你也有单独的 .less 文件
      },
    },
  },
}
