accessing
saveData: aDomainObject fieldsAccessor: anAccessor
	aDomainObject ifNotNil: [
		| domainClass |
		domainClass := aDomainObject class.
		self
			saveData: aDomainObject
			fields: ((domainClass perform: anAccessor) collect: [ :each | domainClass perform: each ]) ]