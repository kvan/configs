call pathogen#infect()
set number
set expandtab
syntax on
filetype plugin on
filetype indent on
if has("gui_running")
        colorscheme freya
elseif &t_Co == 256
        colorscheme xoria256
else
        colorscheme desert
end
