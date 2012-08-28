accessing
match: aSubject with: anotherSubject
	|collection1 collection2|
	collection1 := self value: aSubject.
	collection1 ifEmpty: [	^0	].
	collection2 := self value: anotherSubject.
	collection2 ifEmpty: [	^0	].		
	(collection1 intersection: collection2) ifNotEmpty: [	^1 ].
	^0.