accessing
summaryOf: aSubject size: aSize
	| retVal |
	retVal := self stringValueOf: aSubject.
	retVal size > aSize ifTrue: [ retVal := self abbreviationOf: aSubject size: aSize ].
	^retVal