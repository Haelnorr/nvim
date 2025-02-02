local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
return {
	s(
		"snip",
		fmt('s("{}", fmt(\n    "{}"\n, {{\n    {}\n}})),', {
			i(1, "trigger"),
			i(2, "snippet body"),
			i(3, "insert nodes"),
		})
	),
}
