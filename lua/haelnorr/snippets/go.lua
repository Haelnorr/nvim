local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
return {
	s(
		"efi",
		fmt(
			[[
                {}, err := {}({})
                if err != nil {{
                    return "", false, {}
                }}
            ]],
			{
				i(1, "var"),
				i(2, "f"),
				i(3, ""),
				c(4, {
					f(function(args)
						return 'errors.Wrap(err, "' .. args[1][1] .. '")'
					end, { 2 }),
					t("err"),
				}),
			}
		)
	),
}
