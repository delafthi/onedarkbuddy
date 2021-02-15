local Color, colors, Group, group, style = require('colorbuddy').setup()
local c = colors
local g = group
local s = style
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE

vim.g.colors_name = 'onehalfbuddy'

-- Dark color scheme {{{1
Color.new('red'          , '#e06c75')
Color.new('green'        , '#98c379')
Color.new('orange'       , '#e59F70')
Color.new('yellow'       , '#e5c07b')
Color.new('blue'         , '#61afef')
Color.new('purple'       , '#c678dd')
Color.new('cyan'         , '#56b6c2')

Color.new('red_dark'     , '#be646a')
Color.new('green_dark'   , '#7e9d69')
Color.new('orange_dark'  , '#c08768')
Color.new('yellow_dark'  , '#bd9e6f')
Color.new('blue_dark'    , '#5f96c9')
Color.new('purple_dark'  , '#a86cbb')
Color.new('cyan_dark'    , '#51969f')

Color.new('red_light'    , '#e8838c')
Color.new('green_light'  , '#a6d18c')
Color.new('orange_light' , '#ecb07e')
Color.new('yellow_light' , '#eccd84')
Color.new('blue_light'   , '#75c2f3')
Color.new('purple_light' , '#d38de6')
Color.new('cyan_light'   , '#69c7d1')

Color.new('black'        , '#282c34')
Color.new('white'        , '#dcdfe4')

Color.new('mono1'        , '#313640')
Color.new('mono2'        , '#4b5263')
Color.new('mono3'        , '#5c6370')
Color.new('mono4'        , '#919baa')
Color.new('mono5'        , '#abb2bf')

-- Vim Terminal Colors {{{1

vim.g.terminal_color_0  = "#313540"
vim.g.terminal_color_8  = "#4b5263"
vim.g.terminal_color_1  = "#e06c75"
vim.g.terminal_color_9  = "#e8838c"
vim.g.terminal_color_2  = "#98c379"
vim.g.terminal_color_10 = "#a6d18c"
vim.g.terminal_color_3  = "#e5c07b"
vim.g.terminal_color_11 = "#eccd84"
vim.g.terminal_color_4  = "#61afef"
vim.g.terminal_color_12 = "#75c2f3"
vim.g.terminal_color_5  = "#c678dd"
vim.g.terminal_color_13 = "#d38de6"
vim.g.terminal_color_6  = "#56b6c2"
vim.g.terminal_color_14 = "#69c7d1"
vim.g.terminal_color_7  = "#dcdfe4"
vim.g.terminal_color_15 = "#abb2bf"

-- Syntax Groups (descriptions and ordering from `:h w18`) {{{1

Group.new('Comment'        , c.mono3        , c.none , no)    -- any comment

Group.new('Constant'       , c.cyan         , c.none , no)    -- any constant
Group.new('String'         , c.green        , c.none , no)    -- this is a string
Group.new('Character'      , c.green_light  , c.none , no)    -- a character constant: 'c', '\n'
Group.new('Number'         , c.orange       , c.none , no)    -- a boolean constant: TRUE, false
Group.new('Boolean'        , c.orange_light , c.none , no)    -- a boolean constant: TRUE, false
Group.new('Float'          , c.orange_dark  , c.none , no)    -- a floating point constant: 2.3e10

Group.new('Identifier'     , c.red          , c.none , no)    -- any variable name
Group.new('Function'       , c.blue         , c.none , b)     -- function name (also: methods for classes)

Group.new('Statement'      , c.purple       , c.none , i)     -- any statement
Group.new('Conditional'    , c.purple       , c.none , i)     -- if, then, else, endif, switch, etc.
Group.new('Repeat'         , c.purple       , c.none , i)     -- for, do, while, etc.
Group.new('Label'          , c.purple       , c.none , i)     -- case, default, etc.
Group.new('Operator'       , c.purple_light , c.none , no)    -- sizeof", "+", "*", etc.
Group.new('Keyword'        , c.blue         , c.none , i)     -- any other keyword
Group.new('Exception'      , c.purple_dark  , c.none , i)     -- try, catch, throw

Group.new('PreProc'        , c.yellow       , c.none , no)    -- generic Preprocessor
Group.new('Include'        , c.blue         , c.none , no)    -- preprocessor #include
Group.new('Define'         , c.purple       , c.none , no)    -- preprocessor #define
Group.new('Macro'          , c.purple       , c.none , b)     -- same as Define
Group.new('PreCondit'      , c.yellow       , c.none , no)    -- preprocessor #if, #else, #endif, etc.

Group.new('Type'           , c.yellow       , c.none , no)    -- int, long, char, etc.
Group.new('StorageClass'   , c.yellow_dark  , c.none , b)     -- static, register, volatile, etc.
Group.new('Structure'      , c.yellow_light , c.none , b)     -- struct, union, enum, etc.
Group.new('Typedef'        , c.yellow_light , c.none , no)    -- A typedef

Group.new('Special'        , c.blue         , c.none , i)     -- any special symbol
Group.new('SpecialChar'    , c.yellow_dark  , c.none , b)     -- special character in a constant
Group.new('Tag'            , c.none         , c.none , no)    -- you can use CTRL-] on this
Group.new('Delimiter'      , c.none         , c.none , no)    -- character that needs attention
Group.new('SpecialComment' , c.mono3        , c.none , no)    -- special things inside a comment
Group.new('Debug'          , c.none         , c.none , b)     -- debugging statements

Group.new('Underlined'     , c.blue         , c.none , ul)    -- text that stands out, HTML links

Group.new('Ignore'         , c.none         , c.none , no)    -- left blank, hidden

Group.new('Error'          , c.red          , c.none , no)    -- any erroneous construct

Group.new('Todo'           , c.purple       , c.none , b + r) -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

-- Highlighting Groups (descriptions and ordering from `:h highlight-groups`) {{{1

Group.new('ColorColumn'  , c.none         , c.mono1   , no)        -- used for the columns set with 'colorcolumn'
Group.new('Conceal'      , c.none         , c.none    , no)        -- placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor'       , c.white        , c.none    , b + r)     -- the character under the cursor
Group.new('lCursor'      , c.white        , c.none    , b + r)     -- the character under the crusor when language-mapping is used (see 'guicursor')
Group.new('CursorIM'     , c.none         , c.none    , no)        -- like Cursor, but used when in IME mode
Group.new('CursorColumn' , c.none         , c.none    , b + r)     -- Screen-column at the  cursor, when 'cursorcolumn' is set.
Group.new('CursorLine'   , c.none         , c.mono1   , no)        -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guigf) is not set.
Group.new('Directory'    , c.blue         , c.none    , b)         -- directory names (and other special names in listings)
Group.new('DiffAdd'      , c.green        , c.none    , r)         -- diff mode: Added line
Group.new('DiffChange'   , c.yellow       , c.none    , r)         -- diff mode: Changed line
Group.new('DiffDelete'   , c.red          , c.none    , r)         -- diff mode: Deleted line
Group.new('DiffText'     , c.yellow       , c.none    , r)         -- diff mode: Changed text within a changed line
Group.new('EndOfBuffer'  , c.mono1        , c.none    , no)        -- filler lines (~) after the last line in the buffer
Group.new('TermCursor'   , c.white        , c.none    , b + r)     -- cursor in a focused terminal
Group.new('TermCursorNC' , c.mono2        , c.none    , b + r)     -- cursor in an unfocused terminal
Group.new('ErrorMsg'     , c.red          , c.none    , no)        -- error messages on the command line
Group.new('VertSplit'    , c.mono1        , c.none    , b)         -- the column separating vertically split windows
Group.new('Folded'       , c.none         , c.mono2   , b)         -- line used for closed folds
Group.new('FoldColumn'   , c.none         , c.mono2   , no)        -- 'foldcolumn'
Group.new('SignColumn'   , c.none         , c.none   , no)         -- column where signs are displayed
Group.new('IncSearch'    , c.yellow_dark  , c.none    , b + r)     -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('Substitute'   , c.yellow_dark  , c.none    , b + r)     -- :substitute replacement text highlighting
Group.new('LineNr'       , c.mono2        , c.none    , no)        -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('CursorLineNr' , c.blue         , c.none    , b)         -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
Group.new('MatchParen'   , c.blue         , c.none    , ul)        -- The character under the cursor or just before it, if it is a paired bracket, and its match.
Group.new('ModeMsg'      , c.none         , c.none    , no)        -- 'showmode' message (e.g., "-- INSERT -- ")
Group.new('MsgArea'      , c.none         , c.none    , no)        -- Area for messages and cmdline
Group.new('MsgSeparator' , c.none         , c.none    , no)        -- Separator for scrolled messages, msgsep flag of 'display'
Group.new('MoreMsg'      , g.ModeMsg      , g.ModeMsg , g.ModeMsg) -- more-prompt
Group.new('NonText'      , c.mono3        , c.none    , no)        -- '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g. , ">" displayed when a double-wide character doesn't fit at the end of the line).
Group.new('Normal'       , c.white        , c.none    , no)        -- normal text
Group.new('NormalFloat'  , c.white        , c.none    , no)        -- normal text in floating windows
Group.new('NormalNC'     , c.white        , c.none    , no)        -- normal text in non-current windows
Group.new('Pmenu'        , c.white        , c.mono2   , no)        -- Popup menu: normal item.
Group.new('PmenuSel'     , c.blue         , c.none    , b + r)     -- Popup menu: selected item.
Group.new('PmenuSbar'    , c.none         , c.mono4   , no)        -- Popup menu: scrollbar.
Group.new('PmenuThumb'   , c.none         , c.white   , no)        -- Popup menu: Thumb of the scrollbar.
Group.new('Question'     , c.purple       , c.none    , b)         -- hit-enter prompt and yes/no questions
Group.new('QuickFixLine' , c.yellow       , c.none    , b + r)     -- Current quickfix item in the quickfix window.
Group.new('Search'       , c.yellow       , c.none    , b + r)     -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('SpecialKey'   , c.mono3        , c.none    , no)        -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
Group.new('SpellBad'     , c.red          , c.none    , uc)        -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap'     , c.yellow       , c.none    , no)        -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal'   , c.yellow_dark  , c.none    , no)        -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare'    , c.yellow_light , c.none    , no)        -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
Group.new('StatusLine'   , c.white        , c.mono1   , no)        -- status line of current window
Group.new('StatusLineNC' , c.mono4        , c.mono1   , no)        -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
Group.new('TabLine'      , c.mono3        , c.mono1   , no)        -- tab pages line, not active tap page label
Group.new('TabLineFill'  , c.none         , c.mono1   , no)        -- tab pages line, where there are no labels
Group.new('TabLineSel'   , c.white        , c.black   , no)        -- tab pages line, active tab page label
Group.new('Title'        , c.green        , c.none    , b)         -- titles for output from ":set all", ":autocmd" etc.
Group.new('Visual'       , c.black        , c.blue    , no)         -- Visual mode selection
Group.new('VisualNOS'    , g.Visual       , g.Visual  , g.Visual)  -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('WarningMsg'   , c.yellow       , c.none    , no)        -- warning messages
Group.new('Whitespace'   , c.mono3        , c.none    , no)        -- "nbsp", "space", "tab" and "trail" in 'listchars'
Group.new('WildMenu'     , c.blue         , c.none    , b + r)     -- current match in 'wildmenu' completion

-- Language-Specific Highlighting {{{1

-- Asciidoc
Group.new('asciidocListingBlock' , c.mono4 , c.none , no)

-- C/C++ highlighting
Group.new('cInclude'          , c.purple , c.none , no)
Group.new('cPreCondit'        , c.purple , c.none , no)
Group.new('cPreConditMatch'   , c.purple , c.none , no)
Group.new('cType'             , c.purple , c.none , no)
Group.new('cStorageClass'     , c.purple , c.none , no)
Group.new('cStructure'        , c.purple , c.none , no)
Group.new('cOperator'         , c.purple , c.none , no)
Group.new('cStatement'        , c.purple , c.none , no)
Group.new('cTODO'             , c.purple , c.none , no)
Group.new('cConstant'         , c.orange , c.none , no)
Group.new('cSpecial'          , c.cyan   , c.none , no)
Group.new('cSpecialCharacter' , c.cyan   , c.none , no)
Group.new('cString'           , c.green  , c.none , no)
Group.new('cppType'           , c.purple , c.none , no)
Group.new('cppStorageClass'   , c.purple , c.none , no)
Group.new('cppStructure'      , c.purple , c.none , no)
Group.new('cppModifier'       , c.purple , c.none , no)
Group.new('cppOperator'       , c.purple , c.none , no)
Group.new('cppAccess'         , c.purple , c.none , no)
Group.new('cppStatement'      , c.purple , c.none , no)
Group.new('cppConstant'       , c.red    , c.none , no)
Group.new('cCppString'        , c.green  , c.none , no)

-- Cucumber
Group.new('cucumberGiven'           , c.blue   , c.none , no)
Group.new('cucumberWhen'            , c.blue   , c.none , no)
Group.new('cucumberWhenAnd'         , c.blue   , c.none , no)
Group.new('cucumberThen'            , c.blue   , c.none , no)
Group.new('cucumberThenAnd'         , c.blue   , c.none , no)
Group.new('cucumberUnparsed'        , c.orange , c.none , no)
Group.new('cucumberFeature'         , c.red    , c.none , b)
Group.new('cucumberBackground'      , c.purple , c.none , b)
Group.new('cucumberScenario'        , c.purple , c.none , b)
Group.new('cucumberScenarioOutline' , c.purple , c.none , b)
Group.new('cucumberTags'            , c.mono3  , c.none , b)
Group.new('cucumberDelimiter'       , c.mono3  , c.none , b)

-- CSS/Sass
Group.new('cssAttrComma'         , c.purple , c.none , no)
Group.new('cssAttributeSelector' , c.green  , c.none , no)
Group.new('cssBraces'            , c.mono4  , c.none , no)
Group.new('cssClassName'         , c.orange , c.none , no)
Group.new('cssClassNameDot'      , c.orange , c.none , no)
Group.new('cssDefinition'        , c.purple , c.none , no)
Group.new('cssFontAttr'          , c.orange , c.none , no)
Group.new('cssFontDescriptor'    , c.purple , c.none , no)
Group.new('cssFunctionName'      , c.blue   , c.none , no)
Group.new('cssIdentifier'        , c.blue   , c.none , no)
Group.new('cssImportant'         , c.purple , c.none , no)
Group.new('cssInclude'           , c.white  , c.none , no)
Group.new('cssIncludeKeyword'    , c.purple , c.none , no)
Group.new('cssMediaType'         , c.orange , c.none , no)
Group.new('cssProp'              , c.cyan   , c.none , no)
Group.new('cssPseudoClassId'     , c.orange , c.none , no)
Group.new('cssSelectorOp'        , c.purple , c.none , no)
Group.new('cssSelectorOp2'       , c.purple , c.none , no)
Group.new('cssStringQ'           , c.green  , c.none , no)
Group.new('cssStringQQ'          , c.green  , c.none , no)
Group.new('cssTagName'           , c.red    , c.none , no)
Group.new('cssAttr'              , c.orange , c.none , no)
Group.new('sassAmpersand'        , c.red    , c.none , no)
Group.new('sassClass'            , c.yellow , c.none , no)
Group.new('sassControl'          , c.purple , c.none , no)
Group.new('sassExtend'           , c.purple , c.none , no)
Group.new('sassFor'              , c.white  , c.none , no)
Group.new('sassProperty'         , c.cyan   , c.none , no)
Group.new('sassFunction'         , c.cyan   , c.none , no)
Group.new('sassId'               , c.blue   , c.none , no)
Group.new('sassInclude'          , c.purple , c.none , no)
Group.new('sassMedia'            , c.purple , c.none , no)
Group.new('sassMediaOperators'   , c.white  , c.none , no)
Group.new('sassMixin'            , c.purple , c.none , no)
Group.new('sassMixinName'        , c.blue   , c.none , no)
Group.new('sassMixing'           , c.purple , c.none , no)
Group.new('scssSelectorName'     , c.yellow , c.none , no)

-- Elixir highlighting

Group.new('elixirModuleDefine'      , g.Define , g.Define , g.Define)
Group.new('elixirAlias'             , c.yellow , c.none   , no)
Group.new('elixirAtom'              , c.cyan   , c.none   , no)
Group.new('elixirBlockDefinition'   , c.purple , c.none   , no)
Group.new('elixirModuleDeclaration' , c.orange , c.none   , no)
Group.new('elixirInclude'           , c.red    , c.none   , no)
Group.new('elixirOperator'          , c.orange , c.none   , no)

-- Git and git related plugins
Group.new('gitcommitComment'        , c.mono3                  , c.none                   , no)
Group.new('gitcommitUnmerged'       , c.green                  , c.none                   , no)
Group.new('gitcommitOnBranch'       , c.none                   , c.none                   , no)
Group.new('gitcommitBranch'         , c.purple                 , c.none                   , no)
Group.new('gitcommitDiscardedType'  , c.red                    , c.none                   , no)
Group.new('gitcommitSelectedType'   , c.green                  , c.none                   , no)
Group.new('gitcommitHeader'         , c.none                   , c.none                   , no)
Group.new('gitcommitUntrackedFile'  , c.cyan                   , c.none                   , no)
Group.new('gitcommitDiscardedFile'  , c.red                    , c.none                   , no)
Group.new('gitcommitSelectedFile'   , c.green                  , c.none                   , no)
Group.new('gitcommitUnmergedFile'   , c.yellow                 , c.none                   , no)
Group.new('gitcommitFile'           , c.none                   , c.none                   , no)
Group.new('gitcommitNoBranch'       , g.gitcommitBranch        , g.gitcommitBranch        , g.gitcommitBranch)
Group.new('gitcommitUntracked'      , g.gitcommitComment       , g.gitcommitComment       , g.gitcommitComment)
Group.new('gitcommitDiscarded'      , g.gitcommitComment       , g.gitcommitComment       , g.gitcommitComment)
Group.new('gitcommitDiscardedArrow' , g.gitcommitDiscardedFile , g.gitcommitDiscardedFile , g.gitcommitDiscardedFile)
Group.new('gitcommitSelectedArrow'  , g.gitcommitSelectedFile  , g.gitcommitSelectedFile  , g.gitcommitSelectedFile)
Group.new('gitcommitUnmergedArrow'  , g.gitcommitUnmergedFile  , g.gitcommitUnmergedFile  , g.gitcommitUnmergedFile)
Group.new('SignifySignAdd'          , c.green                  , c.none                   , no)
Group.new('SignifySignChange'       , c.yellow                 , c.none                   , no)
Group.new('SignifySignDelete'       , c.red                    , c.none                   , no)
Group.new('GitGutterAdd'            , g.SignifySignAdd         , g.SignifySignAdd         , g.SignifySignAdd)
Group.new('GitGutterChange'         , g.SignifySignChange      , g.SignifySignChange      , g.SignifySignChange)
Group.new('GitGutterDelete'         , g.SignifySignDelete      , g.SignifySignDelete      , g.SignifySignDelete)
Group.new('diffAdded'               , c.green                  , c.none                   , no)
Group.new('diffRemoved'             , c.red                    , c.none                   , no)

-- Go
Group.new('goDeclaration'  , c.purple , c.none , no)
Group.new('goField'        , c.red    , c.none , no)
Group.new('goMethod'       , c.cyan   , c.none , no)
Group.new('goType'         , c.purple , c.none , no)
Group.new('goUnsignedInts' , c.cyan   , c.none , no)

-- Haskell highlighting
Group.new('haskellDeclKeyword'    , c.blue   , c.none , no)
Group.new('haskellType'           , c.green  , c.none , no)
Group.new('haskellWhere'          , c.red    , c.none , no)
Group.new('haskellImportKeywords' , c.blue   , c.none , no)
Group.new('haskellOperators'      , c.red    , c.none , no)
Group.new('haskellDelimiter'      , c.blue   , c.none , no)
Group.new('haskellIdentifier'     , c.orange , c.none , no)
Group.new('haskellKeyword'        , c.red    , c.none , no)
Group.new('haskellNumber'         , c.cyan   , c.none , no)
Group.new('haskellString'         , c.cyan   , c.none , no)

-- HTML
Group.new('htmlArg'            , c.orange , c.none  , no)
Group.new('htmlTagName'        , c.red    , c.none  , no)
Group.new('htmlTagN'           , c.red    , c.none  , no)
Group.new('htmlSpecialTagName' , c.red    , c.none  , no)
Group.new('htmlTag'            , c.mono4  , c.none  , no)
Group.new('htmlEndTag'         , c.mono4  , c.none  , no)
Group.new('MatchTag'           , c.red    , c.mono1 , ul + b)

-- JavaScript
Group.new('coffeeString'                      , c.green    , c.none , no)
Group.new('javaScriptBraces'                  , c.mono4    , c.none , no)
Group.new('javaScriptFunction'                , c.purple   , c.none , no)
Group.new('javaScriptIdentifier'              , c.purple   , c.none , no)
Group.new('javaScriptNull'                    , c.orange   , c.none , no)
Group.new('javaScriptNumber'                  , c.orange   , c.none , no)
Group.new('javaScriptRequire'                 , c.cyan     , c.none , no)
Group.new('javaScriptReserved'                , c.purple   , c.none , no)
-- httpc.//github.com/pangloss/vim-javascript
Group.new('jsArrowFunction'                   , c.purple   , c.none , no)
Group.new('jsBraces'                          , c.mono4    , c.none , no)
Group.new('jsClassBraces'                     , c.mono4    , c.none , no)
Group.new('jsClassKeywords'                   , c.purple   , c.none , no)
Group.new('jsDocParam'                        , c.blue     , c.none , no)
Group.new('jsDocTags'                         , c.purple   , c.none , no)
Group.new('jsFuncBraces'                      , c.mono4    , c.none , no)
Group.new('jsFuncCall'                        , c.blue     , c.none , no)
Group.new('jsFuncParens'                      , c.blue    , c.none , no)
Group.new('jsFunction'                        , c.purple   , c.none , no)
Group.new('jsGlobalObjects'                   , c.yellow   , c.none , no)
Group.new('jsModuleWords'                     , c.purple   , c.none , no)
Group.new('jsModules'                         , c.purple   , c.none , no)
Group.new('jsNoise'                           , c.mono4    , c.none , no)
Group.new('jsNull'                            , c.orange   , c.none , no)
Group.new('jsOperator'                        , c.purple   , c.none , no)
Group.new('jsParens'                          , c.blue    , c.none , no)
Group.new('jsStorageClass'                    , c.purple   , c.none , no)
Group.new('jsTemplateBraces'                  , c.red_dark , c.none , no)
Group.new('jsTemplateVar'                     , c.green    , c.none , no)
Group.new('jsThis'                            , c.red      , c.none , no)
Group.new('jsUndefined'                       , c.orange   , c.none , no)
Group.new('jsObjectValue'                     , c.blue     , c.none , no)
Group.new('jsObjectKey'                       , c.cyan     , c.none , no)
Group.new('jsReturn'                          , c.purple   , c.none , no)
-- httpc.//github.com/othree/yajs.vim
Group.new('javascriptArrowFunc'               , c.purple   , c.none , no)
Group.new('javascriptClassExtends'            , c.purple   , c.none , no)
Group.new('javascriptClassKeyword'            , c.purple   , c.none , no)
Group.new('javascriptDocNotation'             , c.purple   , c.none , no)
Group.new('javascriptDocParamName'            , c.blue     , c.none , no)
Group.new('javascriptDocTags'                 , c.purple   , c.none , no)
Group.new('javascriptEndColons'               , c.mono3    , c.none , no)
Group.new('javascriptExport'                  , c.purple   , c.none , no)
Group.new('javascriptFuncArg'                 , c.white    , c.none , no)
Group.new('javascriptFuncKeyword'             , c.purple   , c.none , no)
Group.new('javascriptIdentifier'              , c.red      , c.none , no)
Group.new('javascriptImport'                  , c.purple   , c.none , no)
Group.new('javascriptObjectLabel'             , c.white    , c.none , no)
Group.new('javascriptOpSymbol'                , c.cyan     , c.none , no)
Group.new('javascriptOpSymbols'               , c.cyan     , c.none , no)
Group.new('javascriptPropertyName'            , c.green    , c.none , no)
Group.new('javascriptTemplateSB'              , c.red_dark , c.none , no)
Group.new('javascriptVariable'                , c.purple   , c.none , no)

-- JSON
Group.new('jsonCommentError'       , c.white  , c.none , no)
Group.new('jsonKeyword'            , c.red    , c.none , no)
Group.new('jsonQuote'              , c.mono3  , c.none , no)
Group.new('jsonTrailingCommaError' , c.red    , c.none , r)
Group.new('jsonMissingCommaError'  , c.red    , c.none , r)
Group.new('jsonNoQuotesError'      , c.red    , c.none , r)
Group.new('jsonNumError'           , c.red    , c.none , r)
Group.new('jsonString'             , c.green  , c.none , no)
Group.new('jsonBoolean'            , c.purple , c.none , no)
Group.new('jsonNumber'             , c.orange , c.none , no)
Group.new('jsonStringSQError'      , c.red    , c.none , r)
Group.new('jsonSemicolonError'     , c.red    , c.none , r)

-- Markdown
Group.new('markdownUrl'              , c.mono3    , c.none , no)
Group.new('markdownBold'             , c.orange   , c.none , b)
Group.new('markdownItalic'           , c.orange   , c.none , b)
Group.new('markdownCode'             , c.green    , c.none , no)
Group.new('markdownCodeBlock'        , c.red      , c.none , no)
Group.new('markdownCodeDelimiter'    , c.green    , c.none , no)
Group.new('markdownHeadingDelimiter' , c.red_dark , c.none , no)
Group.new('markdownH1'               , c.red      , c.none , no)
Group.new('markdownH2'               , c.red      , c.none , no)
Group.new('markdownH3'               , c.red      , c.none , no)
Group.new('markdownH3'               , c.red      , c.none , no)
Group.new('markdownH4'               , c.red      , c.none , no)
Group.new('markdownH5'               , c.red      , c.none , no)
Group.new('markdownH6'               , c.red      , c.none , no)
Group.new('markdownListMarker'       , c.red      , c.none , no)

-- PHP
Group.new('phpClass'        , c.yellow , c.none , no)
Group.new('phpFunction'     , c.blue   , c.none , no)
Group.new('phpFunctions'    , c.blue   , c.none , no)
Group.new('phpInclude'      , c.purple , c.none , no)
Group.new('phpKeyword'      , c.purple , c.none , no)
Group.new('phpParent'       , c.mono3  , c.none , no)
Group.new('phpType'         , c.purple , c.none , no)
Group.new('phpSuperGlobals' , c.red    , c.none , no)

-- Pug (Formerly Jade)
Group.new('pugAttributesDelimiter' , c.orange , c.none , no)
Group.new('pugClass'               , c.orange , c.none , no)
Group.new('pugDocType'             , c.mono3  , c.none , i)
Group.new('pugTag'                 , c.red    , c.none , no)

-- PureScript
Group.new('purescriptKeyword'     , c.purple , c.none , no)
Group.new('purescriptModuleName'  , c.white  , c.none , no)
Group.new('purescriptIdentifier'  , c.white  , c.none , no)
Group.new('purescriptType'        , c.yellow , c.none , no)
Group.new('purescriptTypeVar'     , c.red    , c.none , no)
Group.new('purescriptConstructor' , c.red    , c.none , no)
Group.new('purescriptOperator'    , c.white  , c.none , no)

-- Python
Group.new('pythonImport'          , c.purple , c.none , no)
Group.new('pythonBuiltin'         , c.cyan   , c.none , no)
Group.new('pythonStatement'       , c.purple , c.none , no)
Group.new('pythonParam'           , c.orange , c.none , no)
Group.new('pythonEscape'          , c.red    , c.none , no)
Group.new('pythonSelf'            , c.mono4  , c.none , i)
Group.new('pythonClass'           , c.blue   , c.none , no)
Group.new('pythonOperator'        , c.purple , c.none , no)
Group.new('pythonEscape'          , c.red    , c.none , no)
Group.new('pythonFunction'        , c.blue   , c.none , no)
Group.new('pythonKeyword'         , c.blue   , c.none , no)
Group.new('pythonModule'          , c.purple , c.none , no)
Group.new('pythonStringDelimiter' , c.green  , c.none , no)
Group.new('pythonSymbol'          , c.cyan   , c.none , no)

-- Ruby
Group.new('rubyBlock'                     , c.purple , c.none , no)
Group.new('rubyBlockParameter'            , c.red    , c.none , no)
Group.new('rubyBlockParameterList'        , c.red    , c.none , no)
Group.new('rubyCapitalizedMethod'         , c.purple , c.none , no)
Group.new('rubyClass'                     , c.purple , c.none , no)
Group.new('rubyConstant'                  , c.yellow , c.none , no)
Group.new('rubyControl'                   , c.purple , c.none , no)
Group.new('rubyDefine'                    , c.purple , c.none , no)
Group.new('rubyEscape'                    , c.red    , c.none , no)
Group.new('rubyFunction'                  , c.blue   , c.none , no)
Group.new('rubyGlobalVariable'            , c.red    , c.none , no)
Group.new('rubyInclude'                   , c.blue   , c.none , no)
Group.new('rubyIncluderubyGlobalVariable' , c.red    , c.none , no)
Group.new('rubyInstanceVariable'          , c.red    , c.none , no)
Group.new('rubyInterpolation'             , c.cyan   , c.none , no)
Group.new('rubyInterpolationDelimiter'    , c.red    , c.none , no)
Group.new('rubyKeyword'                   , c.blue   , c.none , no)
Group.new('rubyModule'                    , c.purple , c.none , no)
Group.new('rubyPseudoVariable'            , c.red    , c.none , no)
Group.new('rubyRegexp'                    , c.cyan   , c.none , no)
Group.new('rubyRegexpDelimiter'           , c.cyan   , c.none , no)
Group.new('rubyStringDelimiter'           , c.green  , c.none , no)
Group.new('rubySymbol'                    , c.cyan   , c.none , no)

-- Vim
Group.new('vimCommand'      , c.red        , g.Keyword  , g.Keyword)
Group.new('vimCommentTitle' , g.Comment    , g.Comment  , b)
Group.new('vimFunction'     , c.blue       , g.Function , g.Function)
Group.new('vimFuncName'     , c.blue_dark  , g.Function , g.Function)
Group.new('vimHighlight'    , c.blue       , c.mono1    , no)
Group.new('vimLineComment'  , g.Comment    , g.Comment  , g.Comment)
Group.new('vimParenSep'     , c.blue       , c.none     , no)
Group.new('vimSep'          , c.white      , c.none     , no)
Group.new('vimUserFunc'     , c.blue_light , g.Function , g.Function)
Group.new('vimVar'          , c.yellow     , c.none     , no)

-- XML
Group.new('xmlAttrib'  , c.yellow , c.none , no)
Group.new('xmlEndTag'  , c.red    , c.none , no)
Group.new('xmlTag'     , c.red    , c.none , no)
Group.new('xmlTagName' , c.red    , c.none , no)

-- ZSH
Group.new('zshCommands'    , c.white  , c.none , no)
Group.new('zshDeref'       , c.red    , c.none , no)
Group.new('zshShortDeref'  , c.red    , c.none , no)
Group.new('zshFunction'    , c.cyan   , c.none , no)
Group.new('zshKeyword'     , c.purple , c.none , no)
Group.new('zshSubst'       , c.red    , c.none , no)
Group.new('zshSubstDelim'  , c.mono3  , c.none , no)
Group.new('zshTypes'       , c.purple , c.none , no)
Group.new('zshVariableDef' , c.orange , c.none , no)

-- Rust
Group.new('rustExternCrate'          , c.red   , c.none , b)
Group.new('rustIdentifier'           , c.blue  , c.none , no)
Group.new('rustDeriveTrait'          , c.green , c.none , no)
Group.new('SpecialComment'           , c.mono3 , c.none , no)
Group.new('rustCommentLine'          , c.mono3 , c.none , no)
Group.new('rustCommentLineDoc'       , c.mono3 , c.none , no)
Group.new('rustCommentLineDocError'  , c.mono3 , c.none , no)
Group.new('rustCommentBlock'         , c.mono3 , c.none , no)
Group.new('rustCommentBlockDoc'      , c.mono3 , c.none , no)
Group.new('rustCommentBlockDocError' , c.mono3 , c.none , no)

-- Man
Group.new('manTitle'  , g.String , g.String , g.String)
Group.new('manFooter' , c.mono3  , c.none   , no)

-- Plugin Highlighting {{{1
  --
-- Netrw (vim builtin)
Group.new('netrwDir'      , c.blue       , c.none , no)
Group.new('netrwClassify' , c.blue       , c.none , no)
Group.new('netrwLink'     , c.cyan       , c.none , no)
Group.new('netrwSymLink'  , c.cyan       , c.none , no)
Group.new('netrwExe'      , c.green      , c.none , no)
Group.new('netrwComment'  , c.mono3      , c.none , no)
Group.new('netrwList'     , c.blue_light , c.none , no)
Group.new('netrwHelpCmd'  , c.mono3      , c.none , no)
Group.new('netrwCmdSep'   , c.white      , c.none , no)
Group.new('netrwVersion'  , c.purple     , c.none , no)

-- Startify (mhinz/vim-startify)
Group.new('StartifyBracket' , c.white  , c.none , no)
Group.new('StartifyFile'    , c.red    , c.none , b)
Group.new('StartifyNumber'  , c.yellow , c.none , no)
Group.new('StartifyPath'    , c.blue   , c.none , no)
Group.new('StartifySlash'   , c.white  , c.none , no)
Group.new('StartifySection' , c.purple , c.none , no)
Group.new('StartifySpecial' , c.mono3  , c.none , no)
Group.new('StartifyHeader'  , c.green  , c.none , no)
Group.new('StartifyFooter'  , c.green  , c.none , no)

-- Telescope (nvim-telescope/telescope.nvim)
Group.new('TelescopeSelection'      , c.blue_dark , c.mono1  , b)
Group.new('TelescopeSelectionCaret' , c.purple    , c.mono1  , b)
Group.new('TelescopeMultiSelection' , c.orange    , c.none   , no)
Group.new('TelescopeNormal'         , c.white     , c.none   , no)
Group.new('TelescopeBorder'         , c.mono4     , c.none   , no)
Group.new('TelescopePromptBorder'   , c.mono4     , c.none   , no)
Group.new('TelescopeResultBorder'   , c.mono4     , c.none   , no)
Group.new('TelescopePreviewBorder'  , c.mono4     , c.none   , no)
Group.new('TelescopeMatching'       , c.black     , c.yellow , no)
Group.new('TelescopePromptPrefix'   , c.purple    , c.none   , b)


-- Neovim Builtins {{{1

-- Neovim Support
Group.new('healthError'   , g.Error  , g.Error , g.Error)
Group.new('healthWarning' , c.yellow , c.none  , no)
Group.new('healthSuccess' , c.green  , c.none  , no)
Group.new('TermCursorNC'  , c.white  , c.none  , r)

-- LSP Groups (descriptions and ordering from `:h lsp-highlight`)
Group.new('LspReferenceText'                     , c.mono4                            , c.none                             , no)                                 -- used for highlighting "text" references
Group.new('LspReferenceRead'                     , c.mono4                            , c.none                             , no)                                 -- used for highlighting "read" references
Group.new('LspReferenceWrite'                    , c.mono4                            , c.none                             , no)                                 -- used for highlighting "write" references
Group.new('LspDiagnosticsDefaultError'           , g.Error                            , g.Error                            , g.Error)                            -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
Group.new('LspDiagnosticsDefaultWarning'         , c.yellow                           , c.none                             , no)                                 -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
Group.new('LspDiagnosticsDefaultInformation'     , c.blue                             , c.none                             , no)                                 -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
Group.new('LspDiagnosticsDefaultHint'            , c.mono4                            , c.none                             , no)                                 -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
Group.new('LspDiagnosticsVirtualTextError'       , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError)       -- Used for "Error" diangostic virtal text. See vim.lsp.diagnsotic.set_virtual_text()
Group.new('LspDiagnosticsVirtualTextWarning'     , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning)     -- Used for "Warning" diangostic virtal text. See vim.lsp.diagnsotic.set_virtual_text()
Group.new('LspDiagnosticsVirtualTextInformation' , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError)       -- Used for "Error" diangostic virtal text. See vim.lsp.diagnsotic.set_virtual_text()
Group.new('LspDiagnosticsVirtualTextHint'        , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint)        -- Used for "Hint" diangostic virtal text. See vim.lsp.diagnsotic.set_virtual_text()
Group.new('LspDiagnosticsVirtualUnderlineError'  , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError)       -- Used to underline "Error" diagnostics. See vim.lsp.diagnostic.set_underline()
Group.new('LspDiagnosticsUnderlineError'         , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning)     -- Used to underline "Warning" diagnostics. See vim.lsp.diagnostic.set_underline()
Group.new('LspDiagnosticsUnderlineInformation'   , g.LspDiagnosticsDefaultInformation , g.LspDiagnosticsDefaultInformation , g.LspDiagnosticsDefaultInformation) -- Used to underline "Information" diagnostics. See vim.lsp.diagnostic.set_underline()
Group.new('LspDiagnosticsUnderlineHint'          , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint)        -- Used to underline "Hint" diagnostics. See vim.lsp.diagnostic.set_underline()
Group.new('LspDiagnosticsFloatError'             , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError)       -- Used to color "Error" diagnostic messages in diagnostics float. See vim.lsp.diagnsotic.show_line_diagnostics()
Group.new('LspDiagnosticsFloatWarning'           , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning)     -- Used to color "Warning" diagnostic messages in diagnostics float. See vim.lsp.diagnsotic.show_line_diagnostics()
Group.new('LspDiagnosticsFloatInformation'       , g.LspDiagnosticsDefaultInformation , g.LspDiagnosticsDefaultInformation , g.LspDiagnosticsDefaultInformation) -- Used to color "Information" diagnostic messages in diagnostics float. See vim.lsp.diagnsotic.show_line_diagnostics()
Group.new('LspDiagnosticsFloatHint'              , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint)        -- Used to color "Hint" diagnostic messages in diagnostics float. See vim.lsp.diagnsotic.show_line_diagnostics()
Group.new('LspDiagnosticsSignError'              , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError       , g.LspDiagnosticsDefaultError)       -- Used to color "Error" signs in sign column. See vim.lsp.diagnostic.set_signs()
Group.new('LspDiagnosticsSignWarning'            , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning     , g.LspDiagnosticsDefaultWarning)     -- Used to color "Warning" signs in sign column. See vim.lsp.diagnostic.set_signs()
Group.new('LspDiagnosticsSignInformation'        , g.LspDiagnosticsDefaultInformation , g.LspDiagnosticsDefaultInformation , g.LspDiagnosticsDefaultInformation) -- Used to color "Information" signs in sign column. See vim.lsp.diagnostic.set_signs()
Group.new('LspDiagnosticsSignHint'               , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint        , g.LspDiagnosticsDefaultHint)        -- Used to color "Hint" signs in sign column. See vim.lsp.diagnostic.set_signs()

-- Nvim Treesitter Groups (descriptions and ordering from `:h nvim-treesitter-highlights`)
Group.new('TSAnnotation'         , c.yellow       , c.none        , no)            -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
Group.new('TSAttribute'          , c.cyan         , c.none        , no)            -- unstable TODO: docs
Group.new('TSBoolean'            , g.Boolean      , g.Boolean     , g.Boolean)     -- For booleans
Group.new('TSCharacter'          , g.Character    , g.Character   , g.Character)   -- For characters
Group.new('TSComment'            , g.Comment      , g.Comment     , g.Comment)     -- For commented blocks.
Group.new('TSConstructor'        , c.cyan         , c.none        , no)            -- For constructor calls and definitions: {} in Lua, and Java constructors.
Group.new('TSConditional'        , g.Conditional  , g.Conditional , g.Conditional) -- For keywords related to conditionnals
Group.new('TSConstant'           , g.Constant     , g.Constant    , g.Constant)    -- For constants
Group.new('TSConstBuiltin'       , c.orange       , c.none        , no)            -- For constant that are built in the language: `nil` in Lua
Group.new('TSConstMacro'         , c.cyan         , c.none        , no)            -- For constants that are defined by macros: `NULL` in C
Group.new('TSError'              , g.Error        , g.Error       , g.Error)       -- For syntax/par
Group.new('TSException'          , g.Exception    , g.Exception   , g.Exception)   -- For exception related keywords.
Group.new('TSField'              , c.red          , c.none        , no)            -- For fields.
Group.new('TSFloat'              , g.Float        , g.Float       , g.Float)       -- For floats
Group.new('TSFunction'           , g.Function     , g.Function    , g.Function)    -- For function (calls and definitions
Group.new('TSFuncBuiltin'        , g.Function     , g.Function    , g.Function)    -- For builtin functions: `table.insert` in Lua
Group.new('TSFuncMacro'          , c.yellow       , c.none        , no)            -- For macro defined functions (calls and definitions): each `macro_rules` in Rust.
Group.new('TSInclude'            , g.Include      , g.Include     , g.Include)     -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
Group.new('TSKeyword'            , g.Keyword      , g.Keyword     , g.Keyword)     -- For keywords that don't fall in previous categories.
Group.new('TSKeywordFunction'    , c.red          , c.none        , no)            -- For keywords used to define a function.
Group.new('TSLabel'              , g.Label        , g.Label       , g.Label)       -- For labels: `label:` in C and `:label:` in Lua
Group.new('TSMethod'             , c.blue         , c.none        , no)            -- For method calls and definitions.
Group.new('TSNamespace'          , c.purple_light , c.none        , no)            -- For identifiers referring to modules and namespaces.
Group.new('TSNumber'             , g.Number       , g.Number      , g.Number)      -- For integers
Group.new('TSOperator'           , g.Operator     , g.Operator    , g.Operator)    -- For any operator: `+`, but also `->` and `*` in C
Group.new('TSParameter'          , c.cyan         , c.none        , no)            -- For parameters of a function.
Group.new('TSParameterReference' , g.TSParameter  , g.TSParameter , g.TSParameter) -- For references to parameters of a function.
Group.new('TSProperty'           , g.TSField      , g.TSField     , g.TSField)     -- Same as `TSField`.
Group.new('TSPunctDelimiter'     , g.Delimiter    , g.Delimiter   , g.Delimiter)   -- For delimiters ie: `.
Group.new('TSPunctBracket'       , c.blue         , c.none        , no)            -- For brackets and parens
Group.new('TSPunctSpecial'       , c.white        , c.none        , no)            -- For special punctuation that does not fall in the categories before
Group.new('TSRepeat'             , g.Repeat       , g.Repeat      , g.Repeat)      -- For keywords related to loops
Group.new('TSString'             , g.String       , g.String      , g.String)      -- For strings
Group.new('TSStringRegex'        , c.green_dark   , c.none        , no)            -- For regexes
Group.new('TSStringEscape'       , c.cyan         , c.none        , no)            -- For escape characters within a string
Group.new('TSStructure'          , g.Structure    , g.Structure   , g.Structure)   -- This is left as an exercise for the reader.
Group.new('TSStrong'             , c.yellow       , c.none        , b)             -- For text to be represented with strong.
Group.new('TSTag'                , g.Tag          , g.Tag         , g.Tag)         -- Tags like html tag names.
Group.new('TSTagDelimeter'       , c.purple       , c.none        , no)            -- Tag delimiter link < > /
Group.new('TSText'               , c.yellow       , c.none        , no)            -- For strings considered text in a markup language.
Group.new('TSEmphasis'           , c.yellow       , c.none        , i)             -- For text to be represented with emphasis.
Group.new('TSUnderline'          , c.yellow       , c.none        , ul)            -- TSUnderline
Group.new('TSTitle'              , c.red          , c.none        , b)             -- Text that is part of a title.
Group.new('TSLiteral'            , c.cyan         , c.none        , b)             -- Literal text.
Group.new('TSURI'                , c.blue         , c.none        , ul)            -- Any URI like a link or email.
Group.new('TSType'               , g.Type         , g.Type        , g.Type)        -- For types.
Group.new('TSTypeBuiltin'        , g.Type         , g.Type        , g.Type)        -- For builtin types (you guessed it, right ?).
Group.new('TSVariable'           , c.purple_light , c.none        , no)            -- Variable names
Group.new('TSVariableBuiltin'    , c.yellow       , c.none        , no)            -- Variable names that are defined by the languages, like `this` or `self`.

-- }}}1
