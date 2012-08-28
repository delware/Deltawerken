validation
isValid: aSubject
	aSubject ifNil: [ ^false ].
	(self fieldsFor: aSubject) do: [ :field | 
		(field isValid: aSubject) ifFalse: [ ^false ] ].
	^true