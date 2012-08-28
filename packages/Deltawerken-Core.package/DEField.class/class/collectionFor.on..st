instance creation
collectionFor: aSubject on: anAccessor
	^(aSubject perform: anAccessor) collect: [:each | aSubject perform: each]