-- main module file
local module = require("Select2Browser.selectSub")

local M = {}
local config = {
  -- default config
  base_url = "https://www.google.com/search?q={search_text}",
  base_cmd = "open {open_url}",
}

-- setup is the public method to setup your plugin
M.setup = function(args)
  -- you can define your setup function here. Usually configurations can be merged, accepting outside params and
  -- you can also put some validation here for those.
  M.config = vim.tbl_deep_extend("force", config, args or {})
  vim.api.nvim_create_user_command("Select2Browser", function(name)
    local text = module.get_visual_selection()
    module.search_selection_in_google(text, M.config.base_url, M.config.base_cmd)
  end, { nargs = 0, range = true })
end

-- "hello" is a public method for the plugin
local Select2Browser = M;
return Select2Browser
