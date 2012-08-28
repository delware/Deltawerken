code generation
generateLibraryClass
	| retVal |
	SystemOrganization addCategory: self applicationCategory.
	retVal := (ClassBuilder new) superclass: WAFileLibrary subclass: self libraryClassName asSymbol instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: self applicationCategory.
	self generateLibraryMethodsTo: retVal