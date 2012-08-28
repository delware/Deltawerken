accessing
stringValueOf: aValue
	aValue ifNil: [ ^SELocal default strings null ].
	aValue
		ifTrue: [ ^SELocal default strings yes ]
		ifFalse: [ ^SELocal default strings no ]