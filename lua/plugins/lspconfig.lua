return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- 通过mason来自动安装语言服务器并启用
    { "mason-org/mason.nvim", opts = {} },
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "marksman",
          "pylsp",
          -- "gopls",
        },
        automatic_enable = {
          exclude = {},
        },
      },
    },
    { "MysticalDevil/inlay-hints.nvim", event = "LspAttach" },
  },
}
