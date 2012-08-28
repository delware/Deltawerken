accessing
isValidError: aValue subject: aSubject
	(self validated and: [ (self isValid: aValue subject: aSubject) not ])
		ifTrue: [ ^self errorMessageFor: aValue subject: aSubject ] 
		ifFalse: [ ^'' ]