processing
isAllowed: aDomainObject for: aUser
	self isAllowedFor ifNotNil: [ ^self isAllowedFor value: aDomainObject value: aUser ].
	^true