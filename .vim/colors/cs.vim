" cs - color scheme

hi clear

set background=dark

if version > 580
	hi clear

	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="cs"

" color names
let s:mainbg = ['black', '#222233']
let s:mainfg = ['white', '#aabbbb']

let s:black = ['black', '#334455']
let s:red = ['red', '#dd4455']
let s:green = ['green', '#77bb55']
let s:yellow = ['yellow', '#cc7744']
let s:blue = ['blue', '#3388ee']
let s:magenta = ['magenta', '#aa55aa']
let s:cyan = ['cyan', '#339999']
let s:white = ['white', '#eeeeee']
let s:gray = ['gray', '#667788']

" functions
function!  s:Hi(group, fg, bg)
	let cmd = 'hi ' . a:group

	let cmd .= ' term=NONE'

	let cmd .= ' ctermfg=' . a:fg[0]
	let cmd .= ' ctermbg=' . a:bg[0]

	let cmd .= ' guifg=' . a:fg[1]
	let cmd .= ' guibg=' . a:bg[1]

	execute cmd
endfunction

" regular highlights
call s:Hi('ColorColumn', s:red, s:red)
call s:Hi('CursorLine', s:mainfg, s:mainbg)
call s:Hi('CursorLineNr', s:gray, s:mainbg)
call s:Hi("DiffAdd", s:mainbg, s:green)
call s:Hi("DiffChange", s:mainbg, s:green)
call s:Hi("DiffDelete", s:red, s:mainbg)
call s:Hi("DiffText", s:mainfg, s:mainbg)
call s:Hi('ErrorMsg', s:red, s:mainbg)
call s:Hi('EndOfBuffer', s:mainbg, s:mainbg)
call s:Hi('FoldColumn', s:gray, s:mainbg)
call s:Hi('Folded', s:gray, s:mainbg)
call s:Hi('ColorColumn', s:mainfg, s:mainfg)
call s:Hi('IncSearch', s:mainfg, s:mainbg)
call s:Hi('LineNr', s:gray, s:mainbg)
call s:Hi('Question', s:red, s:mainbg)
call s:Hi('Search', s:black, s:yellow)
call s:Hi('SpecialKey', s:mainfg, s:mainbg)
call s:Hi('Title', s:gray, s:mainbg)
call s:Hi('Visual', s:blue, s:mainbg)
call s:Hi('WarningMsg', s:red, s:mainbg)
call s:Hi('WildMenu', s:mainfg, s:mainbg)

" syntax highlights
call s:Hi('Boolean', s:yellow, s:mainbg)
call s:Hi('Character', s:green, s:mainbg)
call s:Hi('Comment', s:gray, s:mainbg)
call s:Hi('Conditional', s:magenta, s:mainbg)
call s:Hi('Constant', s:cyan, s:mainbg)
call s:Hi('Error', s:red, s:mainbg)
call s:Hi('Exception', s:magenta, s:mainbg)
call s:Hi('Float', s:yellow, s:mainbg)
call s:Hi('Function', s:blue, s:mainbg)
call s:Hi('htmlTagName', s:red, s:mainbg)
call s:Hi('Identifier', s:red, s:mainbg)
call s:Hi('Include', s:blue, s:mainbg)
call s:Hi('Keyword', s:red, s:mainbg)
call s:Hi('Label', s:magenta, s:mainbg)
call s:Hi('lCursor', s:mainfg, s:mainbg)
call s:Hi('MatchParen', s:blue, s:mainbg)
call s:Hi('NONE', s:mainfg, s:mainbg)
call s:Hi('Normal', s:mainfg, s:mainbg)
call s:Hi('Number', s:yellow, s:mainbg)
call s:Hi('Operator', s:magenta, s:mainbg)
call s:Hi('PreProc', s:yellow, s:mainbg)
call s:Hi('Repeat', s:magenta, s:mainbg)
call s:Hi('Special', s:blue, s:mainbg)
call s:Hi('Statement', s:magenta, s:mainbg)
call s:Hi('String', s:green, s:mainbg)
call s:Hi('Todo', s:magenta, s:mainbg)
call s:Hi('Type', s:yellow, s:mainbg)
call s:Hi('Underlined', s:gray, s:mainbg)
call s:Hi('User1', s:mainfg, s:mainbg)
