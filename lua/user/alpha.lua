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
	dashboard.button("b", "  Browser Bookmarks", ":Telescope bookmarks<CR>"),
  dashboard.button("z", "  Pwsh Terminal", ":WhichKey<CR><SPACE>th"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Init Config", ":e ~/AppData/Local/nvim/init.lua <CR>"),
	dashboard.button("w", "  Plugins Config", ":e ~/AppData/Local/nvim/lua/user/plugins.lua <CR>"),
  dashboard.button("m", "  WhichKey Menu    ", ":WhichKey<CR><SPACE>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
  }

local function footer()
  local plugins_count = vim.fn.len(vim.fn.globpath("~/AppData/Local/nvim-data/site/pack/packer/start", "*", 0, 1))
  local date = os.date("  %m-%d-%Y")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
  return date .. "   Plugins " .. plugins_count .. nvim_version_info
end

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Question"
dashboard.section.header.opts.hl = "Question"
dashboard.section.buttons.opts.hl = "Title"

dashboard.opts.opts.noautocmd = true
vim.cmd [[
  autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  autocmd FileType alpha set showtabline=0 laststatus=0 noruler | au BufUnload <buffer> set showtabline=2 ruler laststatus=2
]]
alpha.setup(dashboard.opts)


