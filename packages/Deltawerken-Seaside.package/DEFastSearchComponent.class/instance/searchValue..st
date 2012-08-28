accessing
searchValue: aString
	searchValue := aString.
	self canSearch
		ifTrue: [ self search ]
