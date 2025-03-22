--Core
vim.loader.enable(true)

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

require("vipex")

-- Svelte Stuff
vim.g.vim_svelte_plugin_load_full_syntax = 1
vim.g.vim_svelte_plugin_use_typescript = 1

vim.api.nvim_create_autocmd("FileType", {
  pattern = "svelte",
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
})

-- Neovide
if vim.g.neovide then
  vim.o.guifont = "Iosevka:h15"
  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_confirm_quit = false
  vim.g.neovide_fullscreen = true
end

-- Theme
vim.cmd.colorscheme("desert")

vim.cmd([[
  highlight Normal ctermbg=none guibg=none
  highlight NonText ctermbg=none guibg=none
  highlight LineNr ctermbg=none guibg=none
  highlight SignColumn ctermbg=none guibg=none
  highlight CursorLine ctermbg=none guibg=none
  highlight Pmenu guibg=none
  highlight FloatBorder guibg=none guifg=none
  highlight NormalFloat guibg=none
  highlight CursorLineNr ctermbg=none guibg=none guifg=#ffffff
  highlight WinSeparator guibg=NONE
  set fillchars+=vert:▏
]])

vim.cmd([[
  augroup TransparentUI
    autocmd!
    autocmd ColorScheme * highlight EndOfBuffer guibg=none ctermbg=none
    autocmd ColorScheme * highlight VertSplit guibg=none ctermbg=none
    autocmd ColorScheme * highlight TabLine guibg=none ctermbg=none
    autocmd ColorScheme * highlight TabLineSel guibg=none ctermbg=none
    autocmd ColorScheme * highlight TabLineFill guibg=none ctermbg=none
  augroup END
]])

vim.cmd("highlight TabLineFill guifg=#000000")
vim.cmd("highlight TabLineSel gui=bold")
