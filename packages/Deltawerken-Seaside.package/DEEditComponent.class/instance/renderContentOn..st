rendering
renderContentOn: canvas
	self renderTitleOn: canvas.

	self infoText ifNotNil: [ 
		canvas div
			class: 'infoText';
			with: self infoText ].
	self renderFormDataOn: canvas.
	self footerText ifNotNil: [
		canvas div
			class: 'infoText';
			with: self footerText ].

	self setFocusOn: canvas