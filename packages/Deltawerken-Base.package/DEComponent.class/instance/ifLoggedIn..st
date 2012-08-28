session
ifLoggedIn: aBlock
	self isLoggedIn ifTrue: [ aBlock value ]
