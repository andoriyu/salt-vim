autocmd BufNewFile,BufRead *.sls,Saltfile  call s:DetectSls()

fun! s:DetectSls()
  if !did_filetype()
    if match(getline(1), '^#!py') > -1
      execute "set filetype=python"
    else
      execute "set filetype=sls"
    endif
  endif
endfunction
