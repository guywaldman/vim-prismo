let g:prismo_dash = '-'

function! s:center_aux(width, leading, word)
		let a:inserted_word = ' ' . a:word . ' '
		let a:word_width = strlen(a:inserted_word)
		let a:leading_length = strlen(a:leading)
		let a:length_before = (a:width - a:leading_length - a:word_width) / 2
		let a:hashes_before = repeat(g:prismo_dash, a:length_before)
		let a:hashes_after = repeat(g:prismo_dash, a:width - a:leading_length - (a:word_width + a:length_before) - 1)
		let a:word_line = a:leading . a:hashes_before . a:inserted_word . a:hashes_after
		:put = a:word_line
		normal! kdd
		" uncomment next line to insert newline after title
		" :put = ''
endfunction

function! s:center()
		normal! ^viwy
		let a:leading = @0 . ' '
		"let a:leading = expand('<cWORD>') . ' '
		normal! ^f lvg_y
		let a:word = toupper (@0)
		call s:center_aux(80, a:leading, a:word)
endfunction

command! Prismo call s:center()
