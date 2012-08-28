searching
hasMatch: aSubject
	self fields do: [ :each|
		| value |
		value := searchData at: each.
		(each isValidSearchValue: value)
			ifTrue: [ (each find: value in: aSubject) ifFalse: [ ^false ] ] ].
	^true
