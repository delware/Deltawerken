accessing
userWithId: idString
	| lowercaseIdString |
	idString ifNil: [ ^nil ].
	lowercaseIdString := idString asLowercase.
	^self users
		detect: [:each | each notNil and: [ each userid = lowercaseIdString ] ]
		ifNone: [nil].