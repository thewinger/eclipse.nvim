--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
-- local hsl = lush.hsl
local eclipse = require("colors")

local bg0 = eclipse.bg0
local bg1 = eclipse.bg1
local bg2 = eclipse.bg2
local bg3 = eclipse.bg3

local fg0 = eclipse.fg0
local fg2 = eclipse.fg2

local black = eclipse.black
local white = eclipse.white
local red = eclipse.red
local green = eclipse.green
local yellow = eclipse.yellow
local blue = eclipse.blue
local magenta = eclipse.magenta
local cyan = eclipse.cyan
local orange = eclipse.orange

local bold = eclipse.bold
local italic = eclipse.italic
local underline = eclipse.underline
local undercurl = eclipse.undercurl

-- theme settings

local theme = lush(function()
	return {
		-- The following are all the Neovim default highlight groups from the docs
		-- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
		-- probably style all of these at a bare minimum.
		--
		-- Referenced/linked groups must come before being referenced/lined,
		-- so the order shown ((mostly) alphabetical) is likely
		-- not the order you will end up with.
		--
		-- You can uncomment these and leave them empty to disable any
		-- styling for that group (meaning they mostly get styled as Normal)
		-- or leave them commented to apply vims default colouring or linking.

		Comment({ fg = bg3, gui = italic }), -- any comment
		ColorColumn({ bg = bg1 }), -- used for the columns set with 'colorcolumn'
		-- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ bg = bg3, fg = bg0 }), -- character under the cursor
		-- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ bg = bg1 }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = bg1 }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory({ fg = red }), -- directory names (and other special names in listings)
		DiffAdd({ fg = green }), -- diff mode: Added line |diff.txt|
		DiffChange({ fg = yellow }), -- diff mode: Changed line |diff.txt|
		DiffDelete({ fg = red }), -- diff mode: Deleted line |diff.txt|
		DiffText({ fg = fg0, bg = bg3 }), -- diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer({}), -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- TermCursor   { }, -- cursor in a focused terminal
		-- TermCursorNC { }, -- cursor in an unfocused terminal
		ErrorMsg({ fg = red }), -- error messages on the command line
		VertSplit({ fg = fg2, bg = bg0 }), -- the column separating vertically split windows
		Folded({ fg = bg3, bg = bg0 }), -- line used for closed folds
		FoldColumn({ Folded }), -- 'foldcolumn'
		SignColumn({ fg = bg3, bg = bg0 }), -- column where |signs| are displayed
		IncSearch({ fg = black, bg = green }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr({ fg = bg3 }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({ fg = cyan }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen({ fg = fg0, bg = bg2 }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg({ fg = green }), -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ fg = green }), -- |more-prompt|
		NonText({}), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal({ fg = white }), -- normal text
		-- NormalFloat  { }, -- Normal text in floating windows.
		-- NormalNC     { }, -- normal text in non-current windows
		Pmenu({ fg = fg0, bg = bg0 }), -- Popup menu: normal item.
		PmenuSel({ fg = black, bg = red }), -- Popup menu: selected item.
		PmenuSbar({ bg = bg3 }), -- Popup menu: scrollbar.
		PmenuThumb({ bg = bg0 }), -- Popup menu: Thumb of the scrollbar.
		FloatBorder({ fg = fg0 }), -- Float borders
		Question({ fg = green }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ fg = black, bg = cyan }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ fg = black, bg = green }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey({ fg = black, bg = red }), -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ gui = undercurl, sp = red }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap({ gui = undercurl, sp = blue }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal({ gui = undercurl, sp = red }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare({ gui = undercurl, sp = orange }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine({ fg = fg0, bg = bg0 }), -- status line of current window
		StatusLineNC({ fg = magenta, bg = bg0 }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine({ fg = bg1, bg = fg0 }), -- tab pages line, not active tab page label
		TabLineFill({ fg = fg0, bg = bg1 }), -- tab pages line, where there are no labels
		TabLineSel({ fg = fg0, bg = red }), -- tab pages line, active tab page label
		Title({ fg = blue }), -- titles for output from ":set all", ":autocmd" etc.
		Visual({ fg = yellow, bg = bg2 }), -- Visual mode selection
		-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg({ fg = orange }), -- warning messages
		-- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu({ fg = black, bg = fg0 }), -- current match in 'wildmenu' completion

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant({ fg = orange }), -- (preferred) any constant
		String({ fg = yellow }), --   a string constant: "this is a string"
		Character({ fg = orange }), --  a character constant: 'c', '\n'
		Number({ fg = orange }), --   a number constant: 234, 0xff
		Boolean({ fg = orange }), --  a boolean constant: TRUE, false
		Float({ fg = orange }), --    a floating point constant: 2.3e10

		Identifier({ fg = red }), -- (preferred) any variable name
		Function({ fg = cyan }), -- function name (also: methods for classes)

		Statement({ fg = magenta }), -- (preferred) any statement
		Conditional({ fg = magenta }), --  if, then, else, endif, switch, etc.
		Repeat({ fg = magenta }), --   for, do, while, etc.
		Label({ fg = magenta }), --    case, default, etc.
		Operator({ fg = cyan }), -- "sizeof", "+", "*", etc.
		Keyword({ fg = magenta }), --  any other keyword
		Exception({ fg = magenta }), --  try, catch, throw

		PreProc({ fg = green }), -- (preferred) generic Preprocessor
		Include({ fg = magenta }), --  preprocessor #include
		Define({ fg = green }), --   preprocessor #define
		Macro({ fg = green }), --    same as Define
		-- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

		Type({ fg = yellow }), -- (preferred) int, long, char, etc.
		StorageClass({ fg = blue }), -- static, register, volatile, etc.
		Structure({ fg = blue }), --  struct, union, enum, etc.
		-- Typedef        { }, --  A typedef

		Special({ fg = red }), -- (preferred) any special symbol
		SpecialChar({ fg = orange }), --  special character in a constant
		Tag({ fg = red }), --    you can use CTRL-] on this
		Delimiter({ fg = blue }), --  character that needs attention
		-- SpecialComment { }, -- special things inside a comment
		-- Debug          { }, --    debugging statements

		Underlined({ fg = blue, gui = underline }), -- (preferred) text that stands out, HTML links
		Bold({ gui = bold }),
		Italic({ gui = italic }),

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error({ fg = red }), -- (preferred) any erroneous construct

		Todo({ fg = black, bg = green, gui = italic }), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- checkhealth
		healthError({ fg = bg0, bg = red }),
		healthSuccess({ fg = bg0, bg = green }),
		healthWarning({ fg = bg0, bg = yellow }),

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.

		LspReferenceText({ fg = white }), -- used for highlighting "text" references
		LspReferenceRead({ LspReferenceText }), -- used for highlighting "read" references
		LspReferenceWrite({ LspReferenceText }), -- used for highlighting "write" references

		DiagnosticsSignError({ fg = red }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		DiagnosticsSignWarn({ fg = orange }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		DiagnosticsSignInfo({ fg = blue }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		DiagnosticsSignHint({ fg = cyan }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

		LspDiagnosticsUnderlineError({ fg = red, gui = underline }), -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning({ fg = orange, gui = underline }), -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation({ fg = blue, gui = underline }), -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint({ fg = cyan, gui = underline }), -- Used to underline "Hint" diagnostics

		-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		-- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
		-- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
		-- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
		-- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		TSAnnotation({ PreProc }), -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		TSAttribute({ PreProc }), -- (unstable) TODO: docs
		TSBoolean({ Boolean }), -- For booleans.
		TSCharacter({ Constant }), -- For characters.
		TSComment({ Comment }), -- For comment blocks.
		TSConstructor({ Special }), -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
		TSConditional({ Conditional }), -- For keywords related to conditionnals.
		TSConstant({ Constant }), -- For constants
		TSConstBuiltin({ Special }), -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro({ Define }), -- For constants that are defined by macros: `NULL` in C.
		TSError({ Error }), -- For syntax/parser errors.
		TSException({ Exception }), -- For exception related keywords.
		TSField({ Statement }), -- For fields.
		TSFloat({ Float }), -- For floats.
		TSFunction({ Function }), -- For function (calls and definitions).
		TSFuncBuiltin({ Special }), -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro({ Macro }), -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude({ Include }), -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword({ Keyword }), -- For keywords that don't fall in previous categories.
		TSKeywordFunction({ Keyword }), -- For keywords used to define a fuction.
		TSKeywordOperator({ Operator }),
		TSLabel({ Label }), -- For labels: `label:` in C and `:label:` in Lua.
		TSMethod({ Function }), -- For method calls and definitions.
		TSNamespace({ Include }), -- For identifiers referring to modules and namespaces.
		TSNone({}), -- TODO: docs
		TSNumber({ Number }), -- For all numbers
		TSOperator({ Operator }), -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter({ Identifier }), -- For parameters of a function.
		TSParameterReference({ Identifier }), -- For references to parameters of a function.
		TSProperty({ Identifier }), -- Same as `TSField`.
		TSPunctDelimiter({ Delimiter }), -- For delimiters ie: `.`
		TSPunctBracket({ Delimiter }), -- For brackets and parens.
		TSPunctSpecial({ Delimiter }), -- For special punctutation that does not fall in the catagories before.
		TSRepeat({ Repeat }), -- For keywords related to loops.
		TSString({ String }), -- For strings.
		TSStringRegex({ String }), -- For regexes.
		TSStringEscape({ SpecialChar }), -- For escape characters within a string.
		TSSymbol({ Statement }), -- For identifiers referring to symbols or atoms.
		TSType({ Type }), -- For types.
		TSTypeBuiltin({ Type }), -- For builtin types.
		TSVariable({ Identifier }), -- Any variable name that does not have another highlight.
		TSVariableBuiltin({ Special }), -- Variable names that are defined by the languages, like `this` or `self`.

		TSTag({ Tag }), -- Tags like html tag names.
		TSTagDelimiter({ fg = orange }), -- Tag delimiter like `<` `>` `/`
		TSText({ Normal }), -- For strings considered text in a markup language.
		TSEmphasis({ Italic }), -- For text to be represented with emphasis.
		TSUnderline({ Underlined }), -- For text to be represented with an underline.
		TSStrike({}), -- For strikethrough text.
		TSStrong({ Bold }),
		TSTitle({ Title }), -- Text that is part of a title.
		TSLiteral({ String }), -- Literal text.
		TSURI({ Underlined }), -- Any URI like a link or email.

		----- GIT SIGNS -----
		GitSignsAdd({ DiffAdd }),
		GitSignsChange({ DiffChange }),
		GitSignsDelete({ DiffDelete }),
		GitSignsCurrentLineBlame({ NonText }),

		----- telescope.nvim -----
		TelescopeSelection({ PmenuSel }),
		TelescopeSelectionCaret({ PmenuSel }),
		TelescopeMultiSelection({ fg = fg0 }),
		TelescopeNormal({ fg = fg0 }),
		TelescopeBorder({ TelescopeNormal }),
		TelescopePromptBorder({ TelescopeNormal }),
		TelescopeResultsBorder({ TelescopeNormal }),
		TelescopePreviewBorder({ TelescopeNormal }),
		TelescopeMatching({ fg = black, bg = orange }),
		TelescopePromptPrefix({ fg = red }),
		TelescopePrompt({ TelescopeNormal }),

		----- LSPSaga -----
		LspSagaLightBulb({ fg = yellow }),

		----- NVIM-CMP -----
		CmpItemKind({ fg = magenta }),
		CmpItemMenu({ Comment }),

		----- Indent Blanklines -----
		IndentBlanklineChar({ Comment }),

		----- LSPSaga -----
		-- LspFloatWinBorder({ bg = cyan, fg = cyan }),
		-- LspSagaHoverBorder({ bg = cyan, fg = cyan }),
		-- LineDiagTuncateLine({ bg = cyan, fg = cyan }),
		-- DiagnosticTruncateLine({ bg = cyan, fg = cyan }),
		-- DiagnosticError({ bg = cyan, fg = cyan }),
		-- DiagnosticWarning({ bg = cyan, fg = cyan }),
		-- DiagnosticInformation({ bg = cyan, fg = cyan }),
		-- DiagnosticHint({ bg = cyan, fg = cyan }),
		-- DiagnosticError({ DiagnosticsSignError }),
		-- DiagnosticWarning({ DiagnosticsSignWarn }),
		-- DiagnosticInformation({ DiagnosticsSignInfo }),
		-- DiagnosticHint({ DiagnosticsSignHint }),

    ----- Typescript -----
    typescriptAjaxMethods ({ Normal }),
    typescriptBraces ({ Normal }),
    typescriptEndColons ({ Normal }),
    typescriptFuncKeyword ({ Statement }),
    typescriptGlobalObjects ({ Statement }),
    typescriptHtmlElemProperties ({ Normal }),
    typescriptIdentifier ({ Statement }),
    typescriptMessage ({ Normal }),
    typescriptNull ({ Constant }),
    typescriptParens ({ Normal }),
    tsxTag ({ fg=magenta, gui=bold  })
	}
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
