accessing
propertySymbol
	propertySymbol ifNil: [
		self readonly ifFalse: [ ^#editFields ].
		^#fields ].
	^ propertySymbol