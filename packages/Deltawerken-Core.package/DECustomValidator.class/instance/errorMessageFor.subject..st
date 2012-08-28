validating
errorMessageFor: aValue subject: aSubject
	errorBlock ifNil: [ ^'No errormessage available' ].
	errorBlock numArgs = 1 ifTrue: [	^ errorBlock value: aValue ].
	errorBlock numArgs = 2 ifTrue: [	^ errorBlock value: aSubject value: aValue ]
