accessing
asString: aSubject
	| retVal |
	retVal := self value: aSubject.
	(self isValidValue: retVal) ifFalse: [ ^'' ].
	^retVal asString.