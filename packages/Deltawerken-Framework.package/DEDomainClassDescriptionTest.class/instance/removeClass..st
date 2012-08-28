running
removeClass: aClassSymbol
	| classToRemove |
	classToRemove := Smalltalk at: aClassSymbol ifAbsent: [ nil ].
	classToRemove ifNotNil: [ classToRemove removeFromSystem ]