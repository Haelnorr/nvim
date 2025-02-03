require("luasnip.session.snippet_collection").clear_snippets("lua")
local ls = require("luasnip")
local s = ls.snippet
local c = ls.choice_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
ls.add_snippets("lua", {
	s(
		"snip",
		fmta(
			[=[
s("<trigger>",
    fmta(
[[
<snippet>
]],
        {
            <node_choice>
        }
    )
),<finish>
]=],
			{
				trigger = i(1),
				snippet = i(2),
				node_choice = c(3, {
					fmta([[<node> = <node_type>(1, "<node_placeholder>"),]], {
						node = i(1),
						node_type = i(2, "type"),
						node_placeholder = i(3, "placeholder"),
					}),
					fmta("<node> = <node_type>(1)", {
						node = i(1),
						node_type = i(2, "type"),
					}),
				}),
				finish = i(0),
			}
		)
	),
})
