require("luasnip.session.snippet_collection").clear_snippets("templ")
local ls = require("luasnip")
local s = ls.snippet
local c = ls.choice_node
local d = ls.dynamic_node
local i = ls.insert_node
local t = ls.text_node
local sn = ls.snippet_node
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("templ", {
	s(
		"layout",
		fmt(
			[[
package page

import "projectreshoot/view/layout"

templ {}() {{
	@layout.Global() {{
		<div class="">
            {}
		</div>
	}}
}}
    ]],
			{
				i(1, "Page"),
				i(0),
			}
		)
	),
})
