navigation
login
	| user |
	user := (self userClass)
		userWithId: self loginid
		passwordHash: self passwordHash.
	self user: user.
	user
		ifNil: [ self editComponent title: self invalidCombinationText ]
		ifNotNil: [ editComponent := nil ]