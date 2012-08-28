security
isLoggedIn
	user ifNotNil: [ ^ true ].
	^ false