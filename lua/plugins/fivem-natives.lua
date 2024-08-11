return {
  {
    "neovim/nvim-lspconfig",

    opts = {
      -- LSP Server Settings
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              semantic = {
                enable = false,
              },
              diagnostics = {
                globals = { "vim" },
              },
              telemetry = { enable = false },
              workspace = {
                library = {
                  [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                  [vim.fn.expand(vim.fn.stdpath("config") .. "/fivem-library/")] = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
