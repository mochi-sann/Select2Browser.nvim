# Select2Browser

Text selected in visual mode can be searched in the Browser

# Setup
```lua
-- lazy.nvim
{
  "mochi-sann/Select2Browser.nvim"
  config = function()
    require("Select2Browser").setup({})
    -- example keymap
    vim.api.nvim_set_keymap("", "<Leader>g", ":Select2Browser<CR>", { noremap = true, silent = true })
  end,
},
```

# Interface

## Commands

* `:Select2Browser`
    * Open selected text in visual mode with pre-set url

## config
{replase_text} replaces the selected string
```lua
-- default config
require("Select2Browser").setup({
  base_url = "https://www.google.com/search?q={replase_text}", -- url to open in browser
  base_cmd = "open {replase_text}", -- Command to open a browser; if you are using windows or Linux, please change it
})
```
