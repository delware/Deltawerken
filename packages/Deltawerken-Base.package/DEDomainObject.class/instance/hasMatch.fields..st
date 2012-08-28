accessing
hasMatch: aSearchValue fields: aFieldCollection
	aFieldCollection do: [ :each |
		(each find: aSearchValue in: self) ifTrue: [ ^true ] ].
	^false