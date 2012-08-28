rendering
readonlyWidgetOn: canvas values: values
	| value |
	value := values at: self.
	(value notNil and: [ value or: [ self searchStrategy check not ] ]) 
		ifTrue: [ canvas text: (self class stringValueOf: value) ]
		ifFalse: [ canvas space ]