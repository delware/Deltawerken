validation
isValidErrors: aSubject
	| retVal |
	retVal := OrderedCollection new.
	(self fieldsFor: aSubject) do: [ :field | 
			| error | 
			error := (aSubject class perform: field) isValidError: aSubject.
			error ifNotEmpty: [	retVal add: error ] ].
	^retVal