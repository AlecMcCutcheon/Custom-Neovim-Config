local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
  size = function(term)
    if term.direction == "horizontal" then
      return 10
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
	open_mapping = [[kj]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = vim.o.background == "dark",
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'qwe', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'qe', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-LEFT>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-DOWN>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-UP>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-RIGHT>', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', [[<c-\>]], [[<CMD>:lua _H_PWSH_TOGGLE()<CR>]], opts)

end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })


function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })

function _NODE_TOGGLE()
	node:toggle()
end

local hpwsh = Terminal:new({ dir = "~/AppData/Local/nvim", direction = "horizontal", cmd = 'pwsh -noprofile -noexit -nologo -f "%USERPROFILE%/.config/powershell/nvim_profile.ps1"', hidden = true })
function _H_PWSH_TOGGLE()

--vim.cmd [[]]

hpwsh:toggle()
end

local vpwsh = Terminal:new({ dir = "~/AppData/Local/nvim", direction = "vertical", cmd = 'pwsh -noprofile -noexit -nologo -f "%USERPROFILE%/.config/powershell/nvim_profile.ps1"', hidden = true })
function _V_PWSH_TOGGLE()
	vpwsh:toggle()
end



local htop = Terminal:new({ cmd = "htop", hidden = true })

function _HTOP_TOGGLE()
	htop:toggle()
end

local python = Terminal:new({ cmd = "python", hidden = true })

function _PYTHON_TOGGLE()
	python:toggle()
end
