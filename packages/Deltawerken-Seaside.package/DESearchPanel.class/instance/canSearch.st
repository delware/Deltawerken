searching
canSearch
	self pages do: [ :page |
		page canSearch ifTrue: [ ^true ] ].
	^false