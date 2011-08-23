set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="vilight"

hi Normal         guifg=#000000    guibg=#EFEFEF
hi Cursor         guifg=#FFFFFF    guibg=#333333
hi CursorLine     guifg=#ffffff    guibg=#6c8095
hi Directory      guifg=#6c8095    guibg=NONE
hi VertSplit      guifg=#EFEFEF    guibg=#a6a6a6
hi Folded         guifg=#424242    guibg=NONE       gui=italic
hi FoldColumn     guifg=#9ca9b7    guibg=NONE       gui=italic
hi vimFold        guifg=#dee4ea    guibg=NONE       gui=italic
hi IncSearch      guifg=#212121    guibg=#b6b6b6
hi LineNr         guifg=#AAAAAA    guibg=#EFEFEF
hi ModeMsg        guifg=#555555    guibg=NONE
hi MoreMsg        guifg=#8f9d6a    guibg=NONE
hi NonText        guifg=#EFEFEF    guibg=NONE
hi Search         guifg=#000000    guibg=#FF8000    gui=NONE
hi StatusLine     guifg=#DDDDDD    guibg=#555555    gui=NONE
hi StatusLineNC   guifg=#DDDDDD    guibg=#555555    gui=NONE
hi Visual         guifg=#212121    guibg=#9ca9b7    gui=NONE
hi WildMenu       guifg=#6c8095    guibg=#ffffff
hi MatchParen     guifg=#ffffff    guibg=#FF8000    gui=NONE
hi ErrorMsg       guifg=#cf6a4c    guibg=NONE       gui=NONE
hi WarningMsg     guifg=#FF8000    guibg=NONE       gui=NONE
hi Title          guifg=#cf6a4c    guibg=NONE

" Syntax hilight groups
hi Comment        guifg=#999999    gui=NONE
hi Constant       guifg=#7587a6    gui=bold
hi Exception      guifg=#cf6a4c    gui=NONE
hi String         guifg=#408000    gui=NONE
hi Variable       guifg=#7587a6    gui=NONE
hi Number         guifg=#804000    gui=NONE
hi Define         guifg=#7587a6    gui=NONE
hi Boolean        guifg=#CF6A4C    gui=NONE
hi Float          guifg=#cf6a4c    gui=NONE
hi Identifier     guifg=#000000    gui=bold
hi Statement      guifg=#000000    gui=bold
hi Keyword        guifg=#cda869    gui=NONE
hi PreProc        guifg=#000000    gui=bold
hi Type           guifg=#000000    gui=bold
hi Typedef        guifg=#cda869    gui=NONE
hi Special        guifg=#cda869    gui=NONE
hi SpecialChar    guifg=#7587a6    gui=NONE
hi SpecialComment guifg=#999999    gui=NONE
hi Ignore         guifg=#848484    gui=NONE
hi Error          guifg=#cf6a4c    guibg=NONE         gui=underline
hi Todo           guifg=#f9ee98    guibg=NONE         gui=bold
hi Pmenu          guifg=#212121    guibg=#9ca9b7
hi PmenuSel       guifg=#ffffff    guibg=#6c8095
hi PmenuSbar      guibg=#b6b6b6
hi PmenuThumb     guifg=#424242

" Python
hi pythonClass  guifg=#cda869 guibg=NONE gui=NONE
hi pythonFunction  guifg=#CF6A4C guibg=NONE gui=NONE
hi pythonInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi pythonSymbol  guifg=NONE guibg=NONE gui=NONE
hi pythonBuiltin  guifg=#9ca9b7 guibg=NONE gui=NONE
hi pythonInstanceVariable  guifg=NONE guibg=NONE gui=NONE
hi pythonRequire  guifg=#8F9D6A guibg=NONE gui=NONE
hi pythonGlobalVariable  guifg=NONE guibg=NONE gui=NONE
hi pythonRegexp  guifg=#6c8095 guibg=NONE gui=NONE
hi pythonRegexpDelimiter  guifg=NONE guibg=NONE gui=NONE
hi pythonEscape  guifg=NONE guibg=NONE gui=NONE
hi pythonControl  guifg=#4f94cd guibg=NONE gui=NONE
hi pythonClassVariable  guifg=NONE guibg=NONE gui=NONE
hi pythonOperator  guifg=NONE guibg=NONE gui=NONE
hi pythonException  guifg=#cf6a4c guibg=NONE gui=NONE
hi pythonPseudoVariable  guifg=NONE guibg=NONE gui=NONE

hi makoDelimiter  guifg=NONE guibg=NONE gui=NONE
hi makoComment  guifg=NONE guibg=NONE gui=NONE

" HTML
hi htmlTag  guifg=#cda869 guibg=NONE gui=NONE
hi htmlEndTag  guifg=#cda869 guibg=NONE gui=NONE
hi htmlTagName  guifg=#b6b6b6 guibg=NONE gui=NONE
hi htmlArg  guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#cf6a4c guibg=NONE gui=NONE

" YAML
hi yamlKey  guifg=#4f94cd guibg=NONE gui=NONE
hi yamlAnchor  guifg=NONE guibg=NONE gui=NONE
hi yamlAlias  guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#cda869 guibg=NONE gui=NONE

" CSS
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=NONE guibg=NONE gui=NONE
hi cssColor  guifg=NONE guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#7587a6 guibg=NONE gui=NONE
hi cssClassName  guifg=#cda869 guibg=NONE gui=NONE
hi cssValueLength  guifg=NONE guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#cf6a4c guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE

" Haskell
hi hsModule      guifg=#000000  guibg=NONE  gui=bold
hi hsImport      guifg=#000000  guibg=NONE  gui=bold
hi hsStructure   guifg=#000000  guibg=NONE  gui=bold
hi hsTypedef     guifg=#000000  guibg=NONE  gui=bold
hi hsDebug       guifg=#CC0033  guibg=NONE  gui=NONE
hi hsVarSym      guifg=#004080  guibg=NONE  gui=NONE
hi hsConSym      guifg=#004080  guibg=NONE  gui=NONE
hi hsCharacter   guifg=#CC0033  guibg=NONE  gui=NONE

" Java
hi javaAnnotation guifg=#004080  guibg=NONE  gui=NONE
hi javaBoolean    guifg=#000000  guibg=NONE  gui=bold
hi javaTypedef    guifg=#000000  guibg=NONE  gui=bold

" Diff
hi DiffAdd        guifg=#8f9d6a          guibg=NONE
hi DiffChange     guifg=#cda869          guibg=NONE
hi DiffText       guifg=#b6b6b6          guibg=NONE
hi DiffDelete     guifg=#cf6a4c          guibg=NONE
