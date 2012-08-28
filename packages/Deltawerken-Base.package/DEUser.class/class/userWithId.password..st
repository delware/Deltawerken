accessing
userWithId: idString password: passwordString
	| user |
	user := self userWithId: idString.
	user ifNil: [ ^nil ].
	(user verifyPassword: passwordString)
		ifTrue: [ 
			user rightPassword.
			^user ]
		ifFalse: [
			user wrongPassword.
			^nil ]
