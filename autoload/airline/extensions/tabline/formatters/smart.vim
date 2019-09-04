function! airline#extensions#tabline#formatters#smart#format(bufnr, buffers)
	let f = fnamemodify(bufname(a:bufnr), ':p')
	if strlen(f) > 15
		return airline#extensions#tabline#formatters#unique_tail_improved#format(a:bufnr, a:buffers)
	endif
	return f
endfunction
