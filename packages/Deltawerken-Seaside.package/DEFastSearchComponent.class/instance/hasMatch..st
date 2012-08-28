searching
hasMatch: aSubject
	searchValue ifNil: [ ^false. ].
	self fields do: [ :field | 
		(field find: searchValue in: aSubject) ifTrue: [ ^true ] ].
	^false
