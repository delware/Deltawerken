searching
filter: aCollection
	self canSearch 
		ifTrue: [ ^aCollection select: [ :each| self hasMatch: each ] ]
		ifFalse: [ ^aCollection ]