require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
require "user.colorizer"
vim.cmd [[ hi statusline guibg=NONE gui=NONE ]]
vim.cmd [[ hi statuslineNC guibg=NONE gui=NONE ]]
vim.cmd [[ set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾ ]]
vim.cmd [[ let g:instant_username = "MixtapeXD" ]]
vim.cmd [[ let g:coc_global_extensions=[ 'coc-powershell', 'coc-snippets' ] ]]
