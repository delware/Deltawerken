accessing
requiredField: aField
	^(self readonlyField: aField) not and: [ aField required ]