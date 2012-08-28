validating
isValid: aValue subject: aSubject
	validateBlock ifNil: [ ^super isValid: aValue subject: aSubject ].
	validateBlock numArgs = 1 ifTrue: [ ^validateBlock value: aValue ].
	validateBlock numArgs = 2 ifTrue: [ ^validateBlock value: aSubject value: aValue ].
	^super isValid: aValue subject: aSubject