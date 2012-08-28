accessing
updateWith: aDomainObject fields: aFieldCollection
	aFieldCollection do: [ :each |
		| field |
		field := self class perform: each.
		field setValue: (field value: aDomainObject) of: self ]