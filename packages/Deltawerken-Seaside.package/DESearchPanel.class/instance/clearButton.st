accessing
clearButton
	^clearButton ifNil: [ clearButton := self createClearButton ]