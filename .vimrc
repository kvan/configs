call pathogen#infect()
call pathogen#helptags()

" Code settings
set number
set expandtab
set tabstop=4
set shiftwidth=4
syntax on
filetype plugin on
filetype indent on

" Colors
if has("gui_running")
        colorscheme freya
elseif &t_Co == 256
        colorscheme xoria256
else
        colorscheme desert
end

" statusline
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h%=%{fugitive#statusline()}\ \ %y\ \ Line:\ %l/%L:%c
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
