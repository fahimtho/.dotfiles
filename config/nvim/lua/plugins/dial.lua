local dial = require("dial")

dial.config.searchlist.normal = {
    "number#decimal",
    "number#hex",
    "number#binary",
    "date#[%Y/%m/%d]",
    "date#[%m/%d]",
    "date#[%-m/%-d]",
    "date#[%Y-%m-%d]",
    "date#[%H:%M:%S]",
    "date#[%H:%M]",
    "char#alph#small#word",
    "char#alph#capital#word",
    "char#alph#small#str",
    "char#alph#capital#str",
    "color#hex",
    "markup#markdown#header",
    "markup#markdown#header",
    "number#decimal#int",
    "number#decimal#fixed#zero",
    "number#octal",
    "number#binary",
    "custom#boolean",

}

-- Custom Toggle list
dial.augends["custom#boolean"] = dial.common.enum_cyclic{
    name = "boolean",
    strlist = {"true", "false"},
}
table.insert(dial.config.searchlist.normal, "custom#boolean")
