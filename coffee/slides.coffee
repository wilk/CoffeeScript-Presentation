$('textarea.coffee').keyup ->
	window.compiledJS = ''
	try
		window.compiledJS = CoffeeScript.compile $(this).val(), bare: on
		$(this).closest('div').find('pre.javascript').text window.compiledJS
	catch e
