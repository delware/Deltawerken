rendering
brushFor: aSubject on: canvas
	^canvas textInput
		value: (self class printDate: (self value: aSubject));
		yourself.