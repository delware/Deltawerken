tests
testAddDomainClass
	((Smalltalk at: #FDApplicationDescription) addDomainClass: 'Model').
	self assert: (Smalltalk includesKey: #FDModel)