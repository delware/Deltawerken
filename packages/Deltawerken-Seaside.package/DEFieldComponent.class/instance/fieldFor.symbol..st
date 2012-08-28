accessing
fieldFor: aSubjectClass symbol: aSymbol
	cacheClass = aSubjectClass ifFalse: [ 
		self clearCache.
		cacheClass := aSubjectClass
	].
	^self cachedFields at: aSymbol ifAbsent: [
		self cachedFields 
			at: aSymbol 
			put: ((aSubjectClass perform: aSymbol)
				key: aSymbol;
				updater: (self customUpdaterFor: aSymbol);
				yourself) ]