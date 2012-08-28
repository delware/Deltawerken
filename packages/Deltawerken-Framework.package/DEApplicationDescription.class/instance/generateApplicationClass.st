code generation
generateApplicationClass
	| retVal |
	self libraryClass.
	retVal := (ClassBuilder new) superclass: WAComponent subclass: self applicationClassName asSymbol instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: self applicationCategory.
	self generateApplicationMethodsTo: retVal.
	^retVal