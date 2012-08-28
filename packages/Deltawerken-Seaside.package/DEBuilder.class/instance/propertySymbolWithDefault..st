accessing
propertySymbolWithDefault: aSymbol
	propertySymbol ifNil: [^aSymbol].
	^self propertySymbol