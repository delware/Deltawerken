searching
search
	self canSearch ifTrue: [ 
		| retVal |
		retVal := self allValues.
		self pages do: [ :page |
			page canSearch ifTrue: [ retVal := page filter: retVal ] ].
		self resultsBlock value: retVal ]