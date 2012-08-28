accessing
find: aText in: aSubject
	(self value: aSubject) do: [ :each |
		(self searchStrategy find: aText in: (self elemStringValueOf: each)) ifTrue: [ ^true ]
	].
	^false