searching
hasMatch: aSubject
	(self collectionOf: aSubject) do: [ :each |
		(self hasMatch: aSubject for: each) ifTrue: [ ^true ] ].
	^false
