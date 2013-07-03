$('.coffeeCode').keyup ->
	window.compiledJS = ''
	try
		window.compiledJS = CoffeeScript.compile $(this).val(), bare: on
		$(this).closest('div').find('pre.javascriptCode').text window.compiledJS
	catch e
