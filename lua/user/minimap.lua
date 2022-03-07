
-- MINIMAP is Disabled for now as there's too many bugs/conflicts with other plugins

local status_ok, minimap = pcall(require, "minimap")
if not status_ok then
	return
end

minimap.setup({

minimap_width = 10,
minimap_auto_start = 1,
minimap_auto_start_win_enter = 1,
  

})
