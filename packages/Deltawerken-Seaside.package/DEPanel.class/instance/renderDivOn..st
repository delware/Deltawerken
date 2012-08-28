rendering
renderDivOn: canvas
	| brush | 
	brush := canvas div.
	divId ifNotNil: [ brush id: divId ].
	divClass ifNotNil: [ brush class: divClass ].
	brush with: [ self renderPagesOn: canvas ]
