accessing
isValid: aValue
"4 tot 8 cijfers, eventeel gescheiden. return false als niet valid, early out"
	|parts dag maand jaar value|
	(aValue isKindOf: Date) ifTrue: [ ^true ].
	(aValue isKindOf: Timespan) ifTrue: [ ^true ].
	self required
		ifFalse: [ 
			aValue ifNil: [ ^true ].
			aValue ifEmpty: [ ^true ] ].			
	value := (aValue trimBoth select: [:char | '1234567890.-/ ' includes: char]).
	value size < 3 ifTrue: [^false].
	value size > 10 ifTrue: [^false].
	parts := value findTokens: '.-/ '.
	parts size = 1 
		ifTrue: [
			value := parts first.
			(value size ~= 4 and: [ value size ~= 6 ] and: [value size ~= 8 ]) ifTrue:[^false].
			dag := (value copyFrom: 1 to: 2) asInteger.
			maand := (value copyFrom: 3 to: 4) asInteger.
			value size = 4
				ifTrue: [ jaar := 0 ]
				ifFalse: [ jaar := (value copyFrom: 5 to: value size) asInteger ] ]
		ifFalse: [
			parts size > 3 ifTrue: [^false].
			dag := parts first asInteger.
			maand := parts second asInteger.
			parts size = 2
				ifTrue: [ jaar := 0 ]
				ifFalse: [ jaar := parts third asInteger ] ].
	dag > 31 ifTrue: [^false].
	maand > 12 ifTrue: [^false].
	jaar >= 2100 ifTrue: [^false].
	((jaar < 1900) and: [jaar>100]) ifTrue: [^false].
	self required ifTrue: [ ^value notEmpty ].
	^true
	
