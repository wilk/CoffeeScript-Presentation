$('textarea.coffee').keyup ->
	window.compiledJS = ''
	debugContainer = $(this).closest('section').find '.debug'
	
	try
		window.compiledJS = CoffeeScript.compile $(this).val(), bare: on
		jsCompiledContainer = $(this).closest('div').find('pre.javascript')
		jsCompiledContainer.text window.compiledJS
		jsCompiledContainer.scrollTop jsCompiledContainer[0].scrollHeight
		debugContainer.text ''
	catch e
		debugContainer.text "Error on line #{e.location.first_line}, col #{e.location.first_column}: #{e.message}" if e.message isnt "unexpected TERMINATOR" and e.message isnt "unexpected CALL_END" and e.message isnt 'unexpected end of input'
