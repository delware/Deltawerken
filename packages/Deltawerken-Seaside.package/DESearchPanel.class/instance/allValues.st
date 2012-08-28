accessing
allValues
	| retVal |
	retVal := self target.
	self accessor do: [ :each | retVal := retVal perform: each ].
	^ retVal