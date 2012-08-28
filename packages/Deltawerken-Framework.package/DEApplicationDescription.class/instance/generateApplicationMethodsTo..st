code generation
generateApplicationMethodsTo: aClass
	aClass class compile: (String streamContents: [ :s |
		s nextPutAll: 'initialize'; lf;
			tab; nextPutAll: '"Registers this application as webpage"'; lf;
			tab; nextPutAll: 'super initialize.'; lf;
			tab; nextPutAll: '(WAAdmin register: self asApplicationAt: '''; nextPutAll: self applicationName; nextPutAll: ''')'; lf;
			tab; tab; nextPutAll: 'addLibrary: JQDeploymentLibrary;'; lf;
			tab; tab; nextPutAll: 'addLibrary: JQUiDeploymentLibrary' ]) classified: 'initialization'.
	aClass class compile: (String streamContents: [ :s |
		s nextPutAll: 'canBeRoot'; lf;
			tab; nextPutAll: '^true' ]) classified: 'testing'.
	aClass compile: (String streamContents: [ :s |
		s nextPutAll: 'title'; lf;
			tab; nextPutAll: '^'''; nextPutAll: self applicationName; nextPut: $' ]) classified: 'accessing'.
	aClass compile: (String streamContents: [ :s |
		s nextPutAll: 'updateRoot: anHtmlRoot'; lf;
			tab; nextPutAll: 'super updateRoot: anHtmlRoot.'; lf;
			tab; nextPutAll: 'anHtmlRoot title: self title.'; lf;
			tab; nextPutAll: 'anHtmlRoot link'; lf;
			tab; tab; nextPutAll: 'type: ''text/css'';'; lf;
			tab; tab; nextPutAll: 'beStylesheet;'; lf;
			tab; tab; nextPutAll: 'addAll;'; lf;
			tab; tab; nextPutAll: 'url: '; nextPutAll: self libraryClassName; nextPutAll: ' / ''main.css''' ]) classified: 'rendering'.
	aClass methodDict at: #renderContentOn: ifAbsent: [
		aClass compile: (String streamContents: [ :s |
			s nextPutAll: 'renderContentOn: canvas'; lf;
				tab; nextPutAll: 'canvas heading: self title.'; lf;
				tab; nextPutAll: '"Insert your custom rendering code here"' ]) classified: 'rendering' ]