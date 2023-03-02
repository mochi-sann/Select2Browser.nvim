-- module represents a lua module for the plugin
local M = {}

M.get_visual_selection = function()
  local s_start = vim.fn.getpos("'<")
  local s_end = vim.fn.getpos("'>")
  local n_lines = math.abs(s_end[2] - s_start[2]) + 1
  local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
  lines[1] = string.sub(lines[1], s_start[3], -1)

  if n_lines == 1 then
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
  else
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
  end

  return table.concat(lines, "\n")
end

M.search_selection_in_google = function(text, base_url, base_cmd)
  local selected_text = text
  local new_url = base_url:gsub("{replase_text}", selected_text)
  local open_cmd = base_cmd:gsub("{replase_text}", "'" .. new_url .. "'")
  local remove_line_break = open_cmd:gsub("\n", " ")
  print(remove_line_break)

  vim.api.nvim_command("! " .. remove_line_break)
end

return M
