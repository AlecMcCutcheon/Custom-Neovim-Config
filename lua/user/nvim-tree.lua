-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local lib_status_ok, lib = pcall(require, "nvim-tree.lib")
if not lib_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

if not bookmarks then
local bookmarks = {}
end
  
local function add_mark() 
  local node = lib.get_node_at_cursor()
  bookmarks[node.absolute_path] = node.absolute_path
end

local function remove_mark()
  local node = lib.get_node_at_cursor()
  bookmarks[node.absolute_path] = nil
end

local function Jump_to_dir_cursor()
local node = lib.get_node_at_cursor()
  lib.change_dir(node.absolute_path)
end

local function jump_to_dir(dirname)
  lib.change_dir(dirname)
end

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "<C-h>", cb = tree_cb "close_node" },
        { key = "h", cb = tree_cb "split" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
    number = false,
    relativenumber = false,
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  root_folder_modifier = ":t",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30,
  },
}
