tests
testAddDomainClass
	((Smalltalk at: #FDApplicationDescription) addDomainClass: 'Model')
		beRoot;
		addCollection: 'authors' of: 'Author';
		addCollection: 'questions' of: 'Question';
		addCollection: 'tags' of: 'Tag'