instance creation
collectionFor: aSubject accessor: anAccessor
	^(aSubject perform: anAccessor) collect: [:each | aSubject perform: each]