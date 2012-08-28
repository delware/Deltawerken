accessing
userWithId: idString passwordHash: passwordHash
	| user |
	user := self userWithId: idString.
	user ifNil: [ ^nil ].
	(user verifyPasswordHash: passwordHash)
		ifTrue: [ 
			user rightPassword.
			^user ]
		ifFalse: [
			user wrongPassword.
			^nil ]
