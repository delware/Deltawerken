accessing
stringValueOf: aSubject
	|collection|
	collection := self value: aSubject.
	^collection size asString, ' ',domainClass noCollectionTitle