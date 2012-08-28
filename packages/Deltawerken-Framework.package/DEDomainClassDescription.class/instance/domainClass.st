accessing
domainClass
	^ domainClass ifNil: [ domainClass := self generateDomainClass ]