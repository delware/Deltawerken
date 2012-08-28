searching
hasMatch: aSubject for: anElement
	self fields do: [ :each|
		| value |
		value := searchData at: each.
		(each isValidSearchValue: value)
			ifTrue: [ (each find: value in: anElement) ifFalse: [ ^false ] ] ].
	^true
