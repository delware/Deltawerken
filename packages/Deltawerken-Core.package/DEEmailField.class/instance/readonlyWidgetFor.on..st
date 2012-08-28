rendering
readonlyWidgetFor: aSubject on: canvas
	(self hasValueFor: aSubject)
		ifTrue: [ canvas anchor
				url: 'mailto:', (self stringValueOf: aSubject);
				with: (self stringValueOf: aSubject) ]
		ifFalse: [ canvas space ]