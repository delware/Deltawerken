accessing
fieldsFor: aSubject
	| subjectClass |
	subjectClass := aSubject class.
	^(subjectClass perform: self propertySymbol) collect: [ :each |
		each isSymbol ifTrue: [ self fieldFor: subjectClass symbol: each ]
			ifFalse: [ each ] ].