vim.api.nvim_create_user_command("MyFirstFunction", require("plugin_name").hello, {})
vim.api.nvim_create_user_command(
  'Selected2Google',
  function(name)
    local text = get_visual_selection()
    print(name)
    search_selection_in_google(text)
  end,
  { nargs = 0, range = true }
)
