local util = require 'lspconfig.util'
local temp_path = vim.fn.stdpath 'cache'
local function make_cmd(new_config)
  if new_config.bundle_path ~= nil then
    local command_fmt =
      [[~/AppData/Local/nvim/lua/user/lsp/lsp_servers/powershell_es/PowerShellEditorServices/Start-EditorServices.ps1 -BundledModulesPath modules -LogPath C:/nvim_logs/powershell_es.log -SessionDetailsPath C:/nvim_logs/powershell_es.session.json -FeatureFlags @() -AdditionalModules @() -HostName nvim -HostProfileId 0 -HostVersion 1.0.0 -Stdio -LogLevel Normal]]
    local command = command_fmt:format(new_config.bundle_path, new_config.bundle_path, temp_path, temp_path)
    return { new_config.shell, '-NoLogo', '-NoProfile', '-Command', command }
  end
end

return {
    shell = 'pwsh',
    on_new_config = function(new_config, _)
      -- Don't overwrite cmd if already set
      if not new_config.cmd then
        new_config.cmd = make_cmd(new_config)
      end
    end,
    filetypes = { 'ps1' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
}