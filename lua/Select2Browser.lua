-- main module file
local module = require("plugin_name.module")

local M = {}
M.config = {
  -- default config
  opt = "Hello!",
  base_url = 'https://www.google.com/search?q={search_text}'
  ,
  base_cmd = 'open {open_url}'
}



vim.api.nvim_set_keymap("", "<Leader>g", ":Selected2Google<CR>", { noremap = true, silent = true })
-- setup is the public method to setup your plugin
M.setup = function(args)
  -- you can define your setup function here. Usually configurations can be merged, accepting outside params and
  -- you can also put some validation here for those.
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

-- "hello" is a public method for the plugin
M.hello = function()
  module.my_first_function()
end

return M
