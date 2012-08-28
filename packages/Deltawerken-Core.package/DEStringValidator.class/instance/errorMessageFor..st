accessing
errorMessageFor: aValue
	(self isValid: aValue)
		ifFalse: [ ^self errorMessage ].
	^ ''