accessing
filter: aCollection
	self canSearch ifTrue: [ 
		| retVal |
		retVal := aCollection.
		self pages do: [ :page |
			page canSearch ifTrue: [ retVal := page filter: retVal ] ].
		^retVal ].
	^aCollection