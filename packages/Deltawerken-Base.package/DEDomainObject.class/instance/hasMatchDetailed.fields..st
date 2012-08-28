accessing
hasMatchDetailed: aDictionary fields: aFieldCollection
	aFieldCollection do: [ :each |
		| searchValue |
		searchValue := aDictionary at: each.
		(each isValidValue: searchValue) 
			ifTrue: [ (each find: searchValue in: self) ifFalse: [ ^false ] ] ].
	^true