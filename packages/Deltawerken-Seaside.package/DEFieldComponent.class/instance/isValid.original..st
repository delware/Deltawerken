validation
isValid: aSubject original: original
	" performs the 'isValid' check only if field is changed "
	(self fieldsFor: aSubject) do: [ :field |
		((field value: aSubject) = (field value: original) 
			or: [ (field isValid: aSubject) ]) ifFalse: [ ^false ] ].
	^true