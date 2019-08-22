call ale#Set('ron_ronfmt_executable', 'ronfmt')
call ale#Set('ron_ronfmt_options', '-t 2 -w 120')

function! ale#fixers#ronfmt#Fix(buffer) abort
  let l:executable = ale#Var(a:buffer, 'ron_ronfmt_executable')
  let l:options = ale#Var(a:buffer, 'ron_ronfmt_options')

  return { 'command': ale#Escape(l:executable) . (empty(l:options) ? '' : ' ' . l:options) . ' %t', 'read_temporary_file': 1 }
endfunction
