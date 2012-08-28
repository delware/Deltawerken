rendering
renderContentOn: canvas
	self renderTitleOn: canvas.
	(divId isNil and: [ divClass isNil ])
		ifTrue: [ self renderPagesOn: canvas ]
		ifFalse: [ self renderDivOn: canvas ]
