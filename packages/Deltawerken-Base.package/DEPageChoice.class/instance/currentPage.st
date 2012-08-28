accessing
currentPage
	^currentPage ifNil: [ currentPage := self homepage ]