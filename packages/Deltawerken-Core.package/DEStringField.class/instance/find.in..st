accessing
find: aValue in: aSubject
	^self searchStrategy find: aValue in: (self asString: aSubject).