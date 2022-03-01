require("formatter").setup({
  filetype = {
    -- js = {
    --   -- prettier
    --   function()
    --     return {
    --       exe = "prettier",
    --       args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
    --       stdin = true,
    --     }
    --   end,
    -- },
    sh = {
      -- Shell Script Formatter
      function()
        return {
          exe = "shfmt",
          args = { "-i", 2 },
          stdin = true,
        }
      end,
    },
    lua = {
      function()
        return {
          exe = os.getenv("HOME") .. "/.cargo/bin/stylua",
          args = {
            "--config-path " .. os.getenv("HOME") .. "/stylua/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
  },
})

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.lua,*.sh FormatWrite
augroup END
]],
  true
)
