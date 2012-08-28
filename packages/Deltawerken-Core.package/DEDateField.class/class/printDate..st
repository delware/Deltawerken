accessing
printDate: aValue
	(aValue isKindOf: Date) ifTrue: [ ^aValue yyyymmdd ].
	aValue ifNotNil: [ ^aValue greaseString ].
	^nil