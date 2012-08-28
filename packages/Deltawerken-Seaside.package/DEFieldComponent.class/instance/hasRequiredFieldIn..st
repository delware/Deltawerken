accessing
hasRequiredFieldIn: aFieldList
	aFieldList do: [ :each |
		(self requiredField: each) ifTrue: [ ^true ].
		each isList ifTrue: [ (self hasRequiredFieldIn: each fields)
			ifTrue: [ ^true ] ] ].
	^false