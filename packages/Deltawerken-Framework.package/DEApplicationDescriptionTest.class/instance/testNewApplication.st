tests
testNewApplication
	"self assert: (SystemOrganization categoriesMatching: 'ForumDemo') isEmpty."
	DEApplicationDescription newApplication: 'Forum Demo' prefix: 'FD' category: 'ForumDemo'.
	self assert: (Smalltalk at: #FDApplicationDescription ifAbsent: [ nil ]) notNil.
	self assert: (Smalltalk at: #FDFileLibrary ifAbsent: [ nil ]) notNil.
	self assert: (Smalltalk at: #FDForumDemoApplication ifAbsent: [ nil ]) notNil.
	WADispatcher default handlerAt: 'Forum Demo' ifAbsent: [ self assert: false ].
	self assert: ((Smalltalk at: #FDForumDemoApplication) new title) equals: 'Forum Demo'.
	self assert: (Smalltalk at: #FDForumDemoApplication) canBeRoot
