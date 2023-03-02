local plugin = require("Select2Browser/module")

describe("setup", function()
  it("return open command", function()
    assert(
      "!open https://www.google.com/search?q='hoge Text'",
      plugin.search_selection_in_google(
        "hoge Text ",
        "https://www.google.com/search?q={search_text}",
        "open {open_url}"
      )
    )
  end)
end)
