accessing
collectionOf: aSubject
	| retVal |
	retVal := aSubject.
	self accessor do: [ :each |
		retVal := retVal perform: each ].
	^retVal 