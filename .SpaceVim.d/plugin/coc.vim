inoremap <silent><expr> <c-space> coc#refresh()

call coc#config('coc.preferences', {
			\ "autoTrigger": "always",
			\ "maxCompleteItemCount": 10,
			\ "codeLens.enable": 1,
			\ "diagnostic.virtualText": 1,
			\})

let s:coc_extensions = [
			\ 'coc-neosnippet',
			\ 'coc-tabnine',
			\]

for extension in s:coc_extensions
	call coc#add_extension(extension)
endfor
