
let g:astyle#command =
      \ get(g:, 'astyle#command', 'AStyle')

let g:astyle#option_file =
      \ get(g:, 'astyle#option_file', 'none')

function! astyle#execute()
  if !executable(g:astyle#command)
    echohl Error | echomsg "command[" . g:astyle#command . "] not found"  | echohl None
    return
  endif

  let l:pos = getpos(".")
  execute('%!' . g:astyle#command . ' --options=' . g:astyle#option_file)
  call setpos(".", pos)
endfunction
