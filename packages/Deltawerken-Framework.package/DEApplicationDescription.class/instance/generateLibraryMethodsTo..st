code generation
generateLibraryMethodsTo: aClass
	aClass compile: (String streamContents: [ :s |
		s nextPutAll: 'mainCss'; lf;
			tab; nextPutAll: '^''''']) classified: 'css'.
	aClass compile: (String streamContents: [ :s |
		s nextPutAll: 'selectorsToInclude'; lf;
			tab; nextPutAll: '^#(main.css)']) classified: 'accessing'