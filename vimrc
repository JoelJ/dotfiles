"
" Line numbers
"
set number
" set relativenumber
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

" Toggle relative numbers with <Leader-n>
nnoremap <Leader>n :call NumberToggle()<cr>


"
" Syntax Highlighting
"
syntax on


"
" Tab/whitespace
"
set tabstop=4
set autoindent


"
" Disable arrows
"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk


"
" Undo Files
"
set undofile
set undodir=~/.vim/undo

"
" Commenting blocks
"
"autocmd FileType c,cpp,java 	let b:cmtldr = '//'
"autocmd FileType sh,python	 	let b:cmtldr = '#'
"autocmd FileType vim		 	let b:cmtldr = '"'
noremap <buffer> <Leader>c :s,^\(\s*\)[^# \t]\@=,\1# ,e<CR>:nohls<CR>zvj
noremap <buffer> <Leader>u :s,^\(\s*\)# \s\@!,\1,e<CR>:nohls<CR>zvj
