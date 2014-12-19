if exists("g:loaded_vim_astyle")
        :finish
endif
let g:loaded_vim_astyle = 1

let s:save_cpo = &cpo
set cpo&vim

command! Astyle :call astyle#execute()

let &cpo = s:save_cpo
