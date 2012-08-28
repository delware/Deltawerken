rendering
renderPage: aPage on: canvas
	| brush |
	brush := canvas div.
	self divId ifNotNil: [ brush id: self divId ].
	self divClass ifNotNil: [ brush class: self divClass ].
	brush with: [ canvas render: aPage ]