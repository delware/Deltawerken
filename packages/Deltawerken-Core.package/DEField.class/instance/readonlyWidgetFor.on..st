rendering
readonlyWidgetFor: aSubject on: canvas
	(self hasValueFor: aSubject)
		ifTrue: [ canvas text: (self stringValueOf: aSubject) ]
		ifFalse: [ self renderEmptyValueOn: canvas ]