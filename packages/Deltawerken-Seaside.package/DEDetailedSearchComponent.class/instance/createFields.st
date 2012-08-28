initialization
createFields
	| retVal |
	retVal := OrderedCollection new.
	(subject perform: self propertySymbol) do: [ :each|
		|field|
		each isSymbol
			ifTrue: [ field := (subject perform: each) ]
			ifFalse: [ field := each ].
		retVal add: field
	].
	^retVal