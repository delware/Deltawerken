accessing
find: aText in: aString
	^(aString findString: aText startingAt: 1 caseSensitive: false) > 0.