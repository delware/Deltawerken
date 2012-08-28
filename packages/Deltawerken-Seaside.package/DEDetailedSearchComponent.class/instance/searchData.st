accessing
searchData
	^searchData ifNil: [ searchData := self createSearchData ]