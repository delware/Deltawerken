code generation
generateDomainClass
	| retVal |
	SystemOrganization addCategory: self domainClassCategory.
	retVal := (ClassBuilder new) superclass: DEDomainObject subclass: self domainClassFullName asSymbol instanceVariableNames: self instanceVariableNames classVariableNames: '' poolDictionaries: '' category: self domainClassCategory.
	self generateFieldMethodsTo: retVal.
	^retVal