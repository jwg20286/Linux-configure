"====================tab as spaces======================================
filetype plugin indent on
autocmd FileType python setlocal noexpandtab tabstop=8 shiftwidth=8
autocmd FileType tex setlocal noexpandtab tabstop=2 shiftwidth=2
"====================show line numbers==================================
set number
"====================color scheme=======================================
if !exists("g:syntax_on")
	syntax enable
endif
"--------------------solarized------------------------------------------
set background=dark
colorscheme solarized
"colorscheme codeschool
"colorscheme zenburn
"=====================vim-latex=========================================
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"---------------------vim-latex suite settings--------------------------
" settings here could also be pasted to ~/.vim/ftplugin/tex.vim
" (I believe) if there are commands in tex.vim, they will be executed after this file,
" therefore overwriting any conflicting settings.

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
"set sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
"-------------------------Scan folders----------------------------------
" template file scan directories
let g:Tex_CustomTemplateFolder = '~/texmf/tex/**,~/.vim/ftplugin/latex-suite/templates/'

" package scan directories
let g:Tex_TEXINPUTS = '~/texmf/tex/**, ./**, ~/.vim/ftplugin/latex-suite/packages/'
"---------------------------Compilation---------------------------------
" set compilation rules
"let g:Tex_CompileRule_dvi= 'latex -interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'

" use pdflatex to create pdf instead of dvi as default output format
let g:Tex_DefaultTargetFormat = 'pdf'
" When compile to these formats, compile multiple times
let g:Tex_MultipleCompileFormats = 'dvi,pdf'

" go to error after running compilation with \ll command
let g:Tex_GotoError = 0
" ignore all warnings below level 4
let g:TCLevel = 4
