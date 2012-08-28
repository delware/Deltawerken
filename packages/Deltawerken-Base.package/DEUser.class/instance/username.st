accessing
username
	" the display name for a user, need not be unique "
	self userid ifNil: [ ^'' ].
	^self userid