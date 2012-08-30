code generation
generateDomainClass
	| retVal |
	SystemOrganization addCategory: self domainClassCategory.
	retVal := (ClassBuilder new) superclass: DEDomainObject subclass: self domainClassFullName asSymbol instanceVariableNames: self instanceVariableNames classVariableNames: self classVariableNames poolDictionaries: '' category: self domainClassCategory.
	self generateClassMethodsTo: retVal.
	self generateFieldsTo: retVal.
	^retVal