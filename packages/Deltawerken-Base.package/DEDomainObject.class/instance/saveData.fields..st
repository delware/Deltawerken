accessing
saveData: aDomainObject fields: aFieldCollection
	aDomainObject ifNotNil: [
		aFieldCollection do: [ :field |
			field readonly ifFalse: [ field save: (field value: aDomainObject) in: self ] ] ]