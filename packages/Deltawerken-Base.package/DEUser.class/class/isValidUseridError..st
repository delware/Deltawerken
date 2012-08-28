testing
isValidUseridError: aValue
	aValue ifNil: [ ^'Username should not be empty' ].
	aValue ifEmpty: [ ^'Username should not be empty' ].
	(self userWithId: aValue) ifNotNil: [ ^'There already is a user with name ', aValue ].
	^''