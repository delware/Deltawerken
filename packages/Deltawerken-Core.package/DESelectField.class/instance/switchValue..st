accessing
switchValue: aValue
	(self isMulti: aValue)
		ifTrue: [ 
			aValue ifEmpty: [ ^nil ].
			^aValue first ].
	^OrderedCollection with: aValue