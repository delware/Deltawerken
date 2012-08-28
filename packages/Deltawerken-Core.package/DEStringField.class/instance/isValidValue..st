rendering
isValidValue: aValue
	aValue ifNil: [ ^false. ].
	aValue isEmpty ifTrue: [ ^false ].
	^true