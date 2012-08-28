processing
canDo: aDomainObject
	self preCondition ifNotNil: [ ^self preCondition value: aDomainObject ].
	^true