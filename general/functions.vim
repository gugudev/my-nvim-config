function! CutAndPasteByLineNumber(relative_line_number)
  let cursor_position = getpos('.')

  exec a:relative_line_number . 'd'
  call setpos(".", cursor_position)
  normal P
  call setpos(".", cursor_position)
endfunction