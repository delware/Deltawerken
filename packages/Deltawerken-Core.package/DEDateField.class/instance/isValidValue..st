accessing
isValidValue: aValue
	aValue ifNil: [ ^false ].
	(aValue isKindOf: Date) ifTrue: [ ^self validator isValid: aValue ].
	^false