searching
canSearch
	self fields do: [ :field |
		| value |
		value := self searchData at: field.
		(field isValidSearchValue: value) ifTrue: [ ^true ] ].
	^false
