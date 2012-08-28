accessing
title
	self session isLoggedIn ifTrue: [ ^ self loggedInText ].
	(userid isNil or: [ userid isEmpty ]) ifTrue: [ ^self welcomeText ].
	^ self invalidCombinationText