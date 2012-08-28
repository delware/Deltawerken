accessing
searchStrategy
	^ searchStrategy ifNil: [ searchStrategy := self defaultSearchStrategy ]