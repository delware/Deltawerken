rendering
buttonOn: canvas
	self isCancel ifTrue: [ ^canvas cancelButton ].
	^canvas submitButton