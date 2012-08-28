rendering
renderButtonsOn: canvas
	canvas horizontalRule.
	self buttons do: [ :each | each renderOn: canvas ]
