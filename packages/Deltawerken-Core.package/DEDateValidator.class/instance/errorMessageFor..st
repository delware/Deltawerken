accessing
errorMessageFor: aValue
	|parts dag maand jaar value|
	value := (aValue trimBoth select: [:char | '1234567890.-/ ' includes: char]).
	value size < 3 ifTrue: [^'Not enough digits for a date'].
	value size > 10 ifTrue: [^'Too many digits for a date'].
	parts := value findTokens: '.-/ '.
	(parts size = 1) ifTrue: [
		value := parts first.
		(value size ~= 4 and: [ value size ~= 6 ] and: [value size ~= 8 ]) 
			ifTrue:[^'A date should consist of 4, 6 or 8 digits'].
		dag := (value copyFrom: 1 to: 2) asInteger.
		maand := (value copyFrom: 3 to: 4) asInteger.
		value size > 4
			ifTrue: [ jaar := (value copyFrom: 5 to: value size) asInteger ]
			ifFalse: [ jaar := 0 ]	]
	 ifFalse: [
		(parts size > 3) ifTrue: [^'Too many parts'].
		dag := parts first asInteger.
		maand := parts second asInteger.
		(parts size = 2)
			ifTrue: [ jaar := 0 ]
			ifFalse: [ jaar := parts third asInteger ] ].
	dag > 31 ifTrue: [^'Day should be lower than 32 '].
	maand > 12 ifTrue: [^'Month should be lower than 13 '].
	jaar >= 2100 ifTrue: [^'Years untill 2100'].
	((jaar < 1900) and: [jaar>100]) ifTrue: [^'Years from 1900'].
	^''