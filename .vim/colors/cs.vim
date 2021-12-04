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
let s:mainbg = ['black', '#333333']
let s:mainfg = ['white', '#dddddd']
let s:color1 = ['gray', '#667788']
let s:color2 = ['red', '#dd6677']
let s:color3 = ['green', '#99cc88']
let s:color4 = ['blue', '#66aaee']
let s:color5 = ['yellow', '#eecc77']

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
call s:Hi('ColorColumn', s:color2, s:color2)
call s:Hi('CursorLine', s:mainfg, s:mainbg)
call s:Hi('CursorLineNr', s:color1, s:mainbg)
call s:Hi("DiffAdd", s:mainbg, s:color3)
call s:Hi("DiffChange", s:mainbg, s:color3)
call s:Hi("DiffDelete", s:color2, s:mainbg)
call s:Hi("DiffText", s:mainfg, s:mainbg)
call s:Hi('ErrorMsg', s:color2, s:mainbg)
call s:Hi('FoldColumn', s:color1, s:mainbg)
call s:Hi('Folded', s:color1, s:mainbg)
call s:Hi('ColorColumn', s:mainfg, s:mainfg)
call s:Hi('IncSearch', s:mainfg, s:mainbg)
call s:Hi('LineNr', s:color1, s:mainbg)
call s:Hi('Question', s:color2, s:mainbg)
call s:Hi('Search', s:mainbg, s:mainfg)
call s:Hi('SpecialKey', s:mainfg, s:mainbg)
call s:Hi('Title', s:color1, s:mainbg)
call s:Hi('Visual', s:color4, s:mainbg)
call s:Hi('WarningMsg', s:color2, s:mainbg)
call s:Hi('WildMenu', s:mainfg, s:mainbg)

" syntax highlights
call s:Hi('Comment', s:color1, s:mainbg)
call s:Hi('Constant', s:color5, s:mainbg)
call s:Hi('Error', s:color2, s:mainbg)
call s:Hi('Function', s:color4, s:mainbg)
call s:Hi('htmlTagName', s:color3, s:mainbg)
call s:Hi('Identifier', s:color3, s:mainbg)
call s:Hi('lCursor', s:mainfg, s:mainbg)
call s:Hi('MatchParen', s:color4, s:mainbg)
call s:Hi('NONE', s:mainfg, s:mainbg)
call s:Hi('Normal', s:mainfg, s:mainbg)
call s:Hi('Number', s:color5, s:mainbg)
call s:Hi('Operator', s:color3, s:mainbg)
call s:Hi('PreProc', s:color3, s:mainbg)
call s:Hi('Repeat', s:color3, s:mainbg)
call s:Hi('Special', s:color3, s:mainbg)
call s:Hi('Statement', s:color3, s:mainbg)
call s:Hi('String', s:color3, s:mainbg)
call s:Hi('Todo', s:color3, s:mainbg)
call s:Hi('Type', s:color3, s:mainbg)
call s:Hi('Underlined', s:color1, s:mainbg)
call s:Hi('User1', s:mainfg, s:mainbg)
