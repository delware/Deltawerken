navigation
save: aValue in: aDomainObject
	(self trueSubject: aDomainObject) perform: (self trueAccessor asMutator) with: aValue