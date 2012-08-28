initialization
createSearchData
	| retVal |
	retVal := Dictionary new.
	fields do: [ :each | retVal at: each put: nil ].
	^retVal