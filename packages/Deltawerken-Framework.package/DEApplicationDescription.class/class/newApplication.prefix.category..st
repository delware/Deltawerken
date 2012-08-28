code generation
newApplication: aName prefix: aPrefix category: aCategory
	| descriptionClass |
	SystemOrganization addCategory: aCategory.
	descriptionClass := (ClassBuilder new) superclass: self subclass: (aPrefix, 'ApplicationDescription') asSymbol instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: aCategory.
	descriptionClass class compile: (String streamContents: [ :s |
		s nextPutAll: 'prefix'; lf;
		tab; nextPutAll: '^'''; nextPutAll: aPrefix; nextPut: $' ]) classified: 'accessing'.
	descriptionClass class compile: (String streamContents: [ :s |
		s nextPutAll: 'applicationName'; lf;
		tab; nextPutAll: '^'''; nextPutAll: aName; nextPut: $' ]) classified: 'accessing'.
	descriptionClass singleton applicationClass initialize