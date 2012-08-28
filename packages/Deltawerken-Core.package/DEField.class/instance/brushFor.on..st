tags
brushFor: aSubject on: canvas
	(self hasValueFor: aSubject)
		ifTrue: [ 
			canvas text: (self stringValueOf: aSubject).
			^nil ]
		ifFalse: [ ^canvas space ]