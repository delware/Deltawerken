accessing
readonlyField: aField
	^self readonly or: [ aField readonly ]