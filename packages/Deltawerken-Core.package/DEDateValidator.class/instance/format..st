accessing
format: aValue
"4 tot 8 cijfers, eventeel gescheiden. return aValue als niet valid, early out"
	|parts dag maand jaar value|
	value := (aValue trimBoth select: [:char | '1234567890.-/ ' includes: char]).
	value size < 3 ifTrue: [^aValue].
	value size > 10 ifTrue: [^aValue].
	parts := value findTokens: '.-/ '.
	parts size = 1
		ifTrue: [
			value := parts first.
			(value size ~= 4 and: [ value size ~= 6 ] and: [value size ~= 8 ]) ifTrue:[^aValue].
			dag := (value copyFrom: 1 to: 2) asInteger.
			maand := (value copyFrom: 3 to: 4) asInteger.
			value size = 4
				ifTrue: [
					jaar := Date today year.
					futureDate 
						ifTrue: [ (Date year: jaar month: maand day: dag) < Date today 
							ifTrue: [ jaar := jaar + 1 ] ]
						ifFalse: [ (Date year: jaar month: maand day: dag) > Date today 
							ifTrue: [ jaar := jaar - 1 ] ] ]
				ifFalse: [
					jaar := (value copyFrom: 5 to: value size) asInteger.
					jaar < 100 ifTrue: [ jaar := jaar + 2000 ] ] ]
		ifFalse: [
			parts size > 3 ifTrue: [^aValue].
			dag := parts first asInteger.
			maand := parts second asInteger.
			parts size = 2
				ifTrue: [
					jaar := Date today year.
					futureDate 
						ifTrue: [ (Date year: jaar month: maand day: dag) < Date today 
							ifTrue: [ jaar := jaar + 1 ] ]
						ifFalse: [ (Date year: jaar month: maand day: dag) > Date today 
							ifTrue: [ jaar := jaar - 1 ] ] ]
				ifFalse: [
					jaar := parts third asInteger ] ].
	dag > 31 ifTrue: [^aValue].
	maand > 12 ifTrue: [^aValue].
	jaar >= 2100 ifTrue: [^aValue].
	((jaar < 1900) and: [jaar>100]) ifTrue: [^aValue].
	^(dag asString padded: #left to: 2 with: $0),'-',(maand asString padded: #left to: 2 with: $0),'-', jaar asString
	
