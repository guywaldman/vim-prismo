let g:prismo_dash = '-'
let g:prismo_ruler = 80
let g:prismo_toupper = 0

" inspired by: @https://vi.stackexchange.com/a/421
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
		if g:prismo_toupper
			let a:word = toupper (@0)
		else
			let a:word = @0
		endif
		call s:center_aux(g:prismo_ruler, a:leading, a:word)
endfunction

command! Prismo call s:center()
