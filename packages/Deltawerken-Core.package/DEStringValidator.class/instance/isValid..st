accessing
isValid: aValue
	aValue ifNil: [ ^self required not ].
	self required ifTrue: [ ^aValue notEmpty ].
	^super isValid: aValue