local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("e", "  File Explorer", ":WhichKey<CR><SPACE>e"),
	dashboard.button("b", "  Browser Bookmarks", ":Telescope bookmarks<CR>"),
  dashboard.button("z", "  Pwsh Terminal", ":lua _H_PWSH_TOGGLE()<CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Init Config", ":e ~/AppData/Local/nvim/init.lua <CR>"),
	dashboard.button("w", "  Plugins Config", ":e ~/AppData/Local/nvim/lua/user/plugins.lua <CR>"),
  dashboard.button("m", "  WhichKey Menu    ", ":WhichKey<CR><SPACE>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
  }

dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
