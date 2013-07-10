# Full list of configuration options available here:
# https://github.com/hakimel/reveal.js#configuration
Reveal.initialize
	controls: true
	progress: true
	history: true
	center: true
	rollingLinks: true
	
	theme: Reveal.getQueryHash().theme
	transition: 'default'

	# Optional libraries used to extend on reveal.js
	dependencies: [
#		src: 'lib/js/classList.js'
#		condition: -> !document.body.classList
#	,
#		src: 'plugin/markdown/marked.js'
#		condition: -> !!document.querySelector '[data-markdown]'
#	,
#		src: 'plugin/markdown/markdown.js'
#		condition: -> !!document.querySelector '[data-markdown]'
#	,
		src: 'plugin/highlight/highlight.js'
		async: true
		callback: -> hljs.initHighlightingOnLoad()
#	,
#		src: 'plugin/zoom-js/zoom.js'
#		async: true
#		condition: -> !!document.body.classList
#	,
#		src: 'plugin/notes/notes.js'
#		async: true
#		condition: -> !!document.body.classList
	]
