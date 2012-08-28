accessing
isValid: aValue
	self required ifTrue: [ ^aValue notEmpty ].
	^super isValid: aValue