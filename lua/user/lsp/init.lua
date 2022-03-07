local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
require 'colorizer'.setup {
  'css';
  'javascript';
  'html';
  'vim';
  'ps1';
  'txt';
  'log';
  'py';
  'temp';
  'js';
  'lua';
  'json';
}
